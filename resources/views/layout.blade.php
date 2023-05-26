<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="home_css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">

  <style>
      .navbar {
      background-color: #f8f8f8;
      overflow: hidden;
    }

    .navbar a {
      float: left;
      display: block;
      color: #333;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
      font-size: 16px;
    }

    .navbar a:hover {
      background-color: #ddd;
      color: rgb(157, 201, 209);
    }

    .navbar .logo {
      float: left;
    }

    .navbar .logo img {
      height: 70px;
      width: auto;
      margin-top: 2px;
      margin-bottom: 2px;
      margin-left: 0px;
    }
    </style>
</head>
<!DOCTYPE html>
<html>
<head>
    <title>Aplikasi Saya</title>
    <!-- Tambahkan link CSS atau script JavaScript yang diperlukan -->
</head>
<body>
    <!-- Bagian header -->
    <header>
        <nav>
          <div class="navbar">
            <div class="logo">
              <a href="#"><img src="https://play-lh.googleusercontent.com/76ILE4cZaFJbKOTGT3efflPrpvo1m-x1ijNoE8Q1uSYIJHOvyvtRE9HojE3vEhCXPDke" alt="Logo"></a>
            </div>
            
            <nav class="navbar navbar-expand-lg bg-body-tertiary bg-primary p-2">
              <div class="container-fluid">
                <a href="home">Home</a>
                <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    
                  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                      <a href="">Kriteria</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link">Data Makanan anak</a>
                    </li>
                    <li class="nav-item">
                      <a href="formku">Seleksi Wp</a>
                    </li>
                  </ul>
    
                  <form class="d-flex" role="search">
                    <input class="form-control me-20" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                  </form>
                </div>
              </div>
            </nav>
        </nav>
    </header>
    
    <!-- Bagian konten -->
    <div class="container">
        @yield('content')
    </div>
    
    <!-- Bagian footer -->
    <footer>
        <!-- Tambahkan elemen footer di sini -->
    </footer>
</body>
</html>


</html>