<?php

namespace Tests\Feature;

use App\Models\User;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Storage;
use Laravel\Sanctum\Sanctum;
use Tests\TestCase;

class TransAktifitasUtamaControllerTest extends TestCase
{
    use RefreshDatabase;

    protected function setUp(): void
    {
        parent::setUp();

        $this->createLegacyTables();
    }

    public function test_store_creates_record_with_default_nama_aktifitas(): void
    {
        Storage::fake('public');

        Sanctum::actingAs(User::factory()->create());

        $masterAktifitasId = $this->insertMasterAktifitasUtama('Dokumen Rencana Kerja');
        $periodeId = $this->insertPeriode('2026');
        $indikatorBidangId = $this->insertIndikatorBidang($periodeId);

        $response = $this->postJson('/api/trans-aktifitas-utama', [
            'MASTER_AKTIFITAS_ID' => $masterAktifitasId,
            'INDIKATOR_BIDANG_ID' => $indikatorBidangId,
            'PERIODE_ID' => $periodeId,
            'TARGET' => 3,
            'REALISASI' => 1,
            'KETERANGAN' => 'Aktifitas triwulan pertama',
            'FILE_BUKTI' => UploadedFile::fake()->create('bukti.pdf', 120, 'application/pdf'),
        ]);

        $response
            ->assertCreated()
            ->assertJsonPath('success', true)
            ->assertJsonPath('data.NAMA_AKTIFITAS', 'Dokumen Rencana Kerja')
            ->assertJsonPath('data.TARGET', '3.00')
            ->assertJsonPath('data.REALISASI', '1.00');

        $record = DB::table('TRANS_AKTIFITAS_UTAMA')->first();

        $this->assertNotNull($record);
        $this->assertSame('Dokumen Rencana Kerja', $record->NAMA_AKTIFITAS);
        $this->assertNotNull($record->FILE_BUKTI);
        $this->assertTrue(Storage::disk('public')->exists($record->FILE_BUKTI));
    }

    public function test_index_can_filter_by_periode_id(): void
    {
        Sanctum::actingAs(User::factory()->create());

        $masterAktifitasId = $this->insertMasterAktifitasUtama('Dokumen RKPD');
        $periodeSatu = $this->insertPeriode('2026');
        $periodeDua = $this->insertPeriode('2027');
        $indikatorBidangSatu = $this->insertIndikatorBidang($periodeSatu);
        $indikatorBidangDua = $this->insertIndikatorBidang($periodeDua);

        $this->insertTransAktifitasUtama($masterAktifitasId, $indikatorBidangSatu, $periodeSatu, 'Aktifitas 2026');
        $this->insertTransAktifitasUtama($masterAktifitasId, $indikatorBidangDua, $periodeDua, 'Aktifitas 2027');

        $response = $this->getJson('/api/trans-aktifitas-utama?PERIODE_ID=' . $periodeSatu);

        $response
            ->assertOk()
            ->assertJsonCount(1, 'data')
            ->assertJsonPath('data.0.PERIODE_ID', $periodeSatu)
            ->assertJsonPath('data.0.NAMA_AKTIFITAS', 'Aktifitas 2026');
    }

    public function test_update_can_replace_uploaded_file(): void
    {
        Storage::fake('public');

        Sanctum::actingAs(User::factory()->create(['name' => 'Tester Update']));

        $masterAktifitasId = $this->insertMasterAktifitasUtama('Dokumen Monitoring');
        $periodeId = $this->insertPeriode('2026');
        $indikatorBidangId = $this->insertIndikatorBidang($periodeId);
        $oldPath = 'aktifitas-utama/bukti/old-file.pdf';

        Storage::disk('public')->put($oldPath, 'old file');

        $id = $this->insertTransAktifitasUtama(
            $masterAktifitasId,
            $indikatorBidangId,
            $periodeId,
            'Dokumen Monitoring',
            $oldPath
        );

        $response = $this->putJson('/api/trans-aktifitas-utama/' . $id, [
            'REALISASI' => 2,
            'FILE_BUKTI' => UploadedFile::fake()->create('bukti-baru.pdf', 64, 'application/pdf'),
        ]);

        $response
            ->assertOk()
            ->assertJsonPath('data.REALISASI', '2.00')
            ->assertJsonPath('data.LOG_UPDATE_NAME', 'Tester Update');

        $updatedPath = DB::table('TRANS_AKTIFITAS_UTAMA')->where('ID', $id)->value('FILE_BUKTI');

        $this->assertNotSame($oldPath, $updatedPath);
        $this->assertFalse(Storage::disk('public')->exists($oldPath));
        $this->assertTrue(Storage::disk('public')->exists($updatedPath));
    }

    public function test_destroy_deletes_record_and_uploaded_file(): void
    {
        Storage::fake('public');

        Sanctum::actingAs(User::factory()->create());

        $masterAktifitasId = $this->insertMasterAktifitasUtama('Dokumen Evaluasi');
        $periodeId = $this->insertPeriode('2026');
        $indikatorBidangId = $this->insertIndikatorBidang($periodeId);
        $path = 'aktifitas-utama/bukti/to-delete.pdf';

        Storage::disk('public')->put($path, 'temporary file');

        $id = $this->insertTransAktifitasUtama(
            $masterAktifitasId,
            $indikatorBidangId,
            $periodeId,
            'Dokumen Evaluasi',
            $path
        );

        $response = $this->deleteJson('/api/trans-aktifitas-utama/' . $id);

        $response
            ->assertOk()
            ->assertJsonPath('success', true);

        $this->assertDatabaseMissing('TRANS_AKTIFITAS_UTAMA', ['ID' => $id]);
        $this->assertFalse(Storage::disk('public')->exists($path));
    }

