<?php 
/******************************************************
 * @package Pav Opencart Theme Framework for Opencart 2.0.x
 * @version 1.1
 * @author http://www.pavothemes.com
 * @copyright Copyright (C) Augus 2013 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
* @license   GNU General Public License version 2
*******************************************************/
$config = $this->registry->get('config');
// $this->language->load('module/themecontrol');
$themeName =  $config->get('config_template');
$themeConfig = (array)$config->get('themecontrol');

require_once(DIR_SYSTEM . 'pavothemes/loader.php');
$helper = ThemeControlHelper::getInstance( $this->registry, $themeName );

$helper->setDirection( $direction );
$helper->triggerUserParams( array('headerlayout','productlayout') );
/* Add scripts files */
$helper->addScript( 'catalog/view/javascript/jquery/jquery-2.1.1.min.js' );
$helper->addScript('catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js');
$helper->addScript( 'catalog/view/javascript/bootstrap/js/bootstrap.min.js' );
$helper->addScript( 'catalog/view/javascript/common.js' );
$helper->addScript( 'catalog/view/theme/'.$themeName.'/javascript/common.js' );
$logoType = $helper->getConfig('logo_type','logo-theme');
$headerlayout = $helper->getConfig('header_layout');
$template_layout = $helper->getConfig('template_layout');
$skin = $helper->getConfig('skin');

if( $helper->getConfig('enable_paneltool') ){
if( $helper->getParam('headerlayout') ){
$headerlayout = $helper->getParam('headerlayout');
}

if($helper->getParam('layout')){
$template_layout = $helper->getParam('layout');
}
$helper->addCss( 'catalog/view/theme/'.$themeName.'/stylesheet/paneltool.css' );
$helper->addScript( 'catalog/view/javascript/jquery/colorpicker/js/colorpicker.js' );
$helper->addCss( 'catalog/view/javascript/jquery/colorpicker/css/colorpicker.css' );
}

$helper->addScriptList( $scripts );

$ctheme=$helper->getConfig('customize_theme');
if( file_exists(DIR_TEMPLATE.$themeName.'/stylesheet/customize/'.$ctheme.'.css') ) {
$helper->addCss( 'catalog/view/theme/'.$themeName.'/stylesheet/customize/'.$ctheme.'.css'  );
}


$helper->addCss( 'catalog/view/javascript/font-awesome/css/font-awesome.min.css' );
$helper->addCss('catalog/view/javascript/jquery/magnific/magnific-popup.css');
// -$helper->addCss( '//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700' );

$helper->addCssList( $styles );
$logoType = $helper->getConfig('logo_type','logo-theme');
$stickymenu = isset($themeConfig['stickymenu'])?$themeConfig['stickymenu']:'main-menu-fixed';

?>
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" class="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>" />
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content= "<?php echo $keywords; ?>" />
    <?php } ?>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <?php if ($icon) { ?>
    <link href="<?php echo $icon; ?>" rel="icon" />
    <?php } ?>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
    <?php } ?>
    <?php foreach ($helper->getCssLinks() as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
    <?php } ?>
    <?php foreach( $helper->getScriptFiles() as $script )  { ?>
    <script type="text/javascript" src="<?php echo $script; ?>"></script>
    <?php } ?>

    <?php if( isset($themeConfig['theme_width']) &&  $themeConfig['theme_width'] != 'auto' ) { ?>
    <style> #page .container{max-width:<?php echo $themeConfig['theme_width'];?>; width:auto}</style>
    <?php } ?>

    <?php echo $google_analytics; ?>
</head>
<body class="<?php echo $stickymenu;?> <?php echo $class; ?> <?php echo $helper->getPageClass();?> layout-<?php echo $template_layout; ?>">

