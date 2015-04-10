<?php $objlang = $this->registry->get('language');?>
<div id="pav-verticalmenu" class="pav-verticalmenu hasicon box box-highlighted hidden-xs">
	<div class="box-heading">
		<span><?php echo $objlang->get('text_catalog_menu'); ?></span>
	</div>
	<div class="box-content">
		<div id="verticalmenu" class="verticalmenus" role="navigation">
			<div class="navbar navbar-vertical">
					<a href="javascript:;" data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle">
						<span class="icon-bar"></span>
					</a>
					<div class="collapse navbar-collapse navbar-ex1-collapse">
						<?php echo $treemenu; ?>
					</div>
			</div>
		</div>
	</div>
</div>
