<?php if ($products) { ?>	
<?php 	
$cols = 3;
$span = 12/$cols;
$themeConfig = (array)$config->get('themecontrol');
$listingConfig = array(
'category_pzoom'                     => 1,
'quickview'                          => 0,
'show_swap_image'                    => 0,
'product_layout'		             => 'default',
'enable_paneltool'	                 => 0
);
$listingConfig      = array_merge($listingConfig, $themeConfig );
$categoryPzoom 	    = $listingConfig['category_pzoom'];
$quickview          = $listingConfig['quickview'];
$swapimg            = $listingConfig['show_swap_image'];
$categoryPzoom      = isset($themeConfig['category_pzoom']) ? $themeConfig['category_pzoom']:0;
$theme              = $config->get('config_template');
if( $listingConfig['enable_paneltool'] && isset($_COOKIE[$theme.'_productlayout']) && $_COOKIE[$theme.'_productlayout'] ){
$listingConfig['product_layout'] = trim($_COOKIE[$theme.'_productlayout']);
}
$productLayout = DIR_TEMPLATE.$config->get('config_template').'/template/common/product/'.$listingConfig['product_layout'].'.tpl';
if( !is_file($productLayout) ){
$listingConfig['product_layout'] = 'default';
}
$productLayout = DIR_TEMPLATE.$config->get('config_template').'/template/common/product/'.$listingConfig['product_layout'].'.tpl';
?>
<div class="product-related box clearfix padding">
	<div class="box-heading"></span>
        <span><?php echo $heading_title; ?></span>
    </div>
	<div id="related" class="slide row-fluid box-content" data-interval="0">
		<?php if( count($products) > $cols ) { ?> 
	    <div class="carousel-controls">
	      <a class="carousel-control left fa fa-angle-left" href="#related" data-slide="prev"></a>
	      <a class="carousel-control right fa fa-angle-right" href="#related" data-slide="next"></a>
	    </div>
	    <?php } ?>
	<div class=" carousel-inner">
		<?php  $pages = array_chunk( $products, $cols);  ?>	
		  <?php foreach ($pages as  $k => $tproducts ) {   ?>
				<div class="item <?php if($k==0) {?>active<?php } ?>">
					<?php foreach( $tproducts as $i => $product ) {  $i=$i+1;?>
						<?php if( $i%$cols == 1 ) { ?>
						  <div class="row-fluid products-row">
						<?php } ?>
						<div class="col-lg-<?php echo $span;?> col-md-<?php echo $span;?> col-sm-6 col-xs-12 product-col">

                            <?php require( $productLayout );  ?>
						</div>
					  <?php if( $i%$cols == 0 || $i==count($tproducts) ) { ?>
						 </div>
						<?php } ?>
					<?php } //endforeach; ?>
				</div>
		  <?php } ?>		  
	</div>
</div>
</div>	
<?php } ?>