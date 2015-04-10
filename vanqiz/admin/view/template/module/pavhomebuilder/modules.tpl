<?php 
	echo $header; 
	echo $column_left;
?>

<div id="content">

	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">

				<a class="btn btn-primary" onclick="$('#form').submit();"><?php echo $button_save; ?></a>
				<a class="btn btn-success" onclick="$('#action').val('save_stay');$('#form').submit();"><?php echo $button_save_stay; ?></a>
				<a class="btn btn-danger" href="<?php echo $cancel; ?>"><?php echo $button_cancel; ?></a>

			</div>
			<h1><?php echo $heading_title; ?></h1>
			<ul class="breadcrumb">
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div><!-- End div#page-header -->

 
 	<div id="page-content" class="container-fluid">
		<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i>
			<?php echo $error_warning; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
		<?php } ?>
		<?php if (isset($success) && !empty($success)) { ?>
		<div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
		<?php } ?>

		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $subheading; ?></h3> <span></span>
			</div>
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
				<input type="hidden" name="pavhomebuilder_module[action]" id="action" value=""/>
				<input type="hidden" value="<?php echo $store_id;?>" name="pavhomebuilder_module[store_id]"/>

				<div class="panel-body">

					
					<!-- Multiple Store -->
					<div class="form-group row">
						<label class="col-sm-2 control-label" for="pavstores"><?php echo $objlang->get('entry_default_store'); ?></label>
						<div class="col-sm-10">
							<select class="form-control no-width" class="form-control" name="pavhomebuilder_module[stores]" id="pavstores" class="form-control">
								<?php foreach($stores as $store):?>
								<?php if($store['store_id'] == $store_id):?>
								<option value="<?php echo $store['store_id'];?>" selected="selected"><?php echo $store['name'];?></option>
								<?php else:?>
								<option value="<?php echo $store['store_id'];?>"><?php echo $store['name'];?></option>
								<?php endif;?>
								<?php endforeach;?>
							</select><br>
						</div>
					</div>
					


        <div id="screenview" class=""><div class="row">

             
               <div class="col-lg-3">  Design In 
                 <div class="btn-group button-alignments">
                    <button  class="btn btn-default active ptstooltip" data-option="large-screen" type="button" data-toggle="tooltip" data-placement="top" title="Large Devices, Wide Screens"><span class="fa fa-desktop"></span></button>
                    <button  class="btn btn-default ptstooltip" data-option="medium-screen" type="button" data-toggle="tooltip" data-placement="top" title="Medium Devices, Desktops"><span class="fa fa-laptop"></span></button>
                    <button   class="btn btn-default ptstooltip"  data-option="tablet-screen" type="button" data-toggle="tooltip" data-placement="top" title="Small Devices, Tablets"> <span class="fa fa-tablet"></span></button>
                    <button  class="btn btn-default ptstooltip"  data-option="mobile-screen"  type="button" data-toggle="tooltip" data-placement="top" title="Extra Small Devices, Phones"><span class="fa fa-mobile"></span> </button>
                  </div> 
                </div>
              
            
             	 <div class="col-md-3"><?php echo $olang->get('Enable Grid:');?> 
				    <div class="btn-group button-enablegrid">
				      <button  class="btn btn-default " onclick="$('.layout-builder').addClass('grid-editor');"  type="button"><span class="fa fa-check-square"></span></button>
				      <button  class="btn btn-default " onclick="$('.layout-builder').removeClass('grid-editor');"  type="button"><span class="fa fa-check-square-o"></span></button>
				    </div> 
				  </div>

				<div class="pull-right">
					<div id="btnocmanage" class="btn btn-info"><i class="fa fa-cubes"></i> <?php echo $olang->get('text_add_new_module'); ?></div>
				</div>	

            

           </div></div>
           	<hr>	
           		<?php if( $selectedid ){ ?>
           		<div class="pull-right">
           			<a href="<?php echo $action;?>&delete=1" class="remove btn btn-danger" ><span><i class="fa fa-remove"></i><?php echo $olang->get('text_edit_module'); ?></span></a>
           		</div>	
           		<?php } ?>
						<div role="tabpanel" id="bannermodule-tab">

							  <!-- Nav tabs -->
							  
							  <div class="row">
								  <ul class="nav nav-tabs" role="tablist">
								    <li <?php if( $selectedid ==0 ) { ?>class="active" <?php } ?>> <a href="<?php echo $link; ?>"> <span class="fa fa-plus"></span> <?php echo $olang->get('button_add_module');?></a></li>
								    <?php $i=1; foreach( $moduletabs as $key => $module ){ ?>
								    <li role="presentation" <?php if( $module['module_id']==$selectedid ) {?>class="active"<?php } ?>>
								    	<a href="<?php echo $link; ?>&module_id=<?php echo $module['module_id']?>" aria-controls="bannermodule-<?php echo $key; ?>"  >
								    		<span class="fa fa-pencil"></span> <?php echo $module['name']?>
								    	 </a>
								    	</li>
								    <?php $i++ ;} ?>
							 		
								  </ul>
						 
							  </div>
							  <!-- Tab panes -->
							  <div class="tab-content">
							  	<?php $i=1; foreach( $modules as $key => $module ){ ?>
							    <div role="tabpanel" class="tab-pane<?php if( $i==1){?> active<?php } ?>" id="bannermodule-<?php echo $key; $i++; ?>">

							    	<div class="form-group row">
											<label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
											<div class="col-sm-10">
												<select class="form-control no-width" class="form-control" name="pavhomebuilder_module[<?php echo $key;?>][status]" id="input-status" class="form-control">
													<?php if ( isset($module['status']) && $module['status'] ) { ?>
													<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
													<option value="0"><?php echo $text_disabled; ?></option>
													<?php } else { ?>
													<option value="1"><?php echo $text_enabled; ?></option>
													<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
													<?php } ?>
												</select><br>
											</div>

										</div>

									<div class="module-class form-group row">
							    		<label class="col-sm-2"><?php echo $olang->get('text_module_name');?></label>
							    		<div class="col-sm-10"><input class="form-control" name="pavhomebuilder_module[<?php echo $key;?>][name]" value="<?php if(isset($module['name'])){ echo $module['name']; }?>"></div>
							    	</div>	<hr>
							    	<div class="module-class form-group row">
							    		<label class="col-sm-2"><?php echo $olang->get('text_module_class');?></label>
							    		<div class="col-sm-10"><input class="form-control" name="pavhomebuilder_module[<?php echo $key;?>][class]" value="<?php if(isset($module['class'])){ echo $module['class']; }?>"></div>
							    	</div>	

							    	<hr>
									<div class="module-group" id="contentbannermodule<?php echo $key; ?>">
								 		<div class="layout-builder-wrapper">
								 			<div id="layout-builder<?php echo $key; ?>" class="layout-builder"></div>
								 			<div><textarea name="pavhomebuilder_module[<?php echo $key; ?>][layout]" class="hidden-content-layout hide"><?php echo $module['layout'];?></textarea></div>
								 		</div> 
									</div>	


							    </div>
	 							<?php } ?>


							  </div>

						</div>

				</div><!-- End div .panel-body -->
			</form>
		</div>
	</div><!-- End div#page-content -->

