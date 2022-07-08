$("#login-img").attr('src', $.cookie('user_image'));
$("#user_email").text($.cookie('user_email'));

let formData = new FormData();
let newsList = null;
let news = {
    title: "",
    date: "",
    img: [],
    description: "",
    all_text: ""
};

$.ajax({
    type: "GET",
    url: window.location.origin + '/api/admins/'+$.cookie('user_email'),
    contentType: false, processData: false, dataType: "json",
    success: function (response) {
        if (!response) {
            document.location.href = "/";
        }
    }
});

Start();
function Start() {
    $.ajax({
        type: "GET",
        url: window.location.origin+'/api/news',
        contentType: false, processData: false, dataType: "json",
        success: function (response) {
            response.forEach((value, index) => {
                value.img = JSON.parse(value.img);
                $("#List-News").append("<div class=\"col-md-6 my-1\"><div class=\"card bg-news text-center text-white\"><div class=\"card-header\"><h5 class=\"card-title\">"+value.title+"</h5></div><div class=\"card-body\"><img src=\""+value.img[0]+"\" class=\"bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto\"><span class=\"badge bg-primary rounded-pill\">"+value.date+"</span></div><div class=\"card-footer\"><a class=\"link-secondary me-3\" href=\"javascript: editNews('"+value.id+"');\"><img src=\"public/assets/img/edit.svg\"></a><a class=\"link-secondary\" href=\"javascript: deleteNews('"+value.id+"');\"><img src=\"public/assets/img/delete.svg\"></a></div></div></div>")
            })
            newsList = response;
        }
    });
    $.ajax({
        type: "GET",
        url: window.location.origin+'/api/admins',
        contentType: false, processData: false, dataType: "json",
        success: function (response) {
            response.forEach((value, index) => {
                $("#List-Administrators").append("<p class=\"d-flex align-items-center justify-content-between text-white text-decoration-none my-2\"><img id=\"login-img\" src=\"public/assets/img/people.svg\" width=\"32\" height=\"32\" class=\"rounded-circle me-2\"><strong>"+value.email+"</strong><a class=\"link-secondary\" href=\"javascript: deleteAdministrators('"+value.id+"');\"><img src=\"public/assets/img/delete.svg\"></a></p>")
            })
        }
    });
}

function addNews() {
    if(news.id){
        news = {
            title: "",
            date: "",
            img: [],
            description: "",
            all_text: ""
        };
    }
    viewNewsForm("add");
}

function addNewsImg(){
    newsSave();

    Swal.fire({
        title: 'Добавити зображення до новини',
        html: '<input id="news-img" class="swal2-input" placeholder="Зображення (URL)">',
        showCancelButton: true,
        confirmButtonText: 'Добавити',
        cancelButtonText: 'Скасувати',
        focusConfirm: false,
        preConfirm: () => {
            var img = $("#news-img").val();
            if (!img) {
                return false;
            }
            news.img.push(img);
            viewNewsForm("add");
        }
    })
}

function deleteNewsImg(index){
    news.img.splice(index, 1);
    if(news.id){
        viewNewsForm("edit");
    }else{
        viewNewsForm("add");
    }
}

function newsSave() {
    news.title = $("#news-name").val();
    news.description = $("#news-description").val();
    news.all_text = $("#news-all_text").val();
    news.date = $("#news-date").val();
}

function viewNewsForm(type) {
    confirmButtonText = "Добавити";
    title = "Добавити новину";
    if(type == "edit"){
        confirmButtonText = "Зберегти";
        title = "Редагувати новину";
    }

    Swal.fire({
        title: title,
        html:
            '<p><label for="news-name">Назва:</label></p>'+
            '<input id="news-name" class="swal2-input" placeholder="Назва новини" value="'+news.title+'">'+
            '<p><b>Всі зображення:</b></p>'+
            '<ol id="List-News-Img"></ol>'+
            '<a class="link-secondary" href="javascript: addNewsImg();">➕ Добавити зображення</a>'+
            '<p><label for="news-description">Опис:</label></p>'+
            '<input id="news-description" class="swal2-input" placeholder="Опис новини" value="'+news.description+'">'+
            '<p><label for="news-all_text">Текст:</label></p>'+
            '<textarea id="news-all_text" class="swal2-textarea" cols="25" placeholder="Весь текст новини">'+news.all_text+'</textarea>'+
            '<p><label for="news-date">Дата:</label></p>'+
            '<input id="news-date" class="swal2-input" placeholder="Дата новини" value="'+news.date+'">',
        focusConfirm: false,
        showCancelButton: true,
        confirmButtonText: confirmButtonText,
        cancelButtonText: 'Скасувати',
        preConfirm: () => {
            newsSave();
            if (!news.title || !news.description || !news.all_text || !news.date || !news.img) {
                Swal.fire({
                    icon: 'error',
                    title: 'Помилка!',
                    text: 'Не всі поля були заповнені. Будьласка заповніт їх!',
                })
                return false;
            }
            formData = new FormData();
            formData.append("title", news.title);
            formData.append("date", news.date);
            formData.append("img", JSON.stringify(news.img));
            formData.append("description", news.description);
            formData.append("all_text", news.all_text);

            if(type == "edit"){
                formData.append("methot", "edit");
                formData.append("id", news.id);
            }else{
                formData.append("methot", "add");
            }
            $.ajax({
                type: "POST",
                url: window.location.origin+'/api/news',
                contentType: false, processData: false, dataType: "json",
                data: formData,
                success: function (response) {
                    console.log(response);
                    if (response.res) {
                        Swal.fire({
                            position: 'top-end',
                            icon: 'success',
                            title: 'Новину добавлено!',
                            showConfirmButton: false,
                            timer: 1500
                        }).then((result) => {
                            if (result.dismiss === Swal.DismissReason.timer) {
                                location.reload();
                            }
                        })
                    }
                }
            });
        }
    })

    news.img.forEach((value, index) => {
        $("#List-News-Img").append("<li class=\"d-flex justify-content-between mb-1\"><img src=\""+value+"\" class=\"bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto\" style=\"height: 50px;\"><a class=\"link-secondary\" href=\"javascript: deleteNewsImg('"+index+"');\"><img src=\"public/assets/img/delete.svg\"></a></li>")
    })
}

