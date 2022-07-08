<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>City news I-F</title>

  @include('app.favicons')

  @include('app.fonts')

  @include('res.google_login')

  <!-- CSS -->
  @include('res.css')
  
  <link rel="stylesheet" type="text/css" href="../../../public/assets/css/home.css">
  
</head>

<body>

  @include('app.header')

  <main>

    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="bd-placeholder-img" width="100%" height="100%" src="../../../public/assets/img/slide2.jpg">
          <div class="container">
            <div class="carousel-caption bg-dark-2 rounded-3">
              <h1>City news I-F</h1>
              <p>Сайт новин міста Івано-Франківськ</p>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <img class="bd-placeholder-img" width="100%" height="100%" src="../../../public/assets/img/slide3.jpg">
          <div class="container">
            <div class="carousel-caption bg-dark-2 rounded-3">
              <p class="if-info">Івано-Франківськ – зовсім невелике і компактне місто, яке здається зовсім крихітним з висоти пташиного
                польоту. Але це взагалі не означає, що йому нема чим здивувати гостей і мандрівників. Насправді, щоб
                об’їхати всі цікаві околиці і дізнатися всі секрети міста, не вистачить однієї відпустки. Розповідаємо
                10 цікавих фактів про нього!</p>
              <div aria-label="Більше інформації">
                <div class="container-fluid justify-content-center ">
                  <button class="btn btn-primary" data-bs-toggle="collapse" data-bs-target="#moreInfo1" aria-controls="moreInfo1" aria-expanded="false" aria-label="більше інформації">Більше
                    інформації</button>
                  <div class="navbar-collapse collapse overflow-auto more-info-block" id="moreInfo1">
                    <ol class="text-start">
                      <li>Гуляючи по Івано-Франківську, ви часто будете зустрічати назви «Станіслав» або «Станіславів».
                        Справа в тому, що це стара назва міста, яку він носив з 1662 і загалом до 1962 року. Нову назву
                        на честь Івана Франка місто отримало 9 листопада 1962 року в честь свого 300-річного ювілею.
                      </li>
                      <li>Це лише часткова правда, що місто заснували в 1662 році. Поселення під назвою Княгиня і
                        Заболоття були на цій території набагато раніше.</li>
                      <li>Спочатку Івано-Франківськ будувався, як могутня фортеця. Містечко оточували дерев’яні стіни, а
                        потім – кам’яні оборонні споруди з земляним валом і ровом.</li>
                      <li>Івано-Франківська ратуша тільки на перший погляд здається типовою для Західної України.
                        Насправді вона побудована в стилі функціоналізм, і таких будинків по країні дуже мало. Причому
                        її зовнішній вигляд протягом історії змінювався чотири рази. Крім того, це єдина ратуша в Європі
                        із шоломоподібним позолоченим куполом.</li>
                      <li>Найдавніша частина Івано-Франківська – це площа Ринок, яка збереглася з заснування міста.
                        Колись це був центр шестикутної фортеці, у вигляді якої будували місто. До речі, колись вона
                        називалася площею Смерті, тому що саме тут проводилися страти. До сих пір збереглися легенди про
                        привидів опришків, які бродять по центральних будівлях.</li>
                      <li>У 1919 році Івано-Франківськ тимчасово став столицею ЗУНР. Процес був досить складний, адже в
                        основному столицею був Львів, пару місяців 1918 року – Тернопіль, а в 1919 році – Станіславів.
                        Хоча він носив почесне звання лише з січня до травня, саме тут приймалися найважливіші рішення,
                        але незабаром війська ЗУНР повинні були відступити за Збруч.</li>
                      <li>В Івано-Франківську є унікальний пам’ятник, аналогів якому немає в Європі. Це пам’ятник яйцю.
                      </li>
                      <li>Ходять чутки, що під центром міста ховається загадковий підземний лабіринт. Частину катакомб
                        будівельники вже одного разу знаходили. Але повністю підтвердити або спростувати легенду досі не
                        вдалося.</li>
                      <li>Найменша площа в місті – площа вулиці Івана Труша, яка налічує всього 360 квадратних метрів.
                        Довжина самої вулиці – трохи більше 60 метрів, а ширина – менше 6. Як ми і говорили,
                        Івано-Франківськ – дуже компактний! До речі, саме тому тут є деякі проблеми з громадським
                        транспортом. Щоб ви точно могли охопити все, що хочеться, ми пропонуємо підібрати підходящий
                        автомобіль в автопарку «Укр-Прокат» в <a href="https://ukr-prokat.com/orenda-avto/ivano-frankivsk">Івано-Франківську</a> і не
                        орієнтуватися на міську інфраструктуру.</li>
                      <li>Серед маленьких містечок Західної України Станіславів одним з перших отримав повноцінне
                        електропостачання. Перші лампочки на залізничному вокзалі запалили в 19 столітті. До речі, сам
                        вокзал тоді називали «Двірець».</li>
                    </ol>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <img class="bd-placeholder-img" width="100%" height="100%" src="../../../public/assets/img/slide1.png">
          <div class="container">
            <div class="carousel-caption bg-dark-2 rounded-3">
              <h1>Первинне призначення сайту</h1>
              <p>Сайт розроблявся як курсовий проект для ВПУ№21. <a href="https://vpu21.if.ua">Посилання на сайт
                  училища</a></p>
            </div>
          </div>
        </div>
      </div>
      <button class="carousel-control-prev text-black" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-arrow-left-circle-fill" viewBox="0 0 40 40">
          <path d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0zm3.5 7.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z" />
        </svg>
        <span class="visually-hidden">Попередня</span>
      </button>
      <button class="carousel-control-next text-black" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-arrow-right-circle-fill" viewBox="0 0 40 40">
          <path d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z" />
        </svg>
        <span class="visually-hidden">Наступна</span>
      </button>
    </div>

    <div id="news" class="container marketing">
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

  <script src="../../../public/assets/js/home.js" type="text/javascript"></script>
  
</body>

</html>