</div><!-- End div#content -->
 


     <div id="row-builder"  class="modal fade"><div class="modal-dialog"><div class="modal-content">

              <div class="modal-header">
            	<h4><?php echo $olang->get('Row Setting');?>   
            	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            </div>
              
                 <div class="modal-body clearfix">
	                     <form action="" name="frmrow">
	                        <div class="row-form">
	                           <div class="inpt-setting">
	                            <label><?php echo $olang->get('Class');?> : </label>
	                            <input class="form-control" type="text" name="cls" />
	                            </div>  
	                            <div class="inpt-setting fly-buttons">
	                            <label><?php echo $olang->get('Background Color');?>  </label>
	                            <input class="form-control input-color" type="text" name="bgcolor"  data-hex="true"/>
	                              </div>  
	                            <div class="inpt-setting fly-buttons input-image">
	                            <label><?php echo $olang->get('Image Background');?>: </label>
	                            <?php  $rand=time(); ?>
	                            <a href="" id="thumb-image<?php echo $rand;?>" data-toggle="image" class="img-thumbnail">
						   			<img src="" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" />
						   		</a>
				                  
	                              <input class="form-control" type="hidden" data-base="<?php echo HTTP_CATALOG.'image/'?>"  name="bgimage" id="uploadimage<?php echo $rand; ?>" class="imageuploaded"/>
	                              
	                            </div>  

	                             <div class="inpt-setting">
	                            <label><?php echo $olang->get('Fullwidth');?>: </label>
	                             <select class="form-control" name="fullwidth">
	                                <option value="1"><?php echo $olang->get('Yes'); ?></option>
	                                <option value="0"><?php echo $olang->get('No'); ?></option>
	                             </select>
	                            </div>

	                            <div class="inpt-setting">
	                            <label><?php echo $olang->get('Background Attachment');?>: </label>
	                             <select class="form-control" name="iattachment">
	                             	<option value="inherit"><?php echo $olang->get('Inherit'); ?></option>
	                                <option value="fixed"><?php echo $olang->get('Fixed'); ?></option>
	                                <option value="scroll"><?php echo $olang->get('scroll'); ?></option>
	                             </select>
	                            </div>

	                            <div class="inpt-setting">
	                            <label><?php echo $olang->get('Background Position');?>: </label>
	                             <select class="form-control" name="iposition">
	                                <option value="0 0"><?php echo $olang->get('Left Top'); ?></option>
	                                <option value="0 50%"><?php echo $olang->get('Left Center'); ?></option>
	                                <option value="0 50%"><?php echo $olang->get('Left Center'); ?></option>
	                                <option value="50% 50%"><?php echo $olang->get('Center Center'); ?></option>
	                                <option value="50% 0"><?php echo $olang->get('Center Top'); ?></option>
	                                <option value="100% 0"><?php echo $olang->get('Right Top'); ?></option>
	                                <option value="100% 50%"><?php echo $olang->get('Right Center'); ?></option>
	                                <option value="100% 100%"><?php echo $olang->get('Right Bottom'); ?></option>
	                             </select>
	                            </div>

	                            <div class="inpt-setting">
	                            <label><?php echo $olang->get('Parallax Style');?>: </label>
	                             <select class="form-control" name="parallax">
	                                <option value="1"><?php echo $olang->get('Yes'); ?></option>
	                                <option value="0"><?php echo $olang->get('No'); ?></option>
	                             </select>
	                            </div>

	                            <div class="inpt-setting">
	                            <label><?php echo $olang->get('Padding');?> : </label>
	                            <input class="form-control" type="text" name="padding" placeholder="10px 10px 10px 10px" />
	                            </div>  
	                              <div class="inpt-setting">
	                            <label><?php echo $olang->get('Margin');?> : </label>
	                            <input class="form-control" type="text" name="margin" placeholder="10px 10px 10px 10px" />
	                            </div>  

	                         
	                            <div class="inpt-setting">


	                                <label>
	                                    <?php echo $olang->get('Row Style');?>:
	                                     <select class="form-control" name="sfxcls">
	                                         <?php foreach ( $sfxclss['row'] as $clxrow ) { ?>
	                                            <option value="<?php echo $clxrow;?>"><?php echo $clxrow;?></option>
	                                         <?php } ?>
	                                     </select>
	                                 </label>
	                             </div> 
	                              <div class="inpt-setting">
	                              <button type="submit" class="btn btn-sm btn-primary"><?php echo $olang->get('Save');?></button>     
	                            </div>  
	                        </div>
	                       
	                      </form></div>
          </div></div></div>
        
    

  
          <div id="col-builder"  class="modal fade"><div class="modal-dialog"><div class="modal-content">
            <div class="modal-header">
            	<h4><?php echo $olang->get('Column Setting');?>   
            	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            </div>
           <div class="modal-body clearfix"><form action="" name="frmcol">
	                <div class="row-form ">
	                   <div class="inpt-setting">
	                      <label>
	                      <?php echo $olang->get('Addition Class:');?>
	                         <input class="form-control" type="text" name="cls" />
	                      </label>
	                    </div>  
	                   <div class="inpt-setting">
	                      <label>
	                      <?php echo $olang->get('Background Color');?>
	                       <input class="form-control input-color" type="text" name="bgcolor"   data-hex="true" />
	                       </label>
	                    </div>   
	                    <div class="inpt-setting fly-buttons input-image">
	                        <label><?php echo $olang->get('Image Background');?>: </label>
	                        <?php  $rand=time(); ?>
	                        <a href="" id="thumb-image<?php echo $rand;?>" data-toggle="image" class="img-thumbnail">
					   			<img src="" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" />
					   		</a>
			                  
	                          <input class="form-control" type="hidden" data-base="<?php echo HTTP_CATALOG.'image/'?>"  name="bgimage" id="uploadimage<?php echo $rand; ?>" class="imageuploaded"/>
                          
                        </div>  

	                      <div class="inpt-setting">
	                            <label><?php echo $olang->get('Background Attachment');?>: </label>
	                             <select class="form-control" name="iattachment">
	                             	<option value="inherit"><?php echo $olang->get('Inherit'); ?></option>
	                                <option value="fixed"><?php echo $olang->get('Fixed'); ?></option>
	                                <option value="scroll"><?php echo $olang->get('scroll'); ?></option>
	                             </select>
	                            </div>

	                            <div class="inpt-setting">
	                            <label><?php echo $olang->get('Background Position');?>: </label>
	                             <select class="form-control" name="iposition">
	                                <option value="0 0"><?php echo $olang->get('Left Top'); ?></option>
	                                <option value="0 50%"><?php echo $olang->get('Left Center'); ?></option>
	                                <option value="0 50%"><?php echo $olang->get('Left Center'); ?></option>
	                                <option value="50% 50%"><?php echo $olang->get('Center Center'); ?></option>
	                                <option value="50% 0"><?php echo $olang->get('Center Top'); ?></option>
	                                <option value="100% 0"><?php echo $olang->get('Right Top'); ?></option>
	                                <option value="100% 50%"><?php echo $olang->get('Right Center'); ?></option>
	                                <option value="100% 100%"><?php echo $olang->get('Right Bottom'); ?></option>
	                             </select>
	                            </div>
	                            
	                     <div class="inpt-setting">
	                        <label><?php echo $olang->get('Padding');?> : </label>
	                        <input class="form-control" type="text" name="padding" placeholder="10px 10px 10px 10px" />
	                        </div>  
	                          <div class="inpt-setting">
	                        <label><?php echo $olang->get('Margin');?> : </label>
	                        <input class="form-control" type="text" name="margin" placeholder="10px 10px 10px 10px" />
                        </div>  


	                    <div class="inpt-setting">
	                       <label>
	                        <?php echo $olang->get('Column Style');?>
	               

	                             <select class="form-control" name="sfxcls">
	                                 <?php foreach ( $sfxclss['col'] as $clxrow ) { ?>
	                                    <option value="<?php echo $clxrow;?>"><?php echo $clxrow;?></option>
	                                 <?php } ?>
	                             </select>

	                         </label>
	                     </div> 
	                     <div class="inpt-setting">
	                     <button type="submit" class="btn btn-primary"> <?php echo $olang->get('Save');?></button>  
	                     </div>  
	                </div>
	              
	            </form></div>
       </div></div></div>
      

 
       		<div id="modallistmodules" class="modal fade" ><div class="modal-dialog"><div class="modal-content">
				    <div class="modal-header">
		            	<h4><?php echo $olang->get('Column Setting');?>   
		            	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		            </div>
       				<div class="modal-body clearfix">
       						<div id="listmods">
       							<?php $i=0; foreach( $extensions as $key=>$ext ){ ?>
       							 <?php if( ++$i%3==1 ){ ?>
       							 <div class="row">
       							 <?php } ?>
       								<div class="col-sm-4 mod-widget">
       									<div class="mod-head"><?php echo strip_tags($ext['name']) ?></div>
       									<div class="mod-items">
       									  <?php foreach( $ext['module'] as $emod ){ ?>
       									  	<div class="mod-item wpo-ijwidget" data-module="<?php echo $emod['code'] ; ?>" data-type="module" data-name="<?php echo $emod['name'];?>">
       									  		<div class="w-inner">
	       									  		<h5><?php echo $emod['name'];?></h5>
	       									  		<p class="explan">( Code: <?php echo $emod['code'];?> )</p>
	       									  	</div>
	       									  	<div title="Edit" data-href="<?php echo $ourl->link('module/'.$key,'module_id='.$emod['id'].'&token='.$token);?>" data-module="<?php echo $key; ?>" data-placement="top" data-toggle="tooltip" class="wpo-wedit ptstooltip"></div>
	       									  	<div title="Delete" data-placement="top" data-toggle="tooltip" class="wpo-wdelete ptstooltip"></div>	
       									  	</div>
       										<?php } ?>
       									</div>
       									<?php // echo '<pre>'.print_r( $exts ,1 );die; ?>
       								</div>	

   								 <?php if(	$i%3==0 || $i == count($extensions) ){ ?>
       							 </div>
       							 <?php } ?>

       							<?php } ?>
       						</div>

       				</div>
       		</div></div>	</div>		
 



