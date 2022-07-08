Start();
function Start(){
  $.ajax({
      type: "GET",
      url: window.location.origin+'/api/news',
      contentType: false,processData: false,dataType: "json",
      success: function(response) {
        response.forEach((value, index) => {
          var img = JSON.parse(value.img);
          if(index % 2 == 0){
            $("#news").append("<hr class=\"featurette-divider\"><div class=\"row featurette rounded-3 bg-news\"><div class=\"col-md-7\"><h2 class=\"featurette-heading\">"+value.title+"<br><span class=\"text-muted\"> Дата: "+value.date+"</span></h2><p class=\"lead\">"+value.description+"</p></div><div class=\"col-md-5\"><img src=\""+img[0]+"\" class=\"bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto\" width=\"500\"><a class=\"btn btn-secondary d-flex justify-content-center my-4\" href=\"javascript: goToNews('"+value.id+"')\">Переглянути детальніше »</a></div></div>")
          }else{
            $("#news").append("<hr class=\"featurette-divider\"><div class=\"row featurette rounded-3 bg-news\"><div class=\"col-md-7 order-md-2\"><h2 class=\"featurette-heading\">"+value.title+"<br><span class=\"text-muted\"> Дата: "+value.date+"</span></h2><p class=\"lead\">"+value.description+"</p></div><div class=\"col-md-5 order-md-1\"><img src=\""+img[0]+"\" class=\"bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto\" width=\"500\"><a class=\"btn btn-secondary d-flex justify-content-center my-4\" href=\"javascript: goToNews('"+value.id+"')\">Переглянути детальніше »</a></div></div>")
          }
        })
        $("#news").append("<hr class=\"featurette-divider\">")
      }
  });
}