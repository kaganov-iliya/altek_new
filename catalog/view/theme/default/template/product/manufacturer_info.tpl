<?php echo $header; ?><?php if( ! empty( $mfilter_json ) ) { echo '<div id="mfilter-json" style="display:none">' . base64_encode( $mfilter_json ) . '</div>'; } ?>
    <div class="category-top-banner">
        <img class="position-banner" src="images/category/banner-category.jpg" alt="Водонагреватели" title="Водонагреватели">
        <div class="container">
            <div class="position-banner-text">
                <div class="title-category">
                    <h1>Водонагреватели</h1>
                </div>
                <div class="desc-category">
                    <h2>Nemo enim ipsam voluptatem quia<br>
                        voluptas sit aspernatur</h2>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="breadcrumbs">
        <div class="container">
            <ul>
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li> <a href="<?php echo $breadcrumb['href']; ?>"> <?php echo $breadcrumb['text']; ?> </a> </li>
                <?php } ?>
            </ul>
        </div>
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
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><div id="mfilter-content-container">
      <h1><?php echo $heading_title; ?></h1>
      <?php if ($description) { ?>
      <div class="row">
        <?php if ($thumb) { ?>
        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-10"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <hr>
      <?php } ?>
      <?php if ($products) { ?>
      <p><a href="<?php echo $compare; ?>" id="compare-total"> <?php echo $text_compare; ?></a></p>
      <div class="row">
        <div class="col-md-5 select-block-relative">
            <label class="control-label label-sort" for="input-sort"><?php echo $text_sort; ?></label>
            <div class="select-arrow-3"></div>
          <select id="input-sort" class="form-control select-sort" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
          <div class="col-md-5">
              <div class="search-product-icon"></div>
              <input type="text" class="search-product-filter" placeholder="Поиск по товару или артикулу">
          </div>
<!--        <div class="col-sm-1 text-right">
          <label class="control-label" for="input-limit"><?php /*echo $text_limit; */?></label>
        </div>
        <div class="col-sm-2 text-right">
          <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php /*foreach ($limits as $limits) { */?>
            <?php /*if ($limits['value'] == $limit) { */?>
            <option value="<?php /*echo $limits['href']; */?>" selected="selected"><?php /*echo $limits['text']; */?></option>
            <?php /*} else { */?>
            <option value="<?php /*echo $limits['href']; */?>"><?php /*echo $limits['text']; */?></option>
            <?php /*} */?>
            <?php /*} */?>
          </select>
        </div>-->
          <div class="col-md-2">
              <div class="btn-group hidden-xs sort-view-product-col">
                  <button type="button" id="list-view" class="btn btn-default sortable-product-list" data-toggle="tooltip" title="<?php echo $button_list; ?>">
                      <i class="fa fa-th-list" aria-hidden="true"></i>
                  </button>
                  <button type="button" id="grid-view" class="btn btn-default sortable-product-list" data-toggle="tooltip" title="<?php echo $button_grid; ?>">
                      <i class="fa fa-th" aria-hidden="true"></i>
                  </button>
              </div>
          </div>
      </div>
      <br />
      <div class="row">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12">
          <div class="product-thumb">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div class="caption">
              <h4><a href="<?php echo $product['href']; ?>" class="product-title"><?php echo $product['name']; ?></a></h4>
              <!--<p><?php /*echo $product['description']; */?></p>-->
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($product['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if ($product['price']) { ?>
              <p class="price">
                <?php if (!$product['special']) { ?>
                    <span class="price-new price-product"><?php echo $product['price']; ?></span>
                <?php } else { ?>
                    <span class="price-new price-product"><?php echo $product['special']; ?></span>
                    <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
                <?php /*if ($product['tax']) { */?><!--
                <span class="price-tax"><?php /*echo $text_tax; */?> <?php /*echo $product['tax']; */?></span>
                --><?php /*} */?>
              </p>
              <?php } ?>
            </div>
            <div class="button-group block-buy-product">
              <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <?php echo $button_cart; ?></button>
<!--              <button type="button" data-toggle="tooltip" title="<?php /*echo $button_wishlist; */?>" onclick="wishlist.add('<?php /*echo $product['product_id']; */?>');"><i class="fa fa-heart"></i></button>-->
              <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"> <i class="material-icons">equalizer</i></button>
            </div>
              <div class="product-list-grid">
                  <div class="caption">
                      <h4>
                          <a href="<?php echo $product['href']; ?>" class="product-title"><?php echo $product['name']; ?></a>
                      </h4>
                      <span class="cod-product">
                            Код: 193284 KH
                      </span>
                  </div>
                  <div class="captain-price-button">
                      <?php if ($product['price']) { ?>
                          <p class="price">
                              <?php if (!$product['special']) { ?>
                                  <span class="price-new price-product"><?php echo $product['price']; ?></span>
                              <?php } else { ?>
                                  <span class="price-new price-product"><?php echo $product['special']; ?></span>
                                  <span class="price-old"><?php echo $product['price']; ?></span>
                              <?php } ?>
                              <?php /*if ($product['tax']) { */?><!--
                <span class="price-tax"><?php /*echo $text_tax; */?> <?php /*echo $product['tax']; */?></span>
                --><?php /*} */?>
                          </p>
                      <?php } ?>
                      <div class="button-group block-buy-product">
                          <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');">
                              <i class="fa fa-shopping-cart"></i>
                              Купить
                          </button>
                          <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');">
                              <i class="material-icons">equalizer</i>
                          </button>
                      </div>
                  </div>
              </div>
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
                      <span class="icon-discount"></span>
                      <p>Скидка</p>
                  </div>
              </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
        </div><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>