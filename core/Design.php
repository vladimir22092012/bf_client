<?php
require_once(dirname(dirname(__FILE__)).'/Smarty/libs/Smarty.class.php');

class Design extends Core
{
	public $smarty;

	public function __construct()
	{
		parent::__construct();

		// Создаем и настраиваем Смарти
		$this->smarty = new Smarty();
		$this->smarty->compile_check = $this->config->smarty_compile_check;
		$this->smarty->caching = $this->config->smarty_caching;
		$this->smarty->cache_lifetime = $this->config->smarty_cache_lifetime;
		$this->smarty->debugging = $this->config->smarty_debugging;
		$this->smarty->error_reporting = E_ALL & ~E_NOTICE;

		// Берем тему из настроек
		$theme = $this->settings->theme;
		

		$this->smarty->compile_dir = $this->config->root_dir.'/compiled/'.$theme;
		$this->smarty->template_dir = $this->config->root_dir.'/theme/'.$theme.'/html';		

		// Создаем папку для скомпилированных шаблонов текущей темы
		if(!is_dir($this->smarty->compile_dir))
			mkdir($this->smarty->compile_dir, 0777);
						
		$this->smarty->cache_dir = 'cache';
				
		$this->smarty->registerPlugin('modifier', 'convert',	array($this, 'convert_modifier'));		
		$this->smarty->registerPlugin('modifier', 'resize',		array($this, 'resize_modifier'));		
		$this->smarty->registerPlugin('modifier', 'token',		array($this, 'token_modifier'));
		$this->smarty->registerPlugin('modifier', 'plural',		array($this, 'plural_modifier'));		
		$this->smarty->registerPlugin('function', 'url', 		array($this, 'url_modifier'));		
		$this->smarty->registerPlugin('modifier', 'first',		array($this, 'first_modifier'));		
		$this->smarty->registerPlugin('modifier', 'cut',		array($this, 'cut_modifier'));		
		$this->smarty->registerPlugin('modifier', 'date',		array($this, 'date_modifier'));		
		$this->smarty->registerPlugin('modifier', 'time',		array($this, 'time_modifier'));		
		$this->smarty->registerPlugin('modifier', 'price_string',array($this, 'price_string_modifier'));		
		$this->smarty->registerPlugin('modifier', 'price_string_short',array($this, 'price_string_short_modifier'));		
		$this->smarty->registerPlugin('modifier', 'percent_string',array($this, 'percent_string_modifier'));		
		$this->smarty->registerPlugin('function', 'api',		array($this, 'api_plugin'));

		if($this->config->smarty_html_minify)
			$this->smarty->loadFilter('output', 'trimwhitespace');
	}
	
	public function assign($var, $value)
	{
		return $this->smarty->assign($var, $value);
	}

	public function fetch($template)
	{
		// Передаем в дизайн то, что может понадобиться в нем
		$this->assign('config',		$this->config);
		$this->assign('settings',	$this->settings);
		return $this->smarty->fetch($template);
	}
	
	public function set_templates_dir($dir)
	{
		$this->smarty->template_dir = $dir;			
	}

	public function set_compiled_dir($dir)
	{
		$this->smarty->compile_dir = $dir;
	}
	
	public function get_var($name)
	{
		return $this->smarty->getTemplateVars($name);
	}
	
	public function clear_cache()
	{
		$this->smarty->clearAllCache();	
	}
	
    public function convert_modifier($price, $decimal = false)
    {
        $decimal = empty($decimal) ? 0 : 2;
        $result = number_format($price, $decimal, '.', '&nbsp;');

		return $result;
	}

    function price_string_modifier($value)
    {
    	$value = explode('.', number_format($value, 2, '.', ''));
     
    	$f = new NumberFormatter('ru', NumberFormatter::SPELLOUT);
    	$str = $f->format($value[0]);
     
    	// Первую букву в верхний регистр.
    	$str = mb_strtoupper(mb_substr($str, 0, 1)) . mb_substr($str, 1, mb_strlen($str));
     
    	// Склонение слова "рубль".
    	$num = $value[0] % 100;
    	if ($num > 19) { 
    		$num = $num % 10; 
    	}	
    	switch ($num) {
    		case 1: $rub = 'рубль'; break;
    		case 2: 
    		case 3: 
    		case 4: $rub = 'рубля'; break;
    		default: $rub = 'рублей';
    	}	
    	
    	return $str . ' ' . $rub . ' ' . $value[1] . ' копеек.';
    }    
    
