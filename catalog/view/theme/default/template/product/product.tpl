<?php echo $header; ?>

<div class="product-page">
    <?php echo $breadcrumbs; ?>
</div>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } ?>

        <div class="<?php echo $class; ?> main-product-info">
          <?php if ($thumb || $images) { ?>
            <?php if ($images) { ?>
              <div class="carousel-photo-product popap-slider">
                  <div class="bxslider">
                      <ul class="thumbnails slider-init">
                          <?php foreach ($images as $image) { ?>
                          <li>
                              <a href="<?php echo $image['popup']; ?>" class="thumbnail">
                                  <img src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>">
                              </a>
                          </li>
                          <?php } ?>
                      </ul>

                  </div>
              </div>
              <?php } ?>
              <div class="image-thumb-product">
                  <ul class="thumbnails ">
                      <?php if ($thumb) { ?>
                      <li>
                          <a class="thumbnail" href="<?php echo $popup; ?>" title="">
                              <img class="loupe_img swap-image" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>">
                          </a>
                      </li>
                      <?php } ?>
                  </ul>
              </div>
              <?php foreach ($products as $product) { ?>
                  <center>
                  <?php $attr_counter = ($product['special']) ? 3 : 4; ?>
                  <?php if($product['product_attributes']){ ?>
                  <?php $tmp_counter = 0; ?>
                  <div class="attributes-icon-product">
                      <?php foreach($product['product_attributes'] as $attr){ ?>
                      <?php if($attr_counter > $tmp_counter){ ?>
                              <div class="icon-title-characteristics">
                                  <span>
                                      <img class="" src="<?php echo $attr['image']; ?>" alt="<?php echo $attr['name']; ?>" title="<?php echo $attr['name']; ?>">
                                  </span>
                                  <p><?php echo $attr['name']; ?></p>
                              </div>
                          <?php } ?>
                      <?php } ?>
                      <?php if($product['special']){ ?>
                          <div class="icon-title-characteristics">
                              <span>
                                  <img class="" src="catalog/view/theme/default/images/attr/promo.png" alt="Скидка" title="Скидка">
                              </span>
                              <p>Скидка</p>
                          </div>
                      <?php } ?>
                  </div>
                      <?php $tmp_counter++; ?>
                  <?php } ?>
              </center>
            <?php } ?>
          <?php } ?>
        </div>

        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?> main-product-info">
            <div class="action-product-block">
                <h1 class="title-product-card">
                    <?php echo $heading_title; ?>
                </h1>
                <div class="cod-product-card">
                    <span><?php echo $text_model; ?> <?php echo $model; ?></span>
                </div>
                <div class="price-product-card">
                    <?php if (!$special) { ?>
                        <p class="price-new"><?php echo $price; ?></p>
                    <?php } else { ?>
                        <p class="price-new"><?php echo $special; ?></p>
                        <span class="price-old"><?php echo $price; ?></span>
                    <?php } ?>
                </div>
                <div class="button-group-end-onclick form-group" id="product">
                    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                    <button type="button" class="buy-product-card btn-block" id="button-cart" data-loading-text="<?php echo $text_loading; ?>"><?php echo $button_cart; ?></button>
                    <button type="button" class="buy-onclick-product-card" data-toggle="modal" data-target="#order">
                        Купить в один клик
                        <i class="material-icons">add_shopping_cart</i>
                    </button>
                </div>
                <div class="button-group-compare-whitelist">
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');">
                        <i class="fa fa-heart-o" aria-hidden="true"></i>
                        В избранное
                    </button>
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');" >
                        <i class="material-icons">compare</i>
                        К сравнению
                    </button>
                    <?php if ($minimum > 1) { ?>
                        <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
                    <?php } ?>
                </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="separator"></div>
