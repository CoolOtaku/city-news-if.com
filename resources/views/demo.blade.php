<!DOCTYPE html>
<html class="h-100">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>City news I-F Demo</title>

  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" type="text/css" href="../../../public/assets/css/bootstrap.css">

  @include('app.favicons')
  @include('app.fonts')

  <meta name="theme-color" content="#7952b3">

  <link rel="stylesheet" type="text/css" href="../../../public/assets/css/globuse.css">
  <style>
    .btn-secondary,
    .btn-secondary:hover,
    .btn-secondary:focus {
      color: #333;
      text-shadow: none;
    }
  </style>

</head>

<body class="d-flex h-100 text-center text-white bg-dark">

  <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <div class="container">
      <div class="globe-container">
        <div class="globe">
          <div class="globe-sphere"></div>
          <div class="globe-outer-shadow"></div>
          <div class="globe-worldmap">
            <div class="globe-worldmap-back"></div>
            <div class="globe-worldmap-front"></div>
          </div>
          <div class="globe-inner-shadow"></div>
        </div>
      </div>
    </div>
    <main class="px-3">
      <h1>City news I-F</h1>
      <p class="lead">Сайт новин міста Івано-Франківськ</p>
      <p class="lead">
        <a href="/" class="btn btn-lg btn-secondary fw-bold border-white bg-white">Перейти на головну</a>
      </p>
    </main>

    <footer class="mt-auto text-white-50">
      <p class="py-2">&copy; CoolOtaku &middot; <a href="https://github.com/CoolOtaku">Мій Github</a></p>
    </footer>
  </div>

</body>

</html>