<div id="ocmodules" class="modal fade" ><div class="modal-dialog"><div class="modal-content"> 

	<div class="modal-header">
		<h4><?php echo $olang->get('Modules Management');?>   
		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		
	</div>
	<div class="modal-body clearfix">
			
	</div>
</div></div></div>	

<script type="text/javascript">  

$("#btnocmanage").click( function(){;
	var html  = '<iframe src="<?php echo $ifmocmod; ?>" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe>';
	$("#ocmodules .modal-body").html( html );

	$("#ocmodules").modal( 'hide' );
 
	$("#ocmodules iframe").load( function(){  
	 	  $('body', $('#ocmodules iframe').contents() ).find("#menu").remove();
	 	  $('body', $('#ocmodules iframe').contents() ).find("#header").remove();
	 	  $('body', $('#ocmodules iframe').contents() ).find("#footer,#column-left").remove();
 	      $('body', $('#ocmodules iframe').contents() ).find(".breadcrumb").remove();
 	       $("#ocmodules").modal( 'show' );
	} );

} );

$(".layout-builder-wrapper").each( function(){
	var config = { 
      	  urlwidgets:'',
          urlwidget:'',
          urlwidgetdata:'',
          imageurl : '<?php echo HTTP_CATALOG;?>/image/',
          placeholder:'<?php echo $placeholder; ?>'
      };
      $( $(".layout-builder", this) ).WPO_Layout( config, $(".hidden-content-layout",this).val() );
} );

$('#pavstores').bind('change', function () {
	url = 'index.php?route=module/pavhomebuilder&token=<?php echo $token; ?>';
	var id = $(this).val();
	if (id) {
		url += '&store_id=' + encodeURIComponent(id);
	}
	window.location = url;
});

 
 
$(".remove").click( function(){
	 if( confirm('Are you sure to remove this?') ){
	 	$(this).parent().parent().remove();
 		$($(this).parent().attr('href')).remove();
 		return true; 
	 }
	 return false; 
} );
 

 
</script>