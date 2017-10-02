$(document).ready(function () {

    /*Меню выбора языка*/
    $('.active-menu-language').on('click', function () {
        $('.list-language').toggle();
    });
    /* ================================ */

    /*Меню выбора страны*/
    $('.select-coutri button').on('click', function () {
        $('.list-coutri').toggle();
    });
    /* ================================ */

    /* Меняем картинку при наведение в галерее */
    $(".slider-init li a img").hover(function () {
        $('.swap-image').attr('src', $(this).attr('src').replace('thumb/', ''));
        $('.loupe img').attr('src', $(this).attr('src').replace('thumb/', ''));
    });

    var imgSwap = [];
    $(".thumbnails li a img").each(function () {
        imgUrl = this.src.replace('thumb/', '');
        imgSwap.push(imgUrl);
    });
    /* ================================ */

    /*Валидация формы регестрации*/
    $("#form-registr").validate({

        rules: {

            login: {
                required: true,
                minlength: 4,
                maxlength: 16,
            },

            password: {
                required: true,
                minlength: 5
            },
            password_confirm: {
                required: true,
                minlength: 5,
                equalTo: "#password"
            },
            email: {
                required: true,
                email: true
            }
        },

        messages: {

            login: {
                required: "Это поле обязательно для заполнения",
                minlength: "Логин должен быть минимум 4 символа",
                maxlength: "Максимальное число символо - 16",
            },

            password: {
                required: "Это поле обязательно для заполнения",
                minlength: jQuery.validator.format("Пароль должен быть минимум {0} символа")
            },

            password_confirm: {
                required: "Повторите пароль",
                minlength: jQuery.validator.format("Пароль должен быть минимум {0} символа"),
                equalTo: "Пароли не совпадают"
            },

            email: {
                required: "Это поле обязательно для заполнения",
                email: "Email введен неправильно",
            },

        }

    });
    /* ================================ */

    /*Валидация формы смена пароля*/
    $("#change_password_account").validate({

        rules: {

            new_password: {
                required: true,
                minlength: 5
            },
            new_password_confirm: {
                required: true,
                minlength: 5,
                equalTo: "#new_password"
            }
        },

        messages: {

            new_password: {
                required: "Это поле обязательно для заполнения",
                minlength: jQuery.validator.format("Пароль должен быть минимум {0} символа")
            },

            new_password_confirm: {
                required: "Повторите пароль",
                minlength: jQuery.validator.format("Пароль должен быть минимум {0} символа"),
                equalTo: "Пароли не совпадают"
            }

        }

    });
    /* ================================ */

});
/*
 $(imgSwap).preload();
 $.fn.preload = function() {
 this.each(function(){
 $('<img/>')[0].src = this;
 });
 };*/


var map;
var myLatLng = {lat: 48.465959, lng: 35.04817};
function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
        center: myLatLng,
        zoom: 17
    });

    var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        labelContent: "labelContent",
        title: 'г. Днепр, Европейская площадь, 4 ,\n' +
        'офис 424'
    });
}

