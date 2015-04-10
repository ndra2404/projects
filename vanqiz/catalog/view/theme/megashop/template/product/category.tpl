<?php 
 $helper =  ThemeControlHelper::getInstance( $this->registry );
echo $header; ?>
<div class="container">

  <?php require( PAVO_THEME_DIR."/template/common/config_layout.tpl" );  ?>
  <?php require( PAVO_THEME_DIR."/template/common/breadcrumb.tpl" );  ?>
  <div class="row">
      <?php if( $SPAN[0] ): ?>
			<aside id="sidebar-left" class="col-md-<?php echo $SPAN[0];?>">
				<?php echo $column_left; ?>
			</aside>	
	  <?php endif; ?>
       <section id="sidebar-main" class="col-md-<?php echo $SPAN[1];?>">
          <div id="content"><?php echo $content_top; ?>
              <h1 class="heading-category"><?php echo $heading_title; ?></h1>
              <?php if ($thumb || $description) { ?>
              <div class="box category-info ">
                    <div class="image">
                        <?php if ($thumb) { ?>
                        <img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-responsive" />
                        <?php } ?>
                    </div>
                    <div class="category-description">
                        <?php if ($description) { ?>
                        <?php echo $description; ?>
                        <?php } ?>
                    </div>
              </div>

              <?php } ?>
              <?php if ($categories) { ?>
                  <div class="box refine-search clearfix">
                        <div class="box-heading">
                          <span><?php echo $text_refine; ?></span>
                        </div>
                        <div class="category-list box-content clearfix ">
                            <?php if (count($categories) <= 5) { ?>
                            <ul>
                              <?php foreach ($categories as $category) { ?>
                              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                              <?php } ?>
                            </ul>
                            <?php } else { ?>
                            <div class="row">
                            <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
                            <div class="col-sm-3">
                            <ul>
                              <?php foreach ($categories as $category) { ?>
                              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                              <?php } ?>
                            </ul>
                            </div>
                            <?php } ?>
                            </div>
                            <?php } ?>
                        </div>
                 </div>
              <?php } ?>
              <?php if ($products) { ?>
              <?php require( ThemeControlHelper::getLayoutPath( 'common/product_collection.tpl' ) );  ?>
              <?php } ?>

                    <?php if (!$categories && !$products) { ?>
                    <div class="content"><div class="wrapper clearfix"><?php echo $text_empty; ?></div></div>
                    <div class="buttons">
                        <div class="right"><a href="<?php echo $continue; ?>" class="button btn btn-default"><?php echo $button_continue; ?></a></div>
                    </div>
                    <?php } ?>
                    <?php echo $content_bottom; ?>
          </div>
       </section>
  </div>
<?php if( $SPAN[2] ): ?>
	<aside id="sidebar-right" class="col-md-<?php echo $SPAN[2];?>">	
		<?php echo $column_right; ?>
	</aside>
<?php endif; ?>
</div>
<?php echo $footer; ?>