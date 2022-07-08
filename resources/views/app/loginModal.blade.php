<div class="modal fade text-white" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" style="display: none;" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content bg-dark">
      <div class="modal-header">
        <h5 class="modal-title h4" id="loginModalLabel">Google Авторизація</h5>
        <button class="btn btn_hiden" data-bs-dismiss="modal" aria-label="Close">
          <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="red" class="bi bi-x-lg" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M13.854 2.146a.5.5 0 0 1 0 .708l-11 11a.5.5 0 0 1-.708-.708l11-11a.5.5 0 0 1 .708 0Z"></path>
            <path fill-rule="evenodd" d="M2.146 2.146a.5.5 0 0 0 0 .708l11 11a.5.5 0 0 0 .708-.708l-11-11a.5.5 0 0 0-.708 0Z"></path>
          </svg>
        </button>
      </div>
      <div class="modal-body text-center">
        <div id="login-button-container" class="container d-flex justify-content-center">
          <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark" style="margin-top:150px;"></div>
        </div>
        <div id="profileContent">
          <img id="profile-img" class="rounded-circle" src="public/assets/img/people.svg">
          <h1 id="profile-name">Full Name</h1>
          <a id="profile-email" class="fw-bold" target="_blanck" href="">Email</a>
          <br><br><br>
          <a class="btn btn-secondary" href="#" onclick="signOut();">Вийти з профілю</a>
          <br>
        </div>
      </div>
    </div>
  </div>
</div>