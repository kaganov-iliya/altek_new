$(document).ready(function() {
/*    Слайдер карочки товара*/
    $('.bxslider').bxSlider({
        mode: 'vertical',
        slideWidth: 300,
        maxSlides: 5,
        slideMargin: 10,
        nextText: 'qwe',
        prevText: 'qwe',
        responsive: true,
        infiniteLoop: false,
        touchEnabled: true
    });
    /*===================================*/

    /*   фото товара*/
    $('.popap-slider').magnificPopup({
        delegate: 'a',
        type: 'image',
        tLoading: 'Loading image #%curr%...',
        mainClass: 'mfp-img-mobile',
        gallery: {
            enabled: true,
            navigateByImgClick: true,
            preload: [0,1]
        }
    });
    /*===================================*/

    /*   Таб фото-видео попап*/
    $('.photo-video-tabs').magnificPopup({
        delegate: 'a',
        type: 'image',
        tLoading: 'Loading image #%curr%...',
        mainClass: 'mfp-img-mobile',
        gallery: {
            enabled: true,
            navigateByImgClick: true,
            preload: [0,1]
        }
    });
    /*===================================*/
    /*   Карусель товаров*/
    $(".carousel-product-cart").owlCarousel({
        loop: false,
        margin: 40,
        items: 4,
        nav: true,
        navText: ["<i class='material-icons'>keyboard_arrow_left</i>", "<i class='material-icons'>keyboard_arrow_right</i>"],
        responsive: {
        0: {
            items: 1,
                nav: true
        },
        600: {
            items: 3,
                nav: false
        },
        1000: {
            items: 4,
                nav: true,
                loop: false,
        }
    }
    /*===================================*/
});
    $('.loupe_img').loupe();
    $("#phone").mask("+38 (999) 999-9999");


});