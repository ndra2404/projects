<?php
class ControllerModulePavblogcategory extends Controller {

	private $mdata = array();

	public function index($setting) {
		static $module = 0;

		$this->mdata['objlang'] = $this->language;

		$this->load->model('pavblog/category');
		$this->load->model('tool/image');
		$this->language->load('module/pavblog');
		
		$this->mdata['button_cart'] = $this->language->get('button_cart');
		
		
		if( !defined("_PAVBLOG_MEDIA_") ){
			if (file_exists('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/pavblog.css')) {
				$this->document->addStyle('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/pavblog.css');
			} else {
				$this->document->addStyle('catalog/view/theme/default/stylesheet/pavblog.css');
			}
			define("_PAVBLOG_MEDIA_",true);
		}
		$this->document->addScript('catalog/view/javascript/jquery/pavblog_script.js');	
		$default = array(
			'latest' => 1,
			'limit' => 9
		);

		$category_id = 0;

		if($this->request->get['route'] == 'pavblog/category' && isset($this->request->get['id'])) {
			$category_id = $this->request->get['id'];
		}

		$tree = $this->model_pavblog_category->getTree(null, $category_id);
		
		$this->mdata['tree'] = $tree;
		// echo '<pre>'.print_r( $tree,1 ); die;
		
		$this->mdata['heading_title'] = $this->language->get('blog_category_heading_title');


		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/pavblogcategory.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/pavblogcategory.tpl', $this->mdata);
		} else {
			return $this->load->view('default/template/module/pavblogcategory.tpl', $this->mdata);
		}
	}
	
}
?>