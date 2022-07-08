<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
            <img src="../../../public/assets/img/logo.png" class="bi me-2" width="50" height="50">
            <a class="navbar-brand" href="{{route('demo')}}">City news I-F</a>
            <button class="navbar-toggler shadow-lg" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="{{route('home')}}">Головна</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{route('news')}}">Остання переглянута новина</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="javascript: ShowWeather();">Погода</a>
                    </li>
                </ul>
                <div class="d-flex">
                    <input class="form-control me-2 shadow-lg" id="searchInput" type="search" placeholder="Шукати" aria-label="Напишіть текст для пошуку">
                    <a class="link-secondary" id="searchBtn" href="#">
                        <img id="search-img" src="public/assets/img/search.svg">
                    </a>
                    <a href="javascript: profileShow();" class="rounded-circle ms-2">
                        <img id="login-img" class="rounded-circle" src="public/assets/img/people.svg">
                    </a>
                </div>
            </div>
        </div>
    </nav>
</header>