<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Search extends CI_Controller {

	function __construct() {
		parent::__construct();
		$this->load->model('frontend/Mcontent');
		$this->load->model('frontend/Mcategory');
		$this->load->model("frontend/Mproduct");
		$this->data['com']='search';
	}
	public function index(){
		$this->load->library('phantrang');
		$key = $_GET['search'];
		$aurl= explode('/',uri_string());
		$url = $aurl[0].'?search='.str_replace(' ', '+', $key);
		$limit=10;
		$current=isSet($_GET['p'])?str_replace('/','',$_GET['p']):$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total = $this->Mproduct->product_search_count($key);
		$suggestions = ($key!="")?$this->suggestion($key):null;
		// $this->data['list'] = $this->Mproduct->product_search($key,$limit,$first);
		$this->data['list'] = $this->Mproduct->product_search($key,$limit,$first);
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url= $url."&p=");
		$this->data['title']='E-Store - Bạn muốn tìm gì ?';  
		$this->data['view']='index';
		$this->data['count'] = $total;
		$this->data['key'] =$key;
		$this->data['suggestions'] = $suggestions;
		$this->load->view('frontend/layout',$this->data);
	}

	//tìm độ dài chuỗi con chung lớn nhất
	public function LCSubStr($X, $Y)
	{
		$m = strlen($X);//O(1)
		$n = strlen($Y);//O(1)
		$LCSuff = array_fill(0, $m + 1, array_fill(0,$n + 1,NULL));//O(1)
		$result = 0;//O(1)
		for($i=0; $i <= $m; $i++)//O(n+1)
		{
			for($j=0; $j <= $n; $j++)//O(n*(n+1))
			{
				if($i == 0 || $j == 0)//O(1)
				{
					$LCSuff[$i][$j] = 0;//O(1)
				} elseif($X[$i-1] == $Y[$j-1])//O(1)
				{
					$LCSuff[$i][$j] = $LCSuff[$i-1][$j-1] + 1;//O(1)
					$result = max($result, $LCSuff[$i][$j]);//O(1)
				} else $LCSuff[$i][$j] = 0;//O(1)
			}
		}
		return $result;//O(1)
	}
	//Hàm so sánh riêng cho usort
	private static function cmp($a, $b) {
		return ($a['same'] == $b['same']) ? 0 : (($a['same'] < $b['same']) ? 1 : -1);
	}
	//Đưa ra 5 đề nghị tìm kiếm "GẦN" ĐÚNG NHẤT với KQ
    public function suggestion($keyword){
		// $keyword = urldecode($keyword);
		$len_of_key = strlen($keyword);
		$suggestions = array();
		$count = 0;
		$total = $this->Mproduct->product_sanpham_count();
		$row = $this->Mproduct->get_product();
		for($i=0; $i<$total; $i++){
			$len_of_LCSubStr = $this->LCSubStr(strtolower($keyword), strtolower($row[$i]['name']));
			$row[$i]['same'] = $len_of_LCSubStr / $len_of_key;
		}
		usort($row, array('Search', 'cmp'));
		for($i=0; $i<$total && $count!=5 ; $i++)
			if($row[$i]['same']<1) $suggestions[$count++] = $row[$i];
		// echo $row[$i]['id'] ."|".$row[$i]['same'] . '<br/>';
		// foreach($suggestions as $x) echo $x['id'] . "|" . $x['same'] . "<br/>";
		// echo "<hr>";
		// foreach($row as $x) echo $x['id'] . "|" . $x['same'] . "<br/>";
		return $suggestions;
    }

	// gốc, sửa index lại thành index1
	// public function index1(){
	// 	$this->load->library('phantrang');
	// 	$key = $_GET['search'];
	// 	$aurl= explode('/',uri_string());
	// 	$url = $aurl[0].'?search='.str_replace(' ', '+', $key);
	// 	$limit=10;
	// 	$current=$this->phantrang->PageCurrent();
	// 	$first=$this->phantrang->PageFirst($limit, $current);
	// 	$total = $this->Mproduct->product_search_count($key);
	// 	$this->data['list'] = $this->Mproduct->product_search($key,$limit,$first);;
	// 	$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url= $url);
	// 	$this->data['title']='E-Store - Bạn muốn tìm gì ?';  
	// 	$this->data['view']='index';
	// 	$this->data['count'] = $total;
	// 	$this->data['key'] =$key;
	// 	$this->load->view('frontend/layout',$this->data);
	// }
}