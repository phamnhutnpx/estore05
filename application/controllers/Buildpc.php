<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Buildpc extends CI_Controller {

	function __construct() {
		parent::__construct();
		$this->load->model('frontend/Mcontent');
		$this->load->model('frontend/Mcategory');
		$this->load->model("frontend/Mproduct");
		$this->data['com']='buildpc';
	}
	public function index(){
		$this->load->library('phantrang');
		$price = (int)str_replace(' ','',$_GET['price']);
		if($price<0) $price=0;
		if($price>10000000000) $price=10000000000;
		$aurl= explode('/',uri_string());
		$url = $aurl[0].'?price='.str_replace(' ', '+', $price);
		$limit=12;
		$current=isSet($_GET['p'])?str_replace('/','',$_GET['p']):$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total = $this->Mproduct->product_search_count($price);
		$this->data['list'] = $this->Mproduct->product_search($price,$limit,$first);
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url);
		$this->data['title']='E-Store - Giúp bạn build PC theo số tiền bạn có';  
		$this->data['view']='index';
		$this->data['count'] = $total;
		$this->data['price'] =$price;
		$this->data['min_price'] = $this->min_price_buildpc();
		$this->data['list'] = array();
		if($price >= $this->data['min_price']) {
			$this->data['list'] = $this->suggestion($price);
		}
		// var_dump($this->data['list']);
		$this->load->view('frontend/layout',$this->data);
	}
	
	//Hàm so sánh riêng cho usort _ giam dan
	private static function cmp($a, $b) {
		return ($a['price_sale'] == $b['price_sale']) ? 0 : (($a['price_sale'] < $b['price_sale']) ? 1 : -1);
	}
	//Hàm so sánh riêng cho usort2 _ tang dan
	private static function cmp2($a, $b) {
		return ($a['value'] == $b['value']) ? 0 : (($a['value'] < $b['value']) ? 1 : -1);
	}
	
	public function min_price_buildpc(){
		// 15 mainboard
		// 16 cpu
		// 22 psu
		// 18 ram
		// 19 ssd/hdd
		// 21 cooler-fan
		// 20 case
		// 17 vga (không cần thiết lắm vì đã tích hợp)
		$kinds_of_components = array(15, 16, 22, 18, 19, 21, 20);
		$min_price = 0;
		foreach($kinds_of_components as $component){
			$row = $this->Mproduct->product_loai($component);
			if(!$row) continue;
			$min_price_component = $row[0]['price_sale'];
			foreach($row as $sp) {
				$min_price_component = min($min_price_component, $sp['price_sale']);
			}
			$min_price += $min_price_component;
		}
		return $min_price;
	}

	public function get_linh_kien_pc(){
		$kinds_of_components = array(15, 16, 22, 18, 19, 21, 20, 17);
		$count=0;
		$list_linh_kien = array();

		$max_point=0;
		foreach($kinds_of_components as $component){
			$row = $this->Mproduct->product_loai($component);
			$max_point = max($max_point, count($row));
		}

		foreach($kinds_of_components as $component){
			$row = $this->Mproduct->product_loai($component);
			if(!$row) continue;
			$min_price_component = $row[0]['price_sale'];
			usort($row, array('Buildpc', 'cmp'));
			$value = $max_point; //count($row);
			foreach($row as $sp) {
				$sp['value'] = $value--;
				$sp['price_sale'] /= 1000; //don vi: 1000vnd
				$list_linh_kien[$count++] = $sp;
			}
		}
		return $list_linh_kien;
	}
	
	public function knapsack($W, $list_linh_kien, $n)
	{

		//($W, $wt, $val, $n)
		//$W : $price that user request
		//$wt : {$price_sale} -> $list_linh_kien[i]['price_sale']
		//$val : {$value} -> $list_linh_kien[i]['value']
		//$n = count($list_linh_kien)

		// $K = array_fill(0, $n, array_fill(0, $W, -1));
		$K = array(array());//O(1)
		// Build table K[][] in bottom up manner
		ini_set('memory_limit', '-1');
		for ($i = 0; $i <= $n; $i++)//O(n+1)
		{
			for ($w = 0; $w <= $W; $w++)//O(n*(n+1))
			{
				if ($i == 0 || $w == 0)//O(1)
					$K[$i][$w] = 0;//O(1)
				else if ($list_linh_kien[$i - 1]['price_sale'] <= $w)//O(1)
					$K[$i][$w] = max($list_linh_kien[$i - 1]['value'] +
									 $K[$i - 1][$w -
									 $list_linh_kien[$i - 1]['price_sale']],
									 $K[$i - 1][$w]);//O(1)
				else
					$K[$i][$w] = $K[$i - 1][$w];//O(1)
			}
		}
		// echo '<hr>$K[$n][$W]: ' . $K[$n][$W] . '<hr>';
		$count=0; $i=$n; $j=$W; $chooses = array();//O(1)
		while($i!=0)//O(1)
		{
			if($K[$i][$j] != $K[$i-1][$j])//O(1)
			{
				$j = $j - $list_linh_kien[$i-1]['price_sale'];//O(1)
				$chooses[$count++] = $list_linh_kien[$i-1]['id'];//O(1)
			}
			$i--;//O(1)
		}
		return $chooses;//O(1)
	}
// = O(n+1) + O(n*(n+1)) + O(13) = O(n^2)
	public function suggestion($price){
		$price /= 1000;
		$suggestions = array();
		$count = 0;
		$list_linh_kien = $this->get_linh_kien_pc();
		// usort($list_linh_kien, array('Buildpc', 'cmp2'));
		$list_id = $this->knapsack($price, $list_linh_kien, count($list_linh_kien));
		foreach($list_id as $id){
			$suggestions[$count++] = $this->Mproduct->product_id($id);
		}
		return $suggestions;
    }

}