<section  class="row-offcanvas row-offcanvas-left">

    <div id="page">
        <section id="header-top" >
            <div id="topbar">
                <div class="container">
                    <div class="show-desktop">
                        <div class="quick-access pull-left  hidden-sm hidden-xs">
                            <div class="login links link-active">
                                <?php if ($logged) { ?>
                                <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
                                <?php } else { ?>
                                <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a> or
                                <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a>
                                <?php } ?>
                            </div>
                        </div>
                        <!--Button -->
                        <div class="quick-top-link  links pull-right">
                            <!-- language -->
                            <div class="btn-group box-language">
                                <?php echo $language; ?>
                            </div>
                            <!-- currency -->
                            <div class="btn-group box-currency">
                                <?php echo $currency; ?>
                            </div>
                            <!-- user-->
                            <div class="btn-group box-user">
                                <div data-toggle="dropdown">
                                    <span><?php echo $text_account; ?></span>
                                    <i class="fa fa-angle-down "></i>
                                </div>

                                <ul class="dropdown-menu setting-menu">
                                    <li id="wishlist">
                                        <a href="<?php echo $wishlist; ?>" id="wishlist-total"><i class="fa fa-list-alt"></i>&nbsp;&nbsp;<?php echo $text_wishlist; ?></a>
                                    </li>
                                    <li class="acount">
                                        <a href="<?php echo $account; ?>"><i class="fa fa-user"></i>&nbsp;&nbsp;<?php echo $text_account; ?></a>
                                    </li>
                                    <li class="shopping-cart">
                                        <a href="<?php echo $shopping_cart; ?>"><i class="fa fa-bookmark"></i>&nbsp;&nbsp;<?php echo $text_shopping_cart; ?></a>
                                    </li>
                                    <li class="checkout">
                                        <a class="last" href="<?php echo $checkout; ?>"><i class="fa fa-share"></i>&nbsp;&nbsp;<?php echo $text_checkout; ?></a>
                                    </li>
                                </ul>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- header -->
            <?php
                require( ThemeControlHelper::getLayoutPath( 'common/header/hasmainmenu.tpl' ) );
            ?>
            <!-- /header -->
        </section>
        <!-- sys-notification -->
        <div id="sys-notification">
            <div class="container">
                <div id="notification"></div>
            </div>
        </div>
        <!-- /sys-notification -->
        <?php
/**
 * Showcase modules
 * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
        */
        $blockid = 'slideshow';
        $blockcls = '';
        $ospans = array(1=>12);
        $sconfig = $this->registry->get('config');
        $config = $sconfig->get('themecontrol');
        $modules = $helper->getModulesByPosition( $blockid );
        if( count($modules) ){
        $cols = isset($config['block_'.$blockid])&& $config['block_'.$blockid]?(int)$config['block_'.$blockid]:count($modules);
        $class = $helper->calculateSpans( $ospans, $cols );
        ?>
        <section class="<?php echo str_replace('_','-',$blockid); ?> <?php $blockcls;?>" id="pavo-<?php echo str_replace('_','-',$blockid); ?>">
            <div class="container">
                <div class="inner">
                    <?php $j=1;foreach ($modules as $i =>  $module) {  ?>
                    <?php if(  $i++%$cols == 0 || count($modules)==1  ){  $j=1;?><div class="row"><?php } ?>
                        <div class="<?php echo $class[$j];?> <?php echo isset($tmcols)?$tmcols:'';?> <?php echo isset($prefixclass)?$prefixclass:'';?>"><?php echo $module; ?></div>
                        <?php if( $i%$cols == 0 || $i==count($modules) ){ ?></div><?php } ?>
                    <?php  $j++;  } ?>
                </div>
            </div>
        </section>
        <?php } ?>
        <?php
/**
 * Showcase modules
 * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
        */
        $blockid = 'showcase';
        $blockcls = '';
        $ospans = array();
        $sconfig = $this->registry->get('config');
        $config = $sconfig->get('themecontrol');

        $modules = $helper->getModulesByPosition( $blockid );


        if( count($modules) ){
        $cols = isset($config['block_'.$blockid])&& $config['block_'.$blockid]?(int)$config['block_'.$blockid]:count($modules);
        $class = $helper->calculateSpans( $ospans, $cols );
        ?>
        <section class="<?php echo str_replace('_','-',$blockid); ?> <?php $blockcls;?>" id="pavo-<?php echo str_replace('_','-',$blockid); ?>">
            <div class="container-full">
                <div class="inner">
                    <?php $j=1;foreach ($modules as $i =>  $module) {  ?>
                    <?php if(  $i++%$cols == 0 || count($modules)==1  ){  $j=1;?><div class="row"><?php } ?>
                        <div class="<?php echo $class[$j];?> <?php echo isset($tmcols)?$tmcols:'';?> <?php echo isset($prefixclass)?$prefixclass:'';?>"><?php echo $module; ?></div>
                        <?php if( $i%$cols == 0 || $i==count($modules) ){ ?></div><?php } ?>
                    <?php  $j++;  } ?>
                </div>
            </div>
        </section>
        <?php } ?>
        <?php
/**
 * promotion modules
 * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
        */
        $blockid = 'promotion';
        $blockcls = '';
        $ospans = array();
        require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
        ?>

 