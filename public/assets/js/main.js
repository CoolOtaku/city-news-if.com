jQuery.isSubstring = function(haystack, needle) {
  return haystack.indexOf(needle) !== -1;
};

$("#profileContent").hide();

function goToNews(id){
  $.cookie('news_id', id);
  window.location.href = window.location.origin+"/news";
}

$("#searchBtn").click(function() {
  $("#searchList").empty();
  var isEmpty = true;
  var searchText = $("#searchInput").val();
  if(searchText !== "") {
    $.ajax({
      type: "GET",
      url: window.location.origin+'/api/news',
      contentType: false,processData: false,dataType: "json",
      success: function(response) {
        response.forEach((v, i) => {
          var isContains = false;
          if($.isSubstring(v.title,searchText) || $.isSubstring(v.date,searchText) || $.isSubstring(v.description,searchText) 
          || $.isSubstring(v.all_text,searchText)){
            isContains = true;
            isEmpty = false;
          }
          if(isContains){
            var img = JSON.parse(v.img);
            $("#searchList").append("<div class=\"col-md-12 mb-2\"><div class=\"row featurette rounded-3 bg-news\"><div class=\"col-md-7 order-md-2\"><h2 class=\"featurette-heading\">"+v.title+"<br><span class=\"text-muted\"> Дата: "+v.date+"</span></h2></div><div class=\"col-md-5 order-md-1\"><img src=\""+img[0]+"\" class=\"bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto\" width=\"500\"><a class=\"btn btn-secondary d-flex justify-content-center my-4\" href=\"javascript: goToNews('"+i+"')\">Переглянути детальніше »</a></div></div></div>");
          }
        })
        if(isEmpty){
          $("#searchList").append("<h3 class=\"text-center text-white\">Нічого не знайдено!</h3>");
        }
        $('#searchModal').modal('show')
      }
    });
  }
});

function ShowWeather (){
  var myOffcanvas = $('#weather_panel');
  var bsOffcanvas = new bootstrap.Offcanvas(myOffcanvas);
  bsOffcanvas.show();
}

function profileShow(){
  $('#loginModal').modal('show')
}

function onSignIn(googleUser) {
  var profile = googleUser.getBasicProfile();
  if (!profile.getId()) {
    Swal.fire({
      icon: 'error',
      title: data.title,
      text: data.res
    })
  } else {
    $.cookie('user_id', profile.getId());
    $.cookie('user_full_name', profile.getName());
    $.cookie('user_image', profile.getImageUrl());
    $.cookie('user_email', profile.getEmail());
    loadUser();
  }
}

function loadUser() {
  if ($.cookie('user_id')) {
    $("#login-img").attr('src', $.cookie('user_image'));
    $("#loginModalLabel").text("Ваш профіль");
    $(".g-signin2").hide();
    $("#login-button-container").hide();
    $("#profileContent").show();
    $("#profile-img").attr('src', $.cookie('user_image'));
    $("#profile-name").text($.cookie('user_full_name'));
    $("#profile-email").text($.cookie('user_email'));
    $("#profile-email").attr('href', "mailto:"+$.cookie('user_email'));

    $.ajax({
      type: "GET",
      url: window.location.origin+'/api/admins/'+$.cookie('user_email'),
      contentType: false,processData: false,dataType: "json",
      success: function(response) {
        if(response){
          $("#profileContent").append("<br><a href=\"/admin\"><img src=\"public/assets/img/wrench_adjustable.svg\"><p class=\"text-primary text-center fw-bold\">Адмін - панель</p></a>")
        }
      }
    });
  }
}

function signOut() {
  Swal.fire({
      title: 'Вихід з профілю',
      text: "Ви дійсно хочете вийти з профілю?",
      icon: 'question',
      showCancelButton: true,
      cancelButtonText: 'Ні',
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Так'
    }).then((result) => {
      if (result.isConfirmed) {
          var auth2 = gapi.auth2.getAuthInstance();
          auth2.signOut().then(function() {
              $.cookie('user_id', "");
              $.cookie('user_full_name', "");
              $.cookie('user_image', "");
              $.cookie('user_email', "");
              document.location.href = "/";
          });
      }
    })
}