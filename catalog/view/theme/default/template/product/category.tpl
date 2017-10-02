<?php echo $header; ?><?php if( ! empty( $mfilter_json ) ) { echo '<div id="mfilter-json" style="display:none">' . base64_encode( $mfilter_json ) . '</div>'; } ?>
    <div class="category-top-banner">
        <div class="container">
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
<?php echo $breadcrumbs; ?>

    <div class="category-content-filter">
        <div class="container">
            <?php echo $column_left; ?>
            <?php echo $content_top; ?>
            <div id="mfilter-content-container">

            </div>
            <?php echo $content_bottom; ?>
            <?php echo $column_right; ?>
        </div>
    </div>


<?php echo $footer; ?>