<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" crossorigin="anonymous">
    <title>HOME</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #EEEEEE;
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
        .container-md {
            max-width: 1400px;
            margin: 30px auto;
            background-color: #EEEEEE;
            padding: 10px;
            box-shadow: 1px 1px 1px 1px black;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
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
        footer {
            background-color: #C4D7FF;
            padding: 20px;
            text-align: center;
            border-top: 1px solid #ddd;
            margin-top: 20px;
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
        <li><a href="aduan_user.php" class="btn btn-outline-dark">Mohon Aduan Aset</a></li>
        <li><a href="index.php" class="btn btn-outline-danger">Log Keluar</a></li>
    </ul>
</div>

<!-- Main content -->
<section class="vh-100">
    <div class="container-md">

    <?php
    include('db.php');

    // Semak jika 'ic' wujud dalam sesi
    if (isset($_SESSION['ic'])) {
        $ic = $_SESSION['ic'];
        $sql = "SELECT * FROM tbl_daftar WHERE `ic`='$ic'";
        $akaun = mysqli_query($conn, $sql);
        $row_akaun = mysqli_fetch_assoc($akaun);

        if ($row_akaun) {
            $emel = $row_akaun['emel'];
            echo "<h2><b>Senarai Aduan Kerosakan Aset</b></h2>";
            echo '<div class="table-responsive-sm">
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
                        </tr>
                    </thead>
                    <tbody>';

            $sql2 = "SELECT * FROM tbl_semakan WHERE emel='$emel'";
            $result = mysqli_query($conn, $sql2);
            if ($result && mysqli_num_rows($result) > 0) {
                $count = 1;
                while ($data = mysqli_fetch_assoc($result)) {
                    echo "<tr>
                        <td>{$count}</td>
                        <td>{$data['role']}</td>
                        <td>{$data['tarikh_rosak']}</td>
                        <td>{$data['nama']}</td>
                        <td>{$data['jenis_aset']}</td>
                        <td>{$data['no_siri']}</td>
                        <td>{$data['userterakhir']}</td>
                        <td>{$data['tempat_rosak']}</td>
                        <td>{$data['disahkan']}</td>
                    </tr>";
                    $count++;
                }
            } else {
                echo "<tr><td colspan='9' class='text-center text-danger'>Tiada rekod aduan dijumpai.</td></tr>";
            }

            echo "</tbody></table></div>";

        } else {
            echo "<div class='alert alert-danger'>Ralat: Maklumat pengguna tidak dijumpai.</div>";
        }

    } else {
        echo "<div class='alert alert-warning'>Sesi telah tamat atau anda belum log masuk. Sila log masuk semula.</div>";
    }
    ?>

    </div>
</section>

<!-- Footer -->
<footer class="text-center bg-body-tertiary">
    <div class="text-center p-3">ILP Kuala Langat Selangor &copy; 2024 Sistem Kerosakan Aset. All rights reserved.</div>
</footer>
</body>
</html>
