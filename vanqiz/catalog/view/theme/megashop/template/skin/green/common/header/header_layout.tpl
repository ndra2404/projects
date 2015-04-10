<?php
				//call by framework Auto Search
            //$searchtmp = $this->config->get('pavautosearch_module');
//$configsearch = reset($searchtmp);
//$statusSearch = ($configsearch['status'])?1:0;

//$autosearch = empty($configsearch)?'':$helper->renderModule( 'module/pavautosearch' );
//$configVerticalmenu = $this->config->get('pavverticalmenu_module');
//$verticalmenu = empty($configVerticalmenu)?'':$helper->renderModule( 'module/pavverticalmenu' );


$objlang = $this->registry->get('language');

$autosearch = $helper->renderModule( 'pavautosearch' );
$megamenu = $helper->renderModule('pavmegamenu');
?>

<header id="header">
    <div id="header-main" class="hasmainmenu-search">
        <div class="container">
            <div class="row">
                <div class="logo inner  col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <?php if( $logoType=='logo-theme'){ ?>
                    <div id="logo-theme" class="logo-store pull-left">
                        <a href="<?php echo $home; ?>">
                            <span><?php echo $name; ?></span>
                        </a>
                    </div>
                    <?php } elseif ($logo) { ?>
                    <div id="logo" class="logo-store pull-left"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
                    <?php } ?>
                </div>
                <div class="inner col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <?php echo $autosearch ?>
                </div>
                <div id="hidemenu" class=" inner col-lg-3 col-md-3 col-sm-1 hidden-xs">
                    <div class="cart-top">
                        <?php echo $cart; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<section id="pav-masshead" class="pav-masshead aligned-right">
    <div class="container">
        <div class="inner row clearfix">
            <div id="pav-mainnav">
                <div class="container">
                    <?php
			/**
			 * Main Menu modules: as default if do not put megamenu, the theme will use categories menu for main menu
			 */
			$modules = $helper->renderModule('pavmegamenu');

                    if (count($modules) && !empty($modules)) { ?>


                    <?php echo $modules; ?>


                    <?php } elseif ($categories) { ?>

                    <div class="navbar navbar-inverse">
                        <nav id="mainmenutop" class="pav-megamenu" role="navigation">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="fa fa-bars"></span>
                                </button>
                            </div>

                            <div class="collapse navbar-collapse navbar-ex1-collapse">
                                <ul class="nav navbar-nav">

                                    <?php foreach ($categories as $category) { ?>

                                    <?php if ($category['children']) { ?>
                                    <li class="parent dropdown deeper ">
                                        <a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?>
                                            <b class="fa fa-angle-down"></b>
                                            <span class="triangles"></span>
                                        </a>
                                        <?php } else { ?>
                                    <li>
                                        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                        <?php } ?>
                                        <?php if ($category['children']) { ?>
                                        <ul class="dropdown-menu">
                                            <?php for ($i = 0; $i < count($category['children']);) { ?>
                                            <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                                            <?php for (; $i < $j; $i++) { ?>
                                            <?php if (isset($category['children'][$i])) { ?>
                                            <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
                                            <?php } ?>
                                            <?php } ?>
                                            <?php } ?>
                                        </ul>
                                        <?php } ?>
                                    </li>
                                    <?php } ?>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <?php } ?>
                </div>
            </div>

        </div>
    </div>
</section>