    private function createLegacyTables(): void
    {
        Schema::create('MASTER_AKTIFITAS_UTAMA', function (Blueprint $table) {
            $table->increments('ID');
            $table->unsignedInteger('INDIKATOR_UTAMA_ID')->nullable();
            $table->string('NAMA_AKTIFITAS', 200);
            $table->decimal('BOBOT_TARGET', 5, 2)->default(0);
            $table->integer('URUTAN')->default(1);
            $table->boolean('FLAG_ACTIVE')->default(true);
            $table->string('LOG_ENTRY_NAME')->nullable();
            $table->dateTime('LOG_ENTRY_DATE')->nullable();
            $table->string('LOG_UPDATE_NAME')->nullable();
            $table->dateTime('LOG_UPDATE_DATE')->nullable();
        });

        Schema::create('MASTER_PERIODE', function (Blueprint $table) {
            $table->increments('ID');
            $table->string('NAMA_PERIODE', 100);
            $table->dateTime('START_DATE')->nullable();
            $table->dateTime('END_DATE')->nullable();
            $table->string('STATUS')->nullable();
            $table->boolean('FLAG_ACTIVE')->default(true);
            $table->string('LOG_ENTRY_NAME')->nullable();
            $table->dateTime('LOG_ENTRY_DATE')->nullable();
            $table->string('LOG_UPDATE_NAME')->nullable();
            $table->dateTime('LOG_UPDATE_DATE')->nullable();
        });

        Schema::create('TRANS_INDIKATOR_BIDANG', function (Blueprint $table) {
            $table->increments('ID');
            $table->unsignedInteger('PERIODE_ID');
            $table->unsignedInteger('BIDANG_ID')->nullable();
            $table->unsignedInteger('MASTER_INDIKATOR_ID')->nullable();
            $table->boolean('FLAG_ACTIVE')->default(true);
            $table->string('LOG_ENTRY_NAME')->nullable();
            $table->dateTime('LOG_ENTRY_DATE')->nullable();
            $table->string('LOG_UPDATE_NAME')->nullable();
            $table->dateTime('LOG_UPDATE_DATE')->nullable();
        });

        Schema::create('TRANS_AKTIFITAS_UTAMA', function (Blueprint $table) {
            $table->increments('ID');
            $table->unsignedInteger('MASTER_AKTIFITAS_ID');
            $table->unsignedInteger('INDIKATOR_BIDANG_ID');
            $table->unsignedInteger('PERIODE_ID');
            $table->string('NAMA_AKTIFITAS', 300);
            $table->decimal('TARGET', 10, 2)->default(1);
            $table->decimal('REALISASI', 10, 2)->default(0);
            $table->decimal('BOBOT_TARGET', 5, 2)->default(35);
            $table->decimal('BOBOT_REALISASI', 5, 2)->default(0);
            $table->text('KETERANGAN')->nullable();
            $table->string('FILE_BUKTI')->nullable();
            $table->boolean('FLAG_ACTIVE')->default(true);
            $table->string('LOG_ENTRY_NAME')->nullable();
            $table->dateTime('LOG_ENTRY_DATE')->nullable();
            $table->string('LOG_UPDATE_NAME')->nullable();
            $table->dateTime('LOG_UPDATE_DATE')->nullable();
        });
    }

    private function insertMasterAktifitasUtama(string $namaAktifitas): int
    {
        return DB::table('MASTER_AKTIFITAS_UTAMA')->insertGetId([
            'NAMA_AKTIFITAS' => $namaAktifitas,
            'BOBOT_TARGET' => 35,
            'URUTAN' => 1,
            'FLAG_ACTIVE' => true,
            'LOG_ENTRY_DATE' => now(),
        ]);
    }

    private function insertPeriode(string $namaPeriode): int
    {
        return DB::table('MASTER_PERIODE')->insertGetId([
            'NAMA_PERIODE' => $namaPeriode,
            'STATUS' => 'aktif',
            'FLAG_ACTIVE' => true,
            'LOG_ENTRY_DATE' => now(),
        ]);
    }

    private function insertIndikatorBidang(int $periodeId): int
    {
        return DB::table('TRANS_INDIKATOR_BIDANG')->insertGetId([
            'PERIODE_ID' => $periodeId,
            'FLAG_ACTIVE' => true,
            'LOG_ENTRY_DATE' => now(),
        ]);
    }

    private function insertTransAktifitasUtama(
        int $masterAktifitasId,
        int $indikatorBidangId,
        int $periodeId,
        string $namaAktifitas,
        ?string $fileBukti = null
    ): int {
        return DB::table('TRANS_AKTIFITAS_UTAMA')->insertGetId([
            'MASTER_AKTIFITAS_ID' => $masterAktifitasId,
            'INDIKATOR_BIDANG_ID' => $indikatorBidangId,
            'PERIODE_ID' => $periodeId,
            'NAMA_AKTIFITAS' => $namaAktifitas,
            'TARGET' => 1,
            'REALISASI' => 0,
            'BOBOT_TARGET' => 35,
            'BOBOT_REALISASI' => 0,
            'FILE_BUKTI' => $fileBukti,
            'FLAG_ACTIVE' => true,
            'LOG_ENTRY_DATE' => now(),
        ]);
    }
}
