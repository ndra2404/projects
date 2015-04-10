<?php 
  /*
  * @package Framework for Opencart 2.0
  * @version 2.0
  * @author http://www.pavothemes.com
  * @copyright Copyright (C) Feb 2013 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
  * @license   GNU General Public License version 2
  */
  require_once(DIR_SYSTEM . 'pavothemes/loader.php');
  $config = $this->registry->get('config'); 
  $helper = ThemeControlHelper::getInstance( $this->registry, $config->get('config_template') );
  $layoutID = 1 ;
?>
 <?php $objlang = $this->registry->get('language');  $ourl = $this->registry->get('url');   ?>
<!-- 
  $ospans: allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
 -->

<?php if( !($helper->getConfig('enable_pagebuilder') && $helper->isHomepage())  ){ ?>

<?php
  $blockid = 'mass_top';
  $blockcls = '';
  $ospans = array(1=>12);
require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
?>

<?php
  $blockid = 'mass_center';
  $blockcls = '';
  $ospans = array(1=>12);
  require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
?>

<?php
  $blockid = 'mass_bottom';
  $blockcls = '';
  $ospans = array(1=>12);
  require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
?>

<?php } ?>

<footer id="footer">
 
  <?php
    $blockid = 'footer_top';
    $modules = $helper->getModulesByPosition( $blockid );
    $ospans = array(1=>3, 2=>2,3=>2, 4=>2,5=>3);
    if( count($modules) ){
        require( ThemeControlHelper::getLayoutPath( 'common/block-footcols.tpl' ) );

    } elseif( $helper->getConfig('enable_footer_center') ) { ?>
    <section class="<?php echo str_replace('_','-',$blockid); ?> <?php $blockcls;?>" id="pavo-<?php echo str_replace('_','-',$blockid); ?>">
    <div class="container">
        <div class="inner">
            <div class="row">
                <div class="col-md-3 col-sm-12">
                    <?php
                            if($content=$helper->getLangConfig('widget_about'))
                            {
                                echo $content;
                            }
                    ?>
                </div>
                <div class="col-md-2 col-sm-4">
                    <h5 class="box-heading"><span><?php echo $text_service; ?></span></h5>
                    <ul class="list-unstyled">
                        <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                        <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                        <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                    </ul>
                </div>
                <div class="col-md-2 col-sm-4">
                    <h5 class="box-heading"><span><?php echo $text_extra; ?></span></h5>
                    <ul class="list-unstyled">
                        <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                        <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                        <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                        <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                    </ul>
                </div>
                <div class="col-md-2 col-sm-4">
                    <h5 class="box-heading"><span><?php echo $text_account; ?></span></h5>
                    <ul class="list-unstyled">
                        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                        <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                        <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                        <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                    </ul>
                </div>
                <div class="col-md-3 col-sm-12">
                    <?php
                        if($content=$helper->getLangConfig('widget_address'))
                        {
                            echo $content;
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
        </section>
    <?php }?>



  <?php
    $blockid = 'footer_center';
    $blockcls = '';
    $ospans = array(1=>12);
    require( ThemeControlHelper::getLayoutPath( 'common/block-footcols.tpl' ) );
  ?>


  <?php
    $blockid = 'footer_bottom';
    $blockcls = '';
    $ospans = array();
    require( ThemeControlHelper::getLayoutPath( 'common/block-footcols.tpl' ) );
  ?>

</footer>
<div id="powered">
    <div class="container">
        <div class="inner">
            <div id="top"><a class="scrollup" href="#"><i class="fa fa-angle-up"></i>Top</a></div>
            <div class="copyright">
                <?php if( $helper->getConfig('enable_custom_copyright', 0) ) { ?>
                <?php echo $helper->getConfig('copyright'); ?>
                <?php } else { ?>
                <?php echo $powered; ?>.
                <?php } ?>
            </div>
            <?php if( $content=$helper->getLangConfig('widget_paypal') ) { ?>
            <div class="paypal">
                <?php echo $content; ?>
            </div>
            <?php } ?>
        </div>
    </div>
</div>

<div class="outsite">
    <?php
    //call social
    $social_left = $helper->getModulesByPosition('outsite_left');
    $social_right = $helper->getModulesByPosition('outsite_right');
    $blockcls = '';
    $ospans = array();
    if(isset($social_left) && !empty($social_left[0])) {
        echo '<div class="socials-theme left hidden-xs hidden-sm hidden-md">';
            $blockid = 'outsite_left';
            require( ThemeControlHelper::getLayoutPath( 'common/block-outsite.tpl' ) );
        echo '</div>';
    }
    if(isset($social_right) && !empty($social_right[0])) {
        echo '<div class="socials-theme right hidden-xs hidden-sm hidden-md">';
            $blockid = 'outsite_right';
            require( ThemeControlHelper::getLayoutPath( 'common/block-outsite.tpl' ) );
        echo '</div>';
    }
    ?>
</div>

<?php  if( $helper->getConfig('enable_paneltool',0) ){  ?>
<?php  echo $helper->renderAddon( 'panel' );?>
<?php  } ?>

</div>
  <?php  echo $helper->renderAddon( 'offcanvas' );?>
</section>
</body></html>