<div class="container">
    <div class="proposition-module">
            <span class="title-module">
                Вместе дешевле
            </span>
        <div class="proposition-content">
            <div class="proposition-product">
                <a href="#">
                    <img src="img/img_1.jpg" alt="" title="">
                </a>
                <a href="#" class="product-title">Солнечные батарея 1</a>

                <span class="cod-product">Код: 193284 KH</span>
                <p class="price-product">39 000.99 грн</p>

                <div class="block-icon-characteristics">
                    <div class="icon-title-characteristics">
                        <span class="icon-season"></span>
                        <p>Сезонность</p>
                    </div>
                    <div class="icon-title-characteristics">
                        <span class="icon-flat"></span>
                        <p>Heat pipe</p>
                    </div>
                    <div class="icon-title-characteristics">
                        <span class="icon-active"></span>
                        <p>Активный</p>
                    </div>
                    <div class="icon-title-characteristics">
                        <span class="icon-shipping"></span>
                        <p>Бесплатная доставка</p>
                    </div>
                </div>
            </div>
            <div class="proposition-product">
                <a href="#">
                    <img src="img/product3.jpg" alt="" title="">
                </a>
                <a href="#" class="product-title">Солнечные батарея 2</a>

                <span class="cod-product">Код: 193284 KH</span>
                <p class="price-product">59 000.99 грн</p>

                <div class="block-icon-characteristics">
                    <div class="icon-title-characteristics">
                        <span class="icon-season"></span>
                        <p>Сезонность</p>
                    </div>
                    <div class="icon-title-characteristics">
                        <span class="icon-active"></span>
                        <p>Активный</p>
                    </div>
                    <div class="icon-title-characteristics">
                        <span class="icon-discount"></span>
                        <p>Акция</p>
                    </div>
                </div>
            </div>
            <div class="proposition-price">
                <p class="title-price-complect">Цена за комплект</p>
                <div class="proposition-price-discount">
                    <p>49 999.00 грн</p>
                    <span>59 000.99 грн</span>
                </div>
                <div class="button-proposition-buy">
                    <button type="button">Купить</button>
                </div>
            </div>
        </div>
    </div>
