<div class="breadcrumbs">
    <div class="container">
        <ul>
            <?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
                <?php if($i+1<count($breadcrumbs)) { ?>
                    <li>
                        <a href="<?php echo $breadcrumb['href']; ?>">
                            <span><?php echo $breadcrumb['text']; ?></span>
                        </a>
                    </li>
                <?php } else { ?>
                    <li class="active"><?php echo $breadcrumb['text']; ?></li>
                <?php } ?>
            <?php } ?>
        </ul>
    </div>
</div>