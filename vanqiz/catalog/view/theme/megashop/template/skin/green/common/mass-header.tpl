<?php require( PAVO_THEME_DIR."/template/common/config_layout.tpl" );  ?>
<?php if( isset($breadcrumbs) ) { ?>
<div id="breadcrumb-lines"><div class="container">
	<ul class="breadcrumb">
	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
	<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
	<?php } ?>
	</ul>
</div></div>
<?php } ?>