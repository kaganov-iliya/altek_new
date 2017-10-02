<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Altek">
    <meta name="keywords" content="Altek">
    <meta name="author" content="Altek">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"><base href="<?php echo $base; ?>" />
    <title><?php echo $title;  ?></title>
    <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>
    <?php if ($keywords) { ?>
        <meta name="keywords" content= "<?php echo $keywords; ?>" />
    <?php } ?>
    <meta property="og:title" content="<?php echo $title; ?>" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="<?php echo $og_url; ?>" />
    <?php if ($og_image) { ?>
        <meta property="og:image" content="<?php echo $og_image; ?>" />
    <?php } else { ?>
        <meta property="og:image" content="<?php echo $logo; ?>" />
    <?php } ?>
    <meta property="og:site_name" content="<?php echo $name; ?>" />

    <script src="catalog/view/javascript/plugin/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/mf/jquery-ui.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/plugin/bootstrap.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/main.js" type="text/javascript"></script>

    <!--    <script async src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDK2Rbh3nnU8hXp7Ov9ps1TOGwxsRSxnI8&callback=initMap" type="text/javascript"></script>-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <?php foreach ($styles as $style) { ?>
        <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
    <?php } ?>
    <?php foreach ($links as $link) { ?>
        <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
    <?php } ?>
    <?php foreach ($scripts as $script) { ?>
        <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
</head>
<body class="category">
<header>
    <div class="container">
        <div class="logo-header">
            <?php if ($logo) { ?>
                <?php if ($home == $og_url) { ?>
                    <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
                <?php } else { ?>
                    <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
                <?php } ?>
            <?php } else { ?>
                <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
            <?php } ?>
        </div>
        <div class="button-menu-cart">
            <button type="button" class="menu-hover">
                Интернет-магазин
            </button>
            <button type="button" class="modal-cart">
                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                <span class="number-cart-product">4</span>
            </button>
        </div>
        <div class="top-navigation">
            <ul>
                <li>
                    <a href="#">О компании</a>
                </li>
                <li>
                    <a href="#">Документация</a>
                </li>
                <li>
                    <a href="#">Новости</a>
                </li>
                <li>
                    <a href="#">Услуги</a>
                </li>
                <li>
                    <a href="#">Вакансии</a>
                </li>
                <li>
                    <a href="#">Контакты</a>
                </li>
            </ul>
        </div>
        <div class="header-login">
            <button type="button">Кабинет</button>
        </div>
        <?php echo $language; ?>
    </div>
</header>