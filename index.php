<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Sistem Aduan Kerosakan Aset</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" crossorigin="anonymous" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
  <style>
    body {
      background-color: #f1f5f9;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    

    nav.navbar {
      background-color: #C4D7FF;
      padding: 15px;
    }

    .banner {
      background: url('img/banner.png') center center no-repeat;
      background-size: cover;
      height: 400px;
      position: relative;
    }

    .banner-text {
      position: absolute;
      bottom: 10px;
      width: 100%;
      text-align: center;
      color: white;
      background: rgba(0, 0, 0, 0.4);
      padding: 15px;
    }

    .highlight {
      color: #f4b41a;
      font-weight: bold;
    }

    .login-title {
      margin-top: 40px;
      text-align: center;
      font-weight: bold;
      color: #0b192c;
    }

    .boxes {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      gap: 30px;
      padding: 30px 0;
    }

    .box {
      background: white;
      border-radius: 15px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
      padding: 20px;
      text-align: center;
      width: 200px;
      transition: transform 0.3s ease;
    }

    .box:hover {
      transform: scale(1.05);
    }

    .box img {
      width: 90px;
      height: 90px;
    }

    .box h3 {
      margin-top: 15px;
      color: #2E6EFF;
      font-size: 18px;
    }

    .footer {
      background-color: #C4D7FF;
      padding: 15px;
      text-align: center;
      margin-top: 40px;
      font-size: 14px;
    }

    @media (max-width: 576px) {
      .banner {
        height: 200px;
      }
      .banner-text h1 {
        font-size: 20px;
      }
      .box {
        width: 80%;
      }
    }
  </style>
</head>
<body>

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg">
    <div class="container">
      <a class="navbar-brand d-flex align-items-center" href="#">
        <img src="img/305199717_985453492342369_1200662185772088661_n.png" height="60" alt="Logo" />
        <span class="ms-3 fw-bold fs-5 text-dark">Sistem Aduan Kerosakan Aset</span>
      </a>
      <div class="ms-auto">
        <a class="btn btn-outline-dark" href="" target="_blank"><i class="fas fa-home"></i> Laman Utama</a>
      </div>
    </div>
  </nav>

  <!-- Banner -->
  <div class="banner">
    <div class="banner-text">
      <h1><span class="highlight">SISTEM ADUAN KEROSAKAN ASET</span></h1>
      <p>Sistem ini adalah satu alternatif bagi memudahkan pelajar, pensyarah dan kakitangan ILPKLS membuat aduan kerosakan secara atas talian</p>
    </div>
  </div>

  <!-- Log Masuk Section -->
  <div class="container">
    <h2 class="login-title">LOG MASUK SISTEM</h2>
    <div class="boxes">
      <div class="box">
        <a href="login_admin.php" class="text-decoration-none">
          <img src="img/unauthorized-person.png" alt="Admin">
          <h3>PENTADBIR</h3>
        </a>
      </div>
      <div class="box">
        <a href="login_bppa.php" class="text-decoration-none">
          <img src="img/admin.png" alt="BPPA">
          <h3>BPPA</h3>
        </a>
      </div>
      <div class="box">
        <a href="login_user.php" class="text-decoration-none">
          <img src="img/team.png" alt="User">
          <h3>USER</h3>
        </a>
      </div>
      <div class="box">
        <a href="login_pengarah.php" class="text-decoration-none">
          <img src="img/boss.png" alt="Pengarah">
          <h3>PENGARAH</h3>
        </a>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <div class="footer">
    ILP Kuala Langat Selangor &copy; 2024 Sistem Kerosakan Aset. All rights reserved.
  </div>

</body>
</html>