function editNews(id){
    newsList.forEach((v, i) => {
        if(v.id == id){
            news = v;
            viewNewsForm("edit");
        }
    })
}

function deleteNews(id) {
    const swalWithBootstrapButtons = Swal.mixin({
        customClass: {
            confirmButton: 'btn btn-success',
            cancelButton: 'btn btn-danger'
        },
        buttonsStyling: false
    })
    swalWithBootstrapButtons.fire({
        title: 'Видалення новини',
        text: "Ви дійсно хочете видалити дану новину?",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Так!',
        cancelButtonText: 'Ні!',
        reverseButtons: true
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                type: "DELETE",
                url: window.location.origin+'/api/news/'+id,
                contentType: false, processData: false, dataType: "json",
                success: function (response) {
                    if (response.res) {
                        swalWithBootstrapButtons.fire(
                            'Новину видалено',
                            'Успішно видалено новину!',
                            'success'
                        ).then((result) => {
                            location.reload();
                        })
                    } else {
                        swalWithBootstrapButtons.fire(
                            'Сталася помилка',
                            'Новину не було видалено!',
                            'error'
                        )
                    }
                }
            });
        } else if (result.dismiss === Swal.DismissReason.cancel) {
            swalWithBootstrapButtons.fire(
                'Відміна',
                'Новину не було видалено, ви її зберегли ;)',
                'error'
            )
        }
    })
}

function addAdministrators(){
    Swal.fire({
        title: 'Добавити адміністратора',
        html: '<input id="swal-administrators" class="swal2-input" placeholder="Email">',
        focusConfirm: false,
        preConfirm: () => {
            var email = $("#swal-administrators").val();
            if (!email) {
                return false;
            }
            formData = new FormData();
            formData.append("email", email);
            $.ajax({
                type: "POST",
                url: window.location.origin+'/api/admins',
                contentType: false, processData: false, dataType: "json",
                data: formData,
                success: function (response) {
                    if (response.res) {
                        Swal.fire({
                            position: 'top-end',
                            icon: 'success',
                            title: 'Адміністратора будо добавлено!',
                            showConfirmButton: false,
                            timer: 1500
                        }).then((result) => {
                            if (result.dismiss === Swal.DismissReason.timer) {
                                location.reload();
                            }
                        })
                    } else {
                        Swal.fire({
                            position: 'top-end',
                            icon: 'error',
                            title: 'Адміністратора не було добавлено! Можливо такий уже присутній.',
                            showConfirmButton: false,
                            timer: 1500
                        })
                    }
                }
            });
        }
    })
}

function deleteAdministrators(id){
    const swalWithBootstrapButtons = Swal.mixin({
        customClass: {
            confirmButton: 'btn btn-success',
            cancelButton: 'btn btn-danger'
        },
        buttonsStyling: false
    })
    swalWithBootstrapButtons.fire({
        title: 'Видалення адміністратора',
        text: "Ви дійсно хочете видалити даного адміністратора?",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Так!',
        cancelButtonText: 'Ні!',
        reverseButtons: true
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                type: "DELETE",
                url: window.location.origin+'/api/admins/'+id,
                contentType: false, processData: false, dataType: "json",
                success: function (response) {
                    if (response.res) {
                        swalWithBootstrapButtons.fire(
                            'Адміністратора видалено!',
                            'Успішно видалено адміністратора',
                            'success'
                        ).then((result) => {
                            location.reload();
                        })
                    } else {
                        swalWithBootstrapButtons.fire(
                            'Сталася помилка',
                            'Адміністратора не було видалено!',
                            'error'
                        )
                    }
                }
            });
        }
    })
}