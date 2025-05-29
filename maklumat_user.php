\\<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" crossorigin="anonymous">
    <title>HOME</title>

    <style>
        body {
            background: #EEEEEE;
            min-height: 100vh;
            margin: 0;
            display: flex;
            flex-direction: column;
        }

        h4 {
            color: black;
            margin-top: 10px;
            font-size: 18px;
            font-family: 'Arial';
        }
        .navbar {
            background-color: #C4D7FF;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #ddd;
        }
        .navbar-brand {
            display: flex;
            align-items: center;
            text-decoration: none;
            color: #333;
        }
        .navbar-brand img {
            margin-right: 10px;
        }
        .navbar ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
            display: flex;
        }
        .navbar ul li {
            margin-right: 20px;
        }
        .navbar ul li a {
            text-decoration: none;
            color: #333;
        }
        .navbar ul li a:hover {
            color: white;
        }

        section.vh-100 {
            flex: 1;
        }

        .container-md {
            max-width: 1400px;
            margin: 30px auto;
            background-color: #EEEEEE;
            padding: 10px;
            box-shadow: 1px 1px 1px 1px black;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            border-style: solid;
            border-color: black;
        }

        .table thead th {
            background-color: #C4D7FF;
            border: 1px solid #0B192C;
            padding: 10px;
            text-align: center;
        }
        .table tbody td {
            background-color: #EEEEEE;
            border: 1px solid #0B192C;
            padding: 10px;
        }

        .footer {
            background-color: #C4D7FF;
            padding: 20px;
            text-align: center;
            border-top: 1px solid #ddd;
            margin-top: auto;
        }

        @media (max-width: 399px) {
            .footer {
                padding: 10px;
                text-align: center;
                font-size: 14px;
            }

            h1 {
                width: 100px;
                font-size: 17px;
            }

            .table {
                width: 100%;
            }

            .table thead th, .table tbody td {
                font-size: 12px;
                padding: 5px;
            }

            .container-md {
                padding: 5px;
            }
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <a class="navbar-brand" href="#">
            <img src="img/305199717_985453492342369_1200662185772088661_n.png" height="50" alt="Sistem Aduan Kerosakan Aset" />
            <h4><b>SISTEM ADUAN KEROSAKAN ASET</b></h4>
        </a>
        <ul>
            <li><a href="aduan_admin.php" class="btn btn-outline-dark">Mohon Aduan Aset</a></li>
            <li><a href="admin.php" class="btn btn-outline-danger"><</a></li>
        </ul>
    </div>

    <!-- Main content -->
    <section class="vh-100">
        <div class="container-md">
            <h2><b>Senarai Aduan Kerosakan Aset</b></h2>
            <div class="table-responsive-sm">
                <?php
                include('db.php');

                // Jumlah data per halaman
                $limit = 5;

                // Dapatkan nomor halaman saat ini dari URL, default ke 1 jika tidak ada
                $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
                $start = ($page > 1) ? ($page * $limit) - $limit : 0;

                // Hitung total jumlah data
                $result = mysqli_query($conn, "SELECT COUNT(*) AS total FROM tbl_semakan");
                $totalData = mysqli_fetch_assoc($result)['total'];
                $totalPages = ceil($totalData / $limit);

                // Ambil data untuk halaman saat ini
                $sql = "SELECT * FROM tbl_semakan LIMIT $start, $limit";
                $result = mysqli_query($conn, $sql);
                ?>

                <!-- Tabel data -->
                <table class="table">
                    <thead>
                        <tr>
                            <th>Bil.</th>
                            <th>Kategori</th>
                            <th>Tarikh Kerosakan</th>
                            <th>Nama Dan Jawatan</th>
                            <th>Jenis Aset</th>
                            <th>Nombor Siri Pendaftaran Aset</th>
                            <th>Pengguna Terakhir</th>
                            <th>Tempat Rosak</th>
                            <th>Disahkan</th>
                            <th>Tindakan</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php
                    $count = $start + 1;
                    while ($data = mysqli_fetch_assoc($result)) {
                    ?>
                    <tr>
                        <td><?php echo $count++; ?></td>
                        <td><?php echo htmlspecialchars($data['kategori']); ?></td>
                        <td><?php echo htmlspecialchars($data['tarikh_rosak']); ?></td>
                        <td><?php echo htmlspecialchars($data['nama']); ?></td>
                        <td><?php echo htmlspecialchars($data['jenis_aset']); ?></td>
                        <td><?php echo htmlspecialchars($data['no_siri']); ?></td>
                        <td><?php echo htmlspecialchars($data['userterakhir']); ?></td>
                        <td><?php echo htmlspecialchars($data['tempat_rosak']); ?></td>
                        <td><?php echo htmlspecialchars($data['lulus_jabatan']); ?></td>
                        <td>
                            <a href="view_admin.php?no_id=<?php echo $data['no_id'];?>" class="btn btn-info my-1">Lebih lanjut</a>
                            <a href="edit_admin.php?no_id=<?php echo $data['no_id'];?>" class="btn btn-warning">Edit</a>
                            <a href="hantar.php?no_id=<?php echo $data['no_id'];?>" class="btn btn-success">Hantar</a>
                            <a href="delete.php?no_id=<?php echo $data['no_id'];?>" class="btn btn-danger my-1">Buang</a>
                        </td>
                    </tr>
                    <?php
                    }
                    ?>
                    </tbody>
                </table>

                <!-- Navigasi Pagination -->
                <div class="d-flex justify-content-center">
                    <nav aria-label="Page navigation">
                        <ul class="pagination">
                            <?php if($page > 1): ?>
                                <li class="page-item"><a class="page-link" href="?page=<?php echo $page - 1; ?>">Back</a></li>
                            <?php endif; ?>

                            <?php for($i = 1; $i <= $totalPages; $i++): ?>
                                <li class="page-item <?php echo ($page == $i) ? 'active' : ''; ?>">
                                    <a class="page-link" href="?page=<?php echo $i; ?>"><?php echo $i; ?></a>
                                </li>
                            <?php endfor; ?>

                            <?php if($page < $totalPages): ?>
                                <li class="page-item"><a class="page-link" href="?page=<?php echo $page + 1; ?>">Next</a></li>
                            <?php endif; ?>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <div class="footer">
        ILP Kuala Langat Selangor &copy; 2024 Sistem Kerosakan Aset. All rights reserved.
    </div>
</body>
</html>
