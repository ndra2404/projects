<?php
class ControllerModulepavbannerbuilder extends Controller {

	private $mdata = array();

	public function index($setting) {
		$this->load->model('tool/image');
		$this->load->model('design/banner');

		$d = array("banner_layout" => 1, "prefix" => '');
		$setting = array_merge($d, $setting);

		
		$this->mdata['objimg'] = $this->model_tool_image;
		$layouts = ( trim($setting['layout']) );
		if( empty($layouts) ){
			$this->mdata['layouts']  = array();
		}else {
			$this->mdata['layouts'] = $layouts;
		}
		$tpl = 'pavbannerbuilder.tpl';

		if( isset($setting['template']) ){
			$tpl = 'pavbannerbuilder/'.$setting['template'].'.tpl'; 
		}	
		if (file_exists('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/pavbannerbuilder.css')) {
			$this->document->addStyle('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/pavbannerbuilder.css');
		} else {
			// $this->document->addStyle('catalog/view/theme/default/stylesheet/pavbannerbuilder.css');
		}

		$layouts = json_decode( $layouts );

		$this->mdata['layouts'] = $layouts;
		$this->mdata['url'] =  $this->config->get('config_secure') ? $this->config->get('config_ssl') : $this->config->get('config_url');
		
 		$this->mdata['class'] = isset($setting['class'])?$setting['class']:'';
 		$this->mdata['heading'] = isset($setting['name'])?$setting['name']:'';

 

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/'.$tpl)) {
			$template = $this->config->get('config_template') . '/template/module/'.$tpl;
		} else {
			$template = 'default/template/module/'.$tpl;
		}
		$this->mdata['template'] = $template;
		return $this->load->view($template, $this->mdata);
	}
}
?>