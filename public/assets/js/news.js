var id = $.cookie('news_id');
if(!id || id <= 0){
  id = 1;
}

$.ajax({
  type: "GET",
  url: window.location.origin+'/api/news/'+id,
  contentType: false,processData: false,dataType: "json",
  success: function(response) {
    $("#title").text(response.title);
    $("#description").text(response.description);
    var img = JSON.parse(response.img);
    $.each(img, function(i, v) {
      if(i == 0){
        $("#slider").append("<div class=\"carousel-item active\"><div style=\"background-image: url("+v+");\" class=\"d-block w-100\"></div></div>")
      }else{
        $("#slider").append("<div class=\"carousel-item\"><div style=\"background-image: url("+v+");\" class=\"d-block w-100\"></div></div>")
      }
    });
    $("#all-text").html(response.all_text);
  }
});