</div>
        <div class="tabs-product">
            <div class="tabs-block">
                <div class="container">
                    <ul class="nav nav-tabs tatb-style-product">
                        <li class="active"><a data-toggle="tab" href="#desc">Описание</a></li>
                        <li><a data-toggle="tab" href="#xaractiristics">Характеристика</a></li>
                        <li><a data-toggle="tab" href="#photovideo">Фото и видео</a></li>
                        <li><a data-toggle="tab" href="#questions">Вопросы</a></li>
                        <li><a data-toggle="tab" href="#accessories">Комплектующие</a></li>
                        <li><a data-toggle="tab" href="#documentation">Техническая документация</a></li>
                    </ul>
                </div>
            </div>
            <div class="container">
                <div class="row">
            <div class="tab-content tab-content-product">
                <div id="desc" class="tab-pane fade in active">
                    <div class="content-bg-tab grey">
                        <div class="container">
                            <span class="title-tab-desc">Описание</span>
                            <p>
                                <?php echo $description; ?>
                            </p>
                        </div>
                    </div>
                </div>
                <div id="xaractiristics" class="tab-pane fade">
                    <div class="container">
                        <div class="col-md-6">
                            <div class="image-characteristics">
                                <img  src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="characteristics-table">
                                <span class="title-tab-desc">Характеристики</span>
                                <table>
                                    <tbody>
                                    <?php foreach ($attribute_groups as $attribute_group) { ?>
                                    <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                                    <tr>
                                        <td class="left-td-characteristics"><?php echo $attribute['name']; ?>:</td>
                                        <td class="right-td-characteristics"><?php echo $attribute['text']; ?></td>
                                    </tr>
                                    <?php } ?>
                                    <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="photovideo" class="tab-pane fade">
                    <div class="container">
                        <div class="photo-video-tabs">
                            <?php foreach ($images as $image) { ?>
                                <a href="<?php echo $image['popup']; ?>" class="thumbnail">
                                    <img src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>">
                                </a>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <div id="questions" class="tab-pane fade">
                    <div class="container">
                        <span class="title-tab-desc">Вопросы</span>

                        <div class="questions-reply-block">
                            <div class="questions-block">
                                <div class="header-questions">
                                    <span class="title-questions">Вопрос</span>
                                    <span class="name-author-questions">Виктория</span>
                                </div>
                                <div class="content-questions">
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                        veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
                                        esse cillum dolore eu fugiat nulla pariatur.
                                    </p>
                                </div>
                            </div>
                            <div class="questions-block reply-block">
                                <div class="header-questions reply">
                                    <span class="title-questions reply">Ответ</span>
                                    <span class="name-author-questions reply">Александр</span>
                                </div>
                                <div class="content-questions">
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                        veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
                                        esse cillum dolore eu fugiat nulla pariatur.
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="questions-reply-block">
                            <div class="questions-block">
                                <div class="header-questions">
                                    <span class="title-questions">Вопрос</span>
                                    <span class="name-author-questions">Андрей</span>
                                </div>
                                <div class="content-questions">
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                        esse cillum dolore eu fugiat nulla pariatur.
                                    </p>
                                </div>
                            </div>
                            <div class="questions-block reply-block">
                                <div class="header-questions reply">
                                    <span class="title-questions reply">Ответ</span>
                                    <span class="name-author-questions reply">Евгений</span>
                                </div>
                                <div class="content-questions">
                                    <p>
                                        amco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
                                        esse cillum dolore eu fugiat nulla pariatur.
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="button-add-question">
                            <button type="button">
                                Задать вопрос
                            </button>
                        </div>

                    </div>
                </div>
                <div id="accessories" class="tab-pane fade">
                    <div class="container">
                        <span class="title-tab-desc">Комплектующие</span>
                        <div class="list-product-accessories">
                            <div class="col-md-3">
                                <div class="accessories-cart">
                                    <a href="#">
                                        <img src="img/img_1.jpg" alt="" title="">
                                    </a>
                                    <a href="#" class="product-title">Солнечные батарея 1</a>
                                    <span class="cod-product">
                                        Код: 193284 KH
                                    </span>
                                    <p class="price-product">
                                        39 000.99 грн
                                    </p>
                                    <div class="block-icon-characteristics">
                                        <div class="icon-title-characteristics">
                                            <span class="icon-season"></span>
                                            <p>Сезонность</p>
                                        </div>
                                        <div class="icon-title-characteristics">
                                            <span class="icon-flat"></span>
                                            <p>Heat pipe</p>
                                        </div>
                                        <div class="icon-title-characteristics">
                                            <span class="icon-active"></span>
                                            <p>Активный</p>
                                        </div>
                                        <div class="icon-title-characteristics">
                                            <span class="icon-shipping"></span>
                                            <p>Бесплатная доставка</p>
                                        </div>
                                    </div>
                                    <div class="button-add-accessories">
                                        <button type="button" class="add-cart-accessories">
                                            Добавить к заказу
                                            <i class="material-icons">add_shopping_cart</i>
                                        </button>
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="accessories-cart">
                                    <a href="#">
                                        <img src="img/img_1.jpg" alt="" title="">
                                    </a>
                                    <a href="#" class="product-title">Солнечные батарея 1</a>
                                    <span class="cod-product">
                                        Код: 193284 KH
                                    </span>
                                    <p class="price-product">
                                        39 000.99 грн
                                    </p>
                                    <div class="block-icon-characteristics">
                                        <div class="icon-title-characteristics">
                                            <span class="icon-season"></span>
                                            <p>Сезонность</p>
                                        </div>
                                        <div class="icon-title-characteristics">
                                            <span class="icon-flat"></span>
                                            <p>Heat pipe</p>
                                        </div>
                                        <div class="icon-title-characteristics">
                                            <span class="icon-active"></span>
                                            <p>Активный</p>
                                        </div>
                                        <div class="icon-title-characteristics">
                                            <span class="icon-shipping"></span>
                                            <p>Бесплатная доставка</p>
                                        </div>
                                    </div>
                                    <div class="button-add-accessories">
                                        <button type="button" class="add-cart-accessories" disabled>
                                            Добавлено
                                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                        </button>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="documentation" class="tab-pane fade">
                    <div class="container">

                    </div>
                </div>
            </div>
        </div>
        <?php echo $content_bottom; ?>
    </div>
</div>
<?php echo $column_right; ?>
<?php echo $footer; ?>
<script type="text/javascript">

</script>