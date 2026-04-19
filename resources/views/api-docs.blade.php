<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>API Documentation - Opera INK</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            background: #f5f7fa;
            color: #333;
        }

        .container {
            max-width: 960px;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            font-size: 28px;
            margin-bottom: 8px;
            color: #1a1a2e;
        }

        .subtitle {
            color: #666;
            margin-bottom: 30px;
            font-size: 14px;
        }

        .base-url {
            background: #1a1a2e;
            color: #a5d8ff;
            padding: 12px 16px;
            border-radius: 8px;
            font-family: monospace;
            font-size: 14px;
            margin-bottom: 10px;
        }

        .note {
            background: #fff3cd;
            border-left: 4px solid #ffc107;
            padding: 12px 16px;
            border-radius: 4px;
            margin-bottom: 30px;
            font-size: 13px;
        }

        .note code {
            background: #ffeeba;
            padding: 2px 6px;
            border-radius: 3px;
            font-size: 12px;
        }

        .section {
            margin-bottom: 32px;
        }

        .section-title {
            font-size: 20px;
            color: #1a1a2e;
            border-bottom: 2px solid #e0e0e0;
            padding-bottom: 8px;
            margin-bottom: 16px;
        }

        .endpoint {
            background: #fff;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            margin-bottom: 12px;
            overflow: hidden;
        }

        .endpoint-header {
            display: flex;
            align-items: center;
            padding: 12px 16px;
            cursor: pointer;
            gap: 12px;
        }

        .endpoint-header:hover {
            background: #f8f9fa;
        }

        .method {
            font-size: 12px;
            font-weight: 700;
            padding: 4px 10px;
            border-radius: 4px;
            min-width: 60px;
            text-align: center;
            color: #fff;
        }

        .method.get {
            background: #28a745;
        }

        .method.post {
            background: #007bff;
        }

        .method.put {
            background: #fd7e14;
        }

        .method.delete {
            background: #dc3545;
        }

        .path {
            font-family: monospace;
            font-size: 14px;
            font-weight: 500;
        }

        .desc {
            color: #666;
            font-size: 13px;
            margin-left: auto;
        }

        .arrow {
            color: #999;
            transition: transform 0.2s;
            font-size: 12px;
        }

        .endpoint.open .arrow {
            transform: rotate(90deg);
        }

        .endpoint-body {
            display: none;
            border-top: 1px solid #e0e0e0;
            padding: 16px;
            background: #fafafa;
        }

        .endpoint.open .endpoint-body {
            display: block;
        }

        .field-table {
            width: 100%;
            border-collapse: collapse;
            font-size: 13px;
        }

        .field-table th {
            text-align: left;
            padding: 6px 8px;
            border-bottom: 2px solid #ddd;
            color: #555;
            font-size: 11px;
            text-transform: uppercase;
        }

        .field-table td {
            padding: 6px 8px;
            border-bottom: 1px solid #eee;
        }

        .field-table td:first-child {
            font-family: monospace;
            font-weight: 500;
            color: #d63384;
        }

        .field-table .required {
            color: #dc3545;
            font-size: 11px;
            font-weight: 600;
        }

        .field-table .optional {
            color: #6c757d;
            font-size: 11px;
        }

        .label {
            font-weight: 600;
            font-size: 13px;
            color: #555;
            margin-bottom: 6px;
            margin-top: 12px;
        }

        .label:first-child {
            margin-top: 0;
        }

        .response-example {
            background: #1a1a2e;
            color: #a5d8ff;
            padding: 12px 16px;
            border-radius: 6px;
            font-family: monospace;
            font-size: 12px;
            white-space: pre;
            overflow-x: auto;
            margin-top: 6px;
            line-height: 1.5;
        }

        .copy-btn {
            background: #e9ecef;
            border: none;
            padding: 4px 10px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 12px;
            color: #495057;
        }

        .copy-btn:hover {
            background: #dee2e6;
        }

        .toc {
            background: #fff;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            padding: 16px 20px;
            margin-bottom: 30px;
        }

        .toc-title {
            font-size: 14px;
            font-weight: 600;
            margin-bottom: 8px;
        }

        .toc a {
            color: #007bff;
            text-decoration: none;
            font-size: 13px;
            display: block;
            padding: 3px 0;
        }

        .toc a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Opera INK - API Documentation</h1>
        <p class="subtitle">Dokumentasi endpoint API untuk tim Front-End</p>

        <div class="base-url">Base URL: {{ url('/api') }}</div>
        <div class="note">
            Semua request harus menyertakan header <code>Accept: application/json</code>.<br>
            Untuk method POST/PUT, gunakan header <code>Content-Type: application/json</code>.<br>
            <b>Semua endpoint (kecuali /login) WAJIB Bearer Token:</b><br>
            <code>Authorization: Bearer &lt;token&gt;</code>
        </div>

        <div class="toc">
            <div class="toc-title">Daftar Endpoint</div>
            <a href="#auth">Auth (Login/Logout/User)</a>
            <div class="section" id="auth">
                <h2 class="section-title">Auth (Login, Logout, User)</h2>
                <div class="endpoint">
                    <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                        <span class="method post">POST</span>
                        <span class="path">/api/login</span>
                        <span class="desc">Login, dapatkan token</span>
                        <span class="arrow">&#9654;</span>
                    </div>
                    <div class="endpoint-body">
                        <div class="label">Body Parameters</div>
                        <table class="field-table">
                            <tr>
                                <th>Field</th>
                                <th>Type</th>
                                <th>Validasi</th>
                                <th>Keterangan</th>
                            </tr>
                            <tr>
                                <td>email</td>
                                <td>string</td>
                                <td><span class="required">required</span> email</td>
                                <td>Email user</td>
                            </tr>
                            <tr>
                                <td>password</td>
                                <td>string</td>
                                <td><span class="required">required</span></td>
                                <td>Password user</td>
                            </tr>
                        </table>
                        <div class="label">Response</div>
                        <div class="response-example">{
                            "success": true,
                            "message": "Login berhasil",
                            "data": {
                            "token": "...",
                            "user": { ... }
                            }
                            }</div>
                    </div>
                </div>
                <div class="endpoint">
                    <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                        <span class="method post">POST</span>
                        <span class="path">/api/logout</span>
                        <span class="desc">Logout (wajib Bearer Token)</span>
                        <span class="arrow">&#9654;</span>
                    </div>
                    <div class="endpoint-body">
                        <div class="label">Header</div>
                        <code>Authorization: Bearer &lt;token&gt;</code>
                        <div class="label">Response</div>
                        <div class="response-example">{
                            "success": true,
                            "message": "Logout berhasil",
                            "data": null
                            }</div>
                    </div>
                </div>
                <div class="endpoint">
                    <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                        <span class="method get">GET</span>
                        <span class="path">/api/user</span>
                        <span class="desc">Ambil data user login (wajib Bearer Token)</span>
                        <span class="arrow">&#9654;</span>
                    </div>
                    <div class="endpoint-body">
                        <div class="label">Header</div>
                        <code>Authorization: Bearer &lt;token&gt;</code>
                        <div class="label">Response</div>
                        <div class="response-example">{
                            "success": true,
                            "message": "Success",
                            "data": { ...user }
                            }</div>
                    </div>
                </div>
            </div>
            <a href="#master-program">Master Program</a>
            <a href="#master-indikator-utama">Master Indikator Utama</a>
            <a href="#master-indikator">Master Indikator</a>
            <a href="#master-bidang">Master Bidang</a>
            <a href="#master-periode">Master Periode</a>
            <a href="#trans-indikator-bidang">Trans Indikator Bidang</a>
            <a href="#trans-indikator-detail">Trans Indikator Detail</a>
            <a href="#trans-realisasi-kegiatan">Trans Realisasi Kegiatan</a>
            <a href="#rencana-kegiatan">Rencana Kegiatan</a>
        </div>

        {{-- ============ MASTER PROGRAM ============ --}}
        <div class="section" id="master-program">
            <h2 class="section-title">Master Program</h2>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method get">GET</span>
                    <span class="path">/api/master-program</span>
                    <span class="desc">List semua program</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Response</div>
                    <div class="response-example">{
                        "success": true,
                        "message": "Success",
                        "data": [
                        {
                        "ID": 1,
                        "KODE_PROGRAM": "PRG001",
                        "NAMA_PROGRAM": "Program Pencegahan",
                        "FLAG_ACTIVE": true,
                        ...
                        }
                        ]
                        }</div>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method post">POST</span>
                    <span class="path">/api/master-program</span>
                    <span class="desc">Tambah program baru</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Body Parameters</div>
                    <table class="field-table">
                        <tr>
                            <th>Field</th>
                            <th>Type</th>
                            <th>Validasi</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>KODE_PROGRAM</td>
                            <td>string</td>
                            <td><span class="required">required</span> max:50</td>
                            <td>Kode program</td>
                        </tr>
                        <tr>
                            <td>NAMA_PROGRAM</td>
                            <td>string</td>
                            <td><span class="optional">optional</span> max:255</td>
                            <td>Nama program</td>
                        </tr>
                        <tr>
                            <td>FLAG_ACTIVE</td>
                            <td>boolean</td>
                            <td><span class="optional">optional</span></td>
                            <td>Default: 1</td>
                        </tr>
                    </table>
                    <div class="label">Request Body Example</div>
                    <div class="response-example">{
                        "KODE_PROGRAM": "PRG005",
                        "NAMA_PROGRAM": "Program Baru"
                        }</div>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method get">GET</span>
                    <span class="path">/api/master-program/{id}</span>
                    <span class="desc">Detail program</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Path Parameter</div>
                    <table class="field-table">
                        <tr>
                            <th>Param</th>
                            <th>Type</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>id</td>
                            <td>integer</td>
                            <td>ID program</td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method put">PUT</span>
                    <span class="path">/api/master-program/{id}</span>
                    <span class="desc">Update program</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Body Parameters</div>
                    <table class="field-table">
                        <tr>
                            <th>Field</th>
                            <th>Type</th>
                            <th>Validasi</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>KODE_PROGRAM</td>
                            <td>string</td>
                            <td><span class="optional">optional</span> max:50</td>
                            <td>Kode program</td>
                        </tr>
                        <tr>
                            <td>NAMA_PROGRAM</td>
                            <td>string</td>
                            <td><span class="optional">optional</span> max:255</td>
                            <td>Nama program</td>
                        </tr>
                        <tr>
                            <td>FLAG_ACTIVE</td>
                            <td>boolean</td>
                            <td><span class="optional">optional</span></td>
                            <td>Status aktif</td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method delete">DELETE</span>
                    <span class="path">/api/master-program/{id}</span>
                    <span class="desc">Hapus program</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Response</div>
                    <div class="response-example">{
                        "success": true,
                        "message": "Data berhasil dihapus.",
                        "data": null
                        }</div>
                </div>
            </div>
        </div>

        {{-- ============ MASTER INDIKATOR UTAMA ============ --}}
        <div class="section" id="master-indikator-utama">
            <h2 class="section-title">Master Indikator Utama</h2>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method get">GET</span>
                    <span class="path">/api/master-indikator-utama</span>
                    <span class="desc">List semua (include relasi program)</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Response</div>
                    <div class="response-example">{
                        "success": true,
                        "message": "Success",
                        "data": [
                        {
                        "ID": 1,
                        "PROGRAM_ID": 1,
                        "KODE_INDIKATOR_UTAMA": "IKU001",
                        "NAMA_INDIKATOR_UTAMA": "...",
                        "FLAG_ACTIVE": true,
                        "program": {
                        "ID": 1,
                        "KODE_PROGRAM": "PRG001",
                        "NAMA_PROGRAM": "Program Pencegahan"
                        }
                        }
                        ]
                        }</div>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method post">POST</span>
                    <span class="path">/api/master-indikator-utama</span>
                    <span class="desc">Tambah indikator utama baru</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Body Parameters</div>
                    <table class="field-table">
                        <tr>
                            <th>Field</th>
                            <th>Type</th>
                            <th>Validasi</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>PROGRAM_ID</td>
                            <td>integer</td>
                            <td><span class="required">required</span> exists</td>
                            <td>FK ke MASTER_PROGRAM.ID</td>
                        </tr>
                        <tr>
                            <td>KODE_INDIKATOR_UTAMA</td>
                            <td>string</td>
                            <td><span class="required">required</span> max:50</td>
                            <td>Kode indikator utama</td>
                        </tr>
                        <tr>
                            <td>NAMA_INDIKATOR_UTAMA</td>
                            <td>string</td>
                            <td><span class="required">required</span> max:200</td>
                            <td>Nama indikator utama</td>
                        </tr>
                        <tr>
                            <td>FLAG_ACTIVE</td>
                            <td>boolean</td>
                            <td><span class="optional">optional</span></td>
                            <td>Default: 1</td>
                        </tr>
                    </table>
                    <div class="label">Request Body Example</div>
                    <div class="response-example">{
                        "PROGRAM_ID": 1,
                        "KODE_INDIKATOR_UTAMA": "IKU005",
                        "NAMA_INDIKATOR_UTAMA": "Indikator Utama Baru"
                        }</div>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method get">GET</span>
                    <span class="path">/api/master-indikator-utama/{id}</span>
                    <span class="desc">Detail (include relasi program)</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Path Parameter</div>
                    <table class="field-table">
                        <tr>
                            <th>Param</th>
                            <th>Type</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>id</td>
                            <td>integer</td>
                            <td>ID indikator utama</td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method put">PUT</span>
                    <span class="path">/api/master-indikator-utama/{id}</span>
                    <span class="desc">Update indikator utama</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Body Parameters</div>
                    <table class="field-table">
                        <tr>
                            <th>Field</th>
                            <th>Type</th>
                            <th>Validasi</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>PROGRAM_ID</td>
                            <td>integer</td>
                            <td><span class="optional">optional</span> exists</td>
                            <td>FK ke MASTER_PROGRAM.ID</td>
                        </tr>
                        <tr>
                            <td>KODE_INDIKATOR_UTAMA</td>
                            <td>string</td>
                            <td><span class="optional">optional</span> max:50</td>
                            <td>Kode indikator utama</td>
                        </tr>
                        <tr>
                            <td>NAMA_INDIKATOR_UTAMA</td>
                            <td>string</td>
                            <td><span class="optional">optional</span> max:200</td>
                            <td>Nama indikator utama</td>
                        </tr>
                        <tr>
                            <td>FLAG_ACTIVE</td>
                            <td>boolean</td>
                            <td><span class="optional">optional</span></td>
                            <td>Status aktif</td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method delete">DELETE</span>
                    <span class="path">/api/master-indikator-utama/{id}</span>
                    <span class="desc">Hapus indikator utama</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Response</div>
                    <div class="response-example">{
                        "success": true,
                        "message": "Data berhasil dihapus.",
                        "data": null
                        }</div>
                </div>
            </div>
        </div>

        {{-- ============ MASTER INDIKATOR ============ --}}
        <div class="section" id="master-indikator">
            <h2 class="section-title">Master Indikator</h2>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method get">GET</span>
                    <span class="path">/api/master-indikator</span>
                    <span class="desc">List semua (include relasi indikator utama)</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Response</div>
                    <div class="response-example">{
                        "success": true,
                        "message": "Success",
                        "data": [
                        {
                        "ID": 1,
                        "INDIKATOR_UTAMA_ID": 1,
                        "KODE_INDIKATOR": "IND001",
                        "NAMA_INDIKATOR": "...",
                        "SATUAN": "Persen",
                        "FLAG_ACTIVE": true,
                        "indikator_utama": {
                        "ID": 1,
                        "KODE_INDIKATOR_UTAMA": "IKU001",
                        "NAMA_INDIKATOR_UTAMA": "..."
                        }
                        }
                        ]
                        }</div>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method post">POST</span>
                    <span class="path">/api/master-indikator</span>
                    <span class="desc">Tambah indikator baru</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Body Parameters</div>
                    <table class="field-table">
                        <tr>
                            <th>Field</th>
                            <th>Type</th>
                            <th>Validasi</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>INDIKATOR_UTAMA_ID</td>
                            <td>integer</td>
                            <td><span class="required">required</span> exists</td>
                            <td>FK ke MASTER_INDIKATOR_UTAMA.ID</td>
                        </tr>
                        <tr>
                            <td>KODE_INDIKATOR</td>
                            <td>string</td>
                            <td><span class="required">required</span> max:50</td>
                            <td>Kode indikator</td>
                        </tr>
                        <tr>
                            <td>NAMA_INDIKATOR</td>
                            <td>string</td>
                            <td><span class="required">required</span> max:200</td>
                            <td>Nama indikator</td>
                        </tr>
                        <tr>
                            <td>SATUAN</td>
                            <td>string</td>
                            <td><span class="optional">optional</span> max:50</td>
                            <td>Satuan (Persen, Orang, dll)</td>
                        </tr>
                        <tr>
                            <td>FLAG_ACTIVE</td>
                            <td>boolean</td>
                            <td><span class="optional">optional</span></td>
                            <td>Default: 1</td>
                        </tr>
                    </table>
                    <div class="label">Request Body Example</div>
                    <div class="response-example">{
                        "INDIKATOR_UTAMA_ID": 1,
                        "KODE_INDIKATOR": "IND010",
                        "NAMA_INDIKATOR": "Indikator Baru",
                        "SATUAN": "Persen"
                        }</div>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method get">GET</span>
                    <span class="path">/api/master-indikator/{id}</span>
                    <span class="desc">Detail (include relasi indikator utama)</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Path Parameter</div>
                    <table class="field-table">
                        <tr>
                            <th>Param</th>
                            <th>Type</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>id</td>
                            <td>integer</td>
                            <td>ID indikator</td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method put">PUT</span>
                    <span class="path">/api/master-indikator/{id}</span>
                    <span class="desc">Update indikator</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Body Parameters</div>
                    <table class="field-table">
                        <tr>
                            <th>Field</th>
                            <th>Type</th>
                            <th>Validasi</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>INDIKATOR_UTAMA_ID</td>
                            <td>integer</td>
                            <td><span class="optional">optional</span> exists</td>
                            <td>FK ke MASTER_INDIKATOR_UTAMA.ID</td>
                        </tr>
                        <tr>
                            <td>KODE_INDIKATOR</td>
                            <td>string</td>
                            <td><span class="optional">optional</span> max:50</td>
                            <td>Kode indikator</td>
                        </tr>
                        <tr>
                            <td>NAMA_INDIKATOR</td>
                            <td>string</td>
                            <td><span class="optional">optional</span> max:200</td>
                            <td>Nama indikator</td>
                        </tr>
                        <tr>
                            <td>SATUAN</td>
                            <td>string</td>
                            <td><span class="optional">optional</span> max:50</td>
                            <td>Satuan</td>
                        </tr>
                        <tr>
                            <td>FLAG_ACTIVE</td>
                            <td>boolean</td>
                            <td><span class="optional">optional</span></td>
                            <td>Status aktif</td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method delete">DELETE</span>
                    <span class="path">/api/master-indikator/{id}</span>
                    <span class="desc">Hapus indikator</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Response</div>
                    <div class="response-example">{
                        "success": true,
                        "message": "Data berhasil dihapus.",
                        "data": null
                        }</div>
                </div>
            </div>
        </div>

        {{-- ============ MASTER BIDANG ============ --}}
        <div class="section" id="master-bidang">
            <h2 class="section-title">Master Bidang</h2>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method get">GET</span>
                    <span class="path">/api/master-bidang</span>
                    <span class="desc">List semua bidang</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Response</div>
                    <div class="response-example">{
                        "success": true,
                        "message": "Success",
                        "data": [
                        {
                        "ID": 1,
                        "NAMA_BIDANG": "Bidang Pencegahan",
                        "FLAG_ACTIVE": true,
                        ...
                        }
                        ]
                        }</div>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method post">POST</span>
                    <span class="path">/api/master-bidang</span>
                    <span class="desc">Tambah bidang baru</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Body Parameters</div>
                    <table class="field-table">
                        <tr>
                            <th>Field</th>
                            <th>Type</th>
                            <th>Validasi</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>NAMA_BIDANG</td>
                            <td>string</td>
                            <td><span class="required">required</span> max:150</td>
                            <td>Nama bidang</td>
                        </tr>
                        <tr>
                            <td>FLAG_ACTIVE</td>
                            <td>boolean</td>
                            <td><span class="optional">optional</span></td>
                            <td>Default: 1</td>
                        </tr>
                    </table>
                    <div class="label">Request Body Example</div>
                    <div class="response-example">{
                        "NAMA_BIDANG": "Bidang Baru"
                        }</div>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method get">GET</span>
                    <span class="path">/api/master-bidang/{id}</span>
                    <span class="desc">Detail bidang</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Path Parameter</div>
                    <table class="field-table">
                        <tr>
                            <th>Param</th>
                            <th>Type</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>id</td>
                            <td>integer</td>
                            <td>ID bidang</td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method put">PUT</span>
                    <span class="path">/api/master-bidang/{id}</span>
                    <span class="desc">Update bidang</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Body Parameters</div>
                    <table class="field-table">
                        <tr>
                            <th>Field</th>
                            <th>Type</th>
                            <th>Validasi</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>NAMA_BIDANG</td>
                            <td>string</td>
                            <td><span class="optional">optional</span> max:150</td>
                            <td>Nama bidang</td>
                        </tr>
                        <tr>
                            <td>FLAG_ACTIVE</td>
                            <td>boolean</td>
                            <td><span class="optional">optional</span></td>
                            <td>Status aktif</td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method delete">DELETE</span>
                    <span class="path">/api/master-bidang/{id}</span>
                    <span class="desc">Hapus bidang</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Response</div>
                    <div class="response-example">{
                        "success": true,
                        "message": "Data berhasil dihapus.",
                        "data": null
                        }</div>
                </div>
            </div>
        </div>

        {{-- ============ MASTER PERIODE ============ --}}
        <div class="section" id="master-periode">
            <h2 class="section-title">Master Periode</h2>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method get">GET</span>
                    <span class="path">/api/master-periode</span>
                    <span class="desc">List semua periode</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Response</div>
                    <div class="response-example">{
                        "success": true,
                        "message": "Success",
                        "data": [
                        {
                        "ID": 1,
                        "NAMA_PERIODE": "Semester 1 2026",
                        "START_DATE": "2026-01-01T00:00:00.000000Z",
                        "END_DATE": "2026-06-30T00:00:00.000000Z",
                        "STATUS": "OPEN",
                        "FLAG_ACTIVE": true,
                        ...
                        }
                        ]
                        }</div>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method post">POST</span>
                    <span class="path">/api/master-periode</span>
                    <span class="desc">Tambah periode baru</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Body Parameters</div>
                    <table class="field-table">
                        <tr>
                            <th>Field</th>
                            <th>Type</th>
                            <th>Validasi</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>NAMA_PERIODE</td>
                            <td>string</td>
                            <td><span class="required">required</span> max:100</td>
                            <td>Nama periode</td>
                        </tr>
                        <tr>
                            <td>START_DATE</td>
                            <td>datetime</td>
                            <td><span class="required">required</span></td>
                            <td>Tanggal mulai (YYYY-MM-DD)</td>
                        </tr>
                        <tr>
                            <td>END_DATE</td>
                            <td>datetime</td>
                            <td><span class="required">required</span> after_or_equal:START_DATE</td>
                            <td>Tanggal selesai</td>
                        </tr>
                        <tr>
                            <td>STATUS</td>
                            <td>enum</td>
                            <td><span class="optional">optional</span> OPEN|LOCKED</td>
                            <td>Default: OPEN</td>
                        </tr>
                        <tr>
                            <td>FLAG_ACTIVE</td>
                            <td>boolean</td>
                            <td><span class="optional">optional</span></td>
                            <td>Default: 1</td>
                        </tr>
                    </table>
                    <div class="label">Request Body Example</div>
                    <div class="response-example">{
                        "NAMA_PERIODE": "Semester 2 2026",
                        "START_DATE": "2026-07-01",
                        "END_DATE": "2026-12-31",
                        "STATUS": "OPEN"
                        }</div>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method get">GET</span>
                    <span class="path">/api/master-periode/{id}</span>
                    <span class="desc">Detail periode</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Path Parameter</div>
                    <table class="field-table">
                        <tr>
                            <th>Param</th>
                            <th>Type</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>id</td>
                            <td>integer</td>
                            <td>ID periode</td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method put">PUT</span>
                    <span class="path">/api/master-periode/{id}</span>
                    <span class="desc">Update periode</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Body Parameters</div>
                    <table class="field-table">
                        <tr>
                            <th>Field</th>
                            <th>Type</th>
                            <th>Validasi</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>NAMA_PERIODE</td>
                            <td>string</td>
                            <td><span class="optional">optional</span> max:100</td>
                            <td>Nama periode</td>
                        </tr>
                        <tr>
                            <td>START_DATE</td>
                            <td>datetime</td>
                            <td><span class="optional">optional</span></td>
                            <td>Tanggal mulai</td>
                        </tr>
                        <tr>
                            <td>END_DATE</td>
                            <td>datetime</td>
                            <td><span class="optional">optional</span> after_or_equal:START_DATE</td>
                            <td>Tanggal selesai</td>
                        </tr>
                        <tr>
                            <td>STATUS</td>
                            <td>enum</td>
                            <td><span class="optional">optional</span> OPEN|LOCKED</td>
                            <td>Status periode</td>
                        </tr>
                        <tr>
                            <td>FLAG_ACTIVE</td>
                            <td>boolean</td>
                            <td><span class="optional">optional</span></td>
                            <td>Status aktif</td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method delete">DELETE</span>
                    <span class="path">/api/master-periode/{id}</span>
                    <span class="desc">Hapus periode</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Response</div>
                    <div class="response-example">{
                        "success": true,
                        "message": "Data berhasil dihapus.",
                        "data": null
                        }</div>
                </div>
            </div>
        </div>

        {{-- ============ TRANS INDIKATOR BIDANG ============ --}}
        <div class="section" id="trans-indikator-bidang">
            <h2 class="section-title">Trans Indikator Bidang</h2>
            <p style="font-size: 13px; color: #666; margin-bottom: 12px;">
                Endpoint <strong>GET</strong> (index &amp; show) menggunakan SQL View yang menampilkan nama program,
                indikator utama, indikator, bidang, dan periode.
            </p>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method get">GET</span>
                    <span class="path">/api/trans-indikator-bidang</span>
                    <span class="desc">List semua (dari View SQL)</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Response</div>
                    <div class="response-example">{
                        "success": true,
                        "message": "Success",
                        "data": [
                        {
                        "ID": 1,
                        "NAMA_PROGRAM": "Program Pencegahan",
                        "NAMA_INDIKATOR_UTAMA": "...",
                        "NAMA_INDIKATOR": "...",
                        "NAMA_BIDANG": "Bidang Pencegahan",
                        "NAMA_PERIODE": "Semester 1 2026",
                        "FLAG_ACTIVE": true,
                        "LOG_ENTRY_NAME": null,
                        "LOG_ENTRY_DATE": null,
                        "LOG_UPDATE_NAME": null,
                        "LOG_UPDATE_DATE": null
                        }
                        ]
                        }</div>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method post">POST</span>
                    <span class="path">/api/trans-indikator-bidang</span>
                    <span class="desc">Tambah mapping indikator-bidang</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Body Parameters</div>
                    <table class="field-table">
                        <tr>
                            <th>Field</th>
                            <th>Type</th>
                            <th>Validasi</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>PERIODE_ID</td>
                            <td>integer</td>
                            <td><span class="required">required</span> exists</td>
                            <td>FK ke MASTER_PERIODE.ID</td>
                        </tr>
                        <tr>
                            <td>BIDANG_ID</td>
                            <td>integer</td>
                            <td><span class="required">required</span> exists</td>
                            <td>FK ke MASTER_BIDANG.ID</td>
                        </tr>
                        <tr>
                            <td>MASTER_INDIKATOR_ID</td>
                            <td>integer</td>
                            <td><span class="required">required</span> exists</td>
                            <td>FK ke MASTER_INDIKATOR.ID</td>
                        </tr>
                        <tr>
                            <td>FLAG_ACTIVE</td>
                            <td>boolean</td>
                            <td><span class="optional">optional</span></td>
                            <td>Default: 1</td>
                        </tr>
                    </table>
                    <div class="label">Unique Constraint</div>
                    <p style="font-size: 13px; color: #dc3545; margin-top: 4px;">Kombinasi PERIODE_ID + BIDANG_ID +
                        MASTER_INDIKATOR_ID harus unik.</p>
                    <div class="label">Request Body Example</div>
                    <div class="response-example">{
                        "PERIODE_ID": 1,
                        "BIDANG_ID": 1,
                        "MASTER_INDIKATOR_ID": 1
                        }</div>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method get">GET</span>
                    <span class="path">/api/trans-indikator-bidang/{id}</span>
                    <span class="desc">Detail (dari View SQL)</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Path Parameter</div>
                    <table class="field-table">
                        <tr>
                            <th>Param</th>
                            <th>Type</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>id</td>
                            <td>integer</td>
                            <td>ID trans indikator bidang</td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method put">PUT</span>
                    <span class="path">/api/trans-indikator-bidang/{id}</span>
                    <span class="desc">Update mapping</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Body Parameters</div>
                    <table class="field-table">
                        <tr>
                            <th>Field</th>
                            <th>Type</th>
                            <th>Validasi</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>PERIODE_ID</td>
                            <td>integer</td>
                            <td><span class="optional">optional</span> exists</td>
                            <td>FK ke MASTER_PERIODE.ID</td>
                        </tr>
                        <tr>
                            <td>BIDANG_ID</td>
                            <td>integer</td>
                            <td><span class="optional">optional</span> exists</td>
                            <td>FK ke MASTER_BIDANG.ID</td>
                        </tr>
                        <tr>
                            <td>MASTER_INDIKATOR_ID</td>
                            <td>integer</td>
                            <td><span class="optional">optional</span> exists</td>
                            <td>FK ke MASTER_INDIKATOR.ID</td>
                        </tr>
                        <tr>
                            <td>FLAG_ACTIVE</td>
                            <td>boolean</td>
                            <td><span class="optional">optional</span></td>
                            <td>Status aktif</td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method delete">DELETE</span>
                    <span class="path">/api/trans-indikator-bidang/{id}</span>
                    <span class="desc">Hapus mapping</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Response</div>
                    <div class="response-example">{
                        "success": true,
                        "message": "Data berhasil dihapus.",
                        "data": null
                        }</div>
                </div>
            </div>
        </div>

        {{-- ============ ERROR RESPONSE ============ --}}
        <div class="section" id="error-response">
            <h2 class="section-title">Error Response Format</h2>

            <div class="endpoint open">
                <div class="endpoint-header">
                    <span class="method delete" style="background:#6c757d">INFO</span>
                    <span class="path">Validation Error (422)</span>
                </div>
                <div class="endpoint-body">
                    <div class="response-example">{
                        "message": "The KODE PROGRAM field is required.",
                        "errors": {
                        "KODE_PROGRAM": [
                        "The KODE PROGRAM field is required."
                        ]
                        }
                        }</div>
                </div>
            </div>

            <div class="endpoint open">
                <div class="endpoint-header">
                    <span class="method delete" style="background:#6c757d">INFO</span>
                    <span class="path">Not Found (404)</span>
                </div>
                <div class="endpoint-body">
                    <div class="response-example">{
                        "message": "No query results for model [App\\Models\\MasterProgram] 999"
                        }</div>
                </div>
            </div>
        </div>

        <p style="text-align:center; color:#999; font-size:12px; margin-top:40px; padding-bottom:20px;">
            Opera INK API Docs &mdash; Generated {{ now()->format('d M Y H:i') }}
        </p>

        <div class="section" id="trans-indikator-detail">
            <h2 class="section-title">Trans Indikator Detail</h2>
            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method get">GET</span>
                    <span class="path">/api/trans-indikator-detail</span>
                    <span class="desc">List semua detail indikator-bidang</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Response</div>
                    <div class="response-example">{
                        "success": true,
                        "message": "Success",
                        "data": [
                        {
                        "ID": 1,
                        "INDIKATOR_BIDANG_ID": 1,
                        "JENIS_KEGIATAN": "...",
                        "TARGET": 100.0,
                        "FLAG_ACTIVE": true
                        }
                        ]
                        }</div>
                </div>
            </div>
            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method post">POST</span>
                    <span class="path">/api/trans-indikator-detail</span>
                    <span class="desc">Tambah detail indikator-bidang</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Body Parameters</div>
                    <table class="field-table">
                        <tr>
                            <th>Field</th>
                            <th>Type</th>
                            <th>Validasi</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>INDIKATOR_BIDANG_ID</td>
                            <td>integer</td>
                            <td><span class="required">required</span> exists</td>
                            <td>FK ke TRANS_INDIKATOR_BIDANG.ID</td>
                        </tr>
                        <tr>
                            <td>JENIS_KEGIATAN</td>
                            <td>string</td>
                            <td><span class="required">required</span> max:255</td>
                            <td>Nama kegiatan</td>
                        </tr>
                        <tr>
                            <td>TARGET</td>
                            <td>decimal</td>
                            <td><span class="required">required</span></td>
                            <td>Target capaian</td>
                        </tr>
                        <tr>
                            <td>FLAG_ACTIVE</td>
                            <td>boolean</td>
                            <td><span class="optional">optional</span></td>
                            <td>Default: 1</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

        <div class="section" id="trans-realisasi-kegiatan">
            <h2 class="section-title">Trans Realisasi Kegiatan</h2>
            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method get">GET</span>
                    <span class="path">/api/trans-realisasi-kegiatan</span>
                    <span class="desc">List semua realisasi kegiatan</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Response</div>
                    <div class="response-example">{
                        "success": true,
                        "message": "Success",
                        "data": [
                        {
                        "ID": 1,
                        "INDIKATOR_DETAIL_ID": 1,
                        "TANGGAL_KEGIATAN": "2026-04-01",
                        "KETERANGAN": "...",
                        "FILE_FOTO": ["/storage/realisasi/foto/xxx.jpg"],
                        "FILE_DOCUMENT": "/storage/realisasi/dokumen/xxx.pdf",
                        "FLAG_ACTIVE": true
                        }
                        ]
                        }</div>
                </div>
            </div>
            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method post">POST</span>
                    <span class="path">/api/trans-realisasi-kegiatan</span>
                    <span class="desc">Tambah realisasi kegiatan (upload file)</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Body Parameters (multipart/form-data)</div>
                    <table class="field-table">
                        <tr>
                            <th>Field</th>
                            <th>Type</th>
                            <th>Validasi</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>INDIKATOR_DETAIL_ID</td>
                            <td>integer</td>
                            <td><span class="required">required</span> exists</td>
                            <td>FK ke TRANS_INDIKATOR_DETAIL.ID</td>
                        </tr>
                        <tr>
                            <td>TANGGAL_KEGIATAN</td>
                            <td>date</td>
                            <td><span class="required">required</span></td>
                            <td>Tanggal kegiatan</td>
                        </tr>
                        <tr>
                            <td>KETERANGAN</td>
                            <td>string</td>
                            <td><span class="optional">optional</span></td>
                            <td>Keterangan</td>
                        </tr>
                        <tr>
                            <td>FILE_FOTO[]</td>
                            <td>file[]</td>
                            <td><span class="optional">max:10MB</span> png/jpg/jpeg</td>
                            <td>Multiple foto</td>
                        </tr>
                        <tr>
                            <td>FILE_DOCUMENT</td>
                            <td>file</td>
                            <td><span class="optional">max:20MB</span></td>
                            <td>Dokumen pendukung</td>
                        </tr>
                        <tr>
                            <td>FLAG_ACTIVE</td>
                            <td>boolean</td>
                            <td><span class="optional">optional</span></td>
                            <td>Default: 1</td>
                        </tr>
                    </table>
                    <div class="label">Catatan</div>
                    <div class="note">Gunakan <code>multipart/form-data</code> untuk upload file. FILE_FOTO bisa
                        dikirim lebih dari satu.</div>
                </div>
            </div>
        </div>

        <div class="section" id="rencana-kegiatan">
            <h2 class="section-title">Rencana Kegiatan</h2>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method get">GET</span>
                    <span class="path">/api/rencana-kegiatan</span>
                    <span class="desc">List semua rencana kegiatan</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Response</div>
                    <div class="response-example">{
                        "success": true,
                        "message": "Success",
                        "data": [
                        {
                        "CAPAIAN_ID": 1,
                        "PERIODE_ID": 1,
                        "NAMA_PERIODE": "2025",
                        "BIDANG_ID": 1,
                        "NAMA_BIDANG": "BIDANG P2EPD",
                        "PROGRAM_ID": 1,
                        "NAMA_PROGRAM": "Program Pencegahan",
                        "INDIKATOR_UTAMA_ID": 1,
                        "NAMA_INDIKATOR_UTAMA": "Perencanaan",
                        "INDIKATOR_ID": 1,
                        "NAMA_INDIKATOR": "Penyusunan Perencanaan dan Pendanaan",
                        "TARGET": "19.00",
                        "REALISASI": "7.00",
                        "PERSENTASE": "36.84",
                        "TOTAL_KEGIATAN": 7,
                        "LAST_CALCULATE_DATE": "2026-04-01 23:13:58",
                        "FLAG_ACTIVE": 1
                        }
                        ]
                        }</div>
                </div>
            </div>

            <div class="endpoint">
                <div class="endpoint-header" onclick="this.parentElement.classList.toggle('open')">
                    <span class="method get">GET</span>
                    <span class="path">/api/rencana-kegiatan/{id}</span>
                    <span class="desc">Detail rencana kegiatan</span>
                    <span class="arrow">&#9654;</span>
                </div>
                <div class="endpoint-body">
                    <div class="label">Path Parameter</div>
                    <table class="field-table">
                        <tr>
                            <th>Param</th>
                            <th>Type</th>
                            <th>Keterangan</th>
                        </tr>
                        <tr>
                            <td>id</td>
                            <td>integer</td>
                            <td>ID rencana kegiatan</td>
                        </tr>
                    </table>
                    <div class="label">Response</div>
                    <div class="response-example">{
                        "success": true,
                        "message": "Success",
                        "data": {
                        "header": {
                        "CAPAIAN_ID": 1,
                        "INDIKATOR_BIDANG_ID": 1,
                        "PERIODE_ID": 1,
                        "NAMA_PERIODE": "2025",
                        "BIDANG_ID": 1,
                        "NAMA_BIDANG": "BIDANG P2EPD",
                        "PROGRAM_ID": 1,
                        "NAMA_PROGRAM": "Program Pencegahan",
                        "INDIKATOR_UTAMA_ID": 1,
                        "NAMA_INDIKATOR_UTAMA": "Perencanaan",
                        "INDIKATOR_ID": 1,
                        "NAMA_INDIKATOR": "Penyusunan Perencanaan dan Pendanaan",
                        "TARGET": "19.00",
                        "REALISASI": "7.00",
                        "PERSENTASE": "36.84",
                        "TOTAL_KEGIATAN": 7,
                        "LAST_CALCULATE_DATE": "2026-04-01 23:13:58",
                        "FLAG_ACTIVE": 1
                        },
                        "rekap": [
                        {
                        "INDIKATOR_BIDANG_ID": 1,
                        "NAMA_BIDANG": "BIDANG P2EPD",
                        "NAMA_INDIKATOR_UTAMA": "Perencanaan",
                        "NAMA_INDIKATOR": "Penyusunan Perencanaan dan Pendanaan",
                        "DETAIL_ID": 1,
                        "JENIS_KEGIATAN": "Rapat Koordinasi",
                        "TARGET": "10.00",
                        "REALISASI": "22.00",
                        "BOBOT": "0.526316",
                        "PERSENTASE": "220.00"
                        },
                        // ...
                        ],
                        "realisasi": [
                        {
                        "ID": 49,
                        "TANGGAL_KEGIATAN": "2026-04-14",
                        "KETERANGAN": "fbnz",
                        "FILE_FOTO": "[\"realisasi\\/foto\\/evAVGccffCAHh4R50NF1RL2nfn0JVqO3klVv6hgN.png\"]",
                        "FILE_DOCUMENT": "realisasi/dokumen/JDqvY1HD4BkfF7Q9RgxnzSaAsOEStK243DJhlwk4.pdf",
                        "INDIKATOR_BIDANG_ID": 1,
                        "JENIS_KEGIATAN": "Rapat Koordinasi"
                        }
                        // ...
                        ]
                        }
                        }</div>
                </div>
            </div>
        </div>

        <div class="section" id="setup-github">
            <h2 class="section-title">Langkah Setup dari GitHub</h2>
            <ol style="font-size:14px;line-height:1.7;margin-left:18px;">
                <li>Clone repo:<br><code>git clone &lt;repo-url&gt;</code></li>
                <li><code>cd opera_ink_VL13</code></li>
                <li>Install dependency:<br><code>composer install</code></li>
                <li>Copy <code>.env.example</code> ke <code>.env</code> dan sesuaikan DB, storage, dll.</li>
                <li>Generate key:<br><code>php artisan key:generate</code></li>
                <li>Set <code>DB_HOST=127.0.0.1</code> di <code>.env</code> (jika MySQL lokal)</li>
                <li>Pastikan <code>upload_max_filesize=20M</code> dan <code>post_max_size=50M</code> di
                    <code>php.ini</code>
                </li>
                <li>Buat storage symlink:<br><code>php artisan storage:link</code></li>
                <li>Jalankan server:<br><code>php artisan serve</code></li>
            </ol>
        </div>
        </p>
    </div>
</body>

</html>