    function price_string_short_modifier($value)
    {
    	$value = explode('.', number_format($value, 2, '.', ''));
     
    	$f = new NumberFormatter('ru', NumberFormatter::SPELLOUT);
    	$str = $f->format($value[0]);
     
    	// Первую букву в верхний регистр.
    	$str = mb_strtoupper(mb_substr($str, 0, 1)) . mb_substr($str, 1, mb_strlen($str));
     
    	// Склонение слова "рубль".
    	$num = $value[0] % 100;
    	if ($num > 19) { 
    		$num = $num % 10; 
    	}	
    	return $str ;
    }    
    
    function percent_string_modifier($value)
    {
    	$value = explode('.', number_format($value, 2, '.', ''));
     
    	$f = new NumberFormatter('ru', NumberFormatter::SPELLOUT);
    	$str = $f->format($value[0]);
     
    	// Первую букву в верхний регистр.
    	$str = mb_strtoupper(mb_substr($str, 0, 1)) . mb_substr($str, 1, mb_strlen($str));
     
    	// Склонение слова "рубль".
    	$num = $value[0] % 100;
    	if ($num > 19) { 
    		$num = $num % 10; 
    	}	
    	switch ($num) {
    		case 1: $rub = 'целая'; break;
    		case 2: 
    		case 3: 
    		case 4: $rub = 'целых'; break;
    		default: $rub = 'целых';
    	}	
    	
    	return $str . ' ' . $rub . ' ' . $value[1]*1 . ' тысячных';
    }    
    
	public function resize_modifier($filename, $width=0, $height=0, $set_watermark=false)
	{
		$resized_filename = $this->image->add_resize_params($filename, $width, $height, $set_watermark);
		$resized_filename_encoded = $resized_filename;
		
		if(substr($resized_filename_encoded, 0, 7) == 'http://')
			$resized_filename_encoded = rawurlencode($resized_filename_encoded);

		$resized_filename_encoded = rawurlencode($resized_filename_encoded);
        
        return $resized_filename_encoded;
        
		return $this->config->resized_files_dir.$resized_filename_encoded.'?'.$this->config->token($resized_filename);
	}

	public function token_modifier($text)
	{
		return $this->config->token($text);
	}

	public function url_modifier($params)
	{
		if(is_array(reset($params)))
			return $this->request->url(reset($params));
		else
			return $this->request->url($params);
	}

	public function plural_modifier($number, $singular, $plural1, $plural2=null)
	{
		$number = abs($number); 
		if(!empty($plural2))
		{
		$p1 = $number%10;
		$p2 = $number%100;
		if($number == 0)
			return $plural1;
		if($p1==1 && !($p2>=11 && $p2<=19))
			return $singular;
		elseif($p1>=2 && $p1<=4 && !($p2>=11 && $p2<=19))
			return $plural2;
		else
			return $plural1;
		}else
		{
			if($number == 1)
				return $singular;
			else
				return $plural1;
		}
	
	}

	public function first_modifier($params = array())
	{
		if(!is_array($params))
			return false;
		return reset($params);
	}

	public function cut_modifier($array, $num=1)
	{
		if($num>=0)
	    	return array_slice($array, $num, count($array)-$num, true);
	    else
	    	return array_slice($array, 0, count($array)+$num, true);
	}
	
	public function date_modifier($date, $format = null)
	{
		if(empty($date))
			$date = date("Y-m-d");
	    return date(empty($format)?$this->settings->date_format:$format, strtotime($date));
	}
	
	public function time_modifier($date, $format = null)
	{
	    return date(empty($format)?'H:i':$format, strtotime($date));
	}
	
	public function api_plugin($params, &$smarty)
	{
		if(!isset($params['module']))
			return false;
		if(!isset($params['method']))
			return false;

		$module = $params['module'];
		$method = $params['method'];
		$var = $params['var'];
		unset($params['module']);
		unset($params['method']);
		unset($params['var']);
		$res = $this->$module->$method($params);
		$smarty->assign($var, $res);
	}	
}