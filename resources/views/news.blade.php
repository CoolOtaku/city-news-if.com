<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Перегляд новини</title>

  @include('app.favicons')
  
  @include('app.fonts')

  @include('res.google_login')

  <!-- CSS -->
  @include('res.css')
  
  <link rel="stylesheet" type="text/css" href="../../../public/assets/css/news.css">

</head>

<body>

  @include('app.header')

  <main>
    <div class="px-4 py-5 text-center">
      <h1 class="display-5 fw-bold text-white" id="title">Title</h1>
      <div class="col-lg-6 mx-auto">
        <p class="lead mb-4" id="description">Description</p>
      </div>
    </div>
    <div сlass="container my-4 p-3">
      <div id="img-silider" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner" id="slider">
          <!-- Load data on API -->
        </div>
        <button class="carousel-control-prev text-black" type="button" data-bs-target="#img-silider" data-bs-slide="prev">
          <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-arrow-left-circle-fill" viewBox="0 0 40 40">
            <path d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0zm3.5 7.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z" />
          </svg>
          <span class="visually-hidden">Попередня</span>
        </button>
        <button class="carousel-control-next text-black" type="button" data-bs-target="#img-silider" data-bs-slide="next">
          <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-arrow-right-circle-fill" viewBox="0 0 40 40">
            <path d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z" />
          </svg>
          <span class="visually-hidden">Наступна</span>
        </button>
      </div>
    </div>
    <div class="container my-4 text-white" id="all-text">
      <!-- Load data on API -->
    </div>

  </main>

  @include('app.footer')

  @include('app.searchModal')

  @include('app.loginModal')

  @include('app.weather_panel')

  @include('app.pre_loader')

  <!-- JS -->
  @include('res.js')

  <script src="../../../public/assets/js/news.js" type="text/javascript"></script>

</body>

</html>