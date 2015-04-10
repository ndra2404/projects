
<div class="widget-html box <?php echo $addition_cls ?>  <?php if( isset($stylecls)&&$stylecls ) { ?>box-<?php echo $stylecls;?><?php } ?>">
	<?php if( isset($widget_heading)&&!empty($widget_heading) ){ ?>
	<div class="widget-heading box-heading">
		<?php echo $widget_heading; ?>
	</div>
	<?php } ?>
	<div class="widget-inner box-content clearfix">
		 <?php echo htmlspecialchars_decode( $html ); ?>
	</div>
</div>
