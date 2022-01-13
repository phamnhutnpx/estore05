<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sanpham extends CI_Controller {
    function __construct() {
        parent::__construct();
        $this->load->model('frontend/Mproduct');
        $this->load->model('frontend/Mcategory');
        $this->data['com']='sanpham';
        $this->load->library('session');
        $this->load->library('phantrang');
    }
    
    public function index(){
        if(isset($_POST['sapxep'])){//O(1)
            $dksx=$_POST['sapxep'];//O(1)
            $char = explode('-', $dksx);//O(1)
            $f=$char[0];//O(1)
            $od=$char[1];//O(1)
            $data = array('0' => $f, '1' =>$od);//O(1)
            $this->session->set_userdata('sortby', $data);
        }else{
            if($this->session->userdata('sortby')){//O(1)
                $data = $this->session->userdata('sortby');//O(1)
                $f=$data[0];//O(1)
                $od=$data[1];//O(1)
            }else{
                $f='created';//O(1)
                $od='desc';//O(1)
            }
        }
        $this->load->library('phantrang');
        $limit=12;
        $current=$this->phantrang->PageCurrent();
        $first=$this->phantrang->PageFirst($limit, $current);
        $total=$this->Mproduct->product_sanpham_count();
        $this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='san-pham');
        $this->data['list']=$this->Mproduct->product_sanpham($limit,$first,$f,$od);
        $this->data['title']='E-Store - Tất cả sản phẩm';
        $this->data['view']='index';
        if(isset($_POST['sapxep'])){
            $result=$this->load->view('frontend/components/sanpham/index_order',$this->data,true);//O(1)
            echo json_encode($result);
        }else{
            $this->load->view('frontend/layout',$this->data);//O(1)
        }
    }

    public function category(){
        if(isset($_POST['sapxep-category'])){
            $dksx=$_POST['sapxep-category'];
            $char = explode('-', $dksx);
            $f=$char[0];
            $od=$char[1];
            $data = array('0' => $f, '1' =>$od);
            $this->session->set_userdata('sortby-category', $data);
        }else{
            if($this->session->userdata('sortby-category')){
                $data = $this->session->userdata('sortby-category');
                $f=$data[0];
                $od=$data[1];
            }else{
                $f='created';
                $od='desc';
            }
        }
        $aurl= explode('/',uri_string());
        $link=$aurl[1];
        $catid=$this->Mcategory->category_id($link);
        $listcat=$this->Mcategory->category_listcat($catid);
        $this->data['categoryname']=$this->Mcategory->category_name($catid);
        
        $this->load->library('phantrang');
        $limit=12;
        $current=$this->phantrang->PageCurrent();
        $first=$this->phantrang->PageFirst($limit, $current);
        $total=$this->Mproduct->product_chude_count($listcat);
        $this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='san-pham/'.$link);
        $this->data['list']=$this->Mproduct->product_list_cat_limit($listcat, $limit,$first,$f,$od);
        $this->data['title']='E-Store - Sản phẩm theo từng danh mục';  
        $this->data['view']='category';
        if(isset($_POST['sapxep-category'])){

            // $result=$this->load->view('frontend/components/sanpham/index_order2',$this->data,true);
            // echo json_encode($result);
            $html='<script>document.location.reload(true);</script>';
            echo json_encode($html);
            
        }else{
            $this->load->view('frontend/layout',$this->data);
        }
    }
    public function detail($link){   
        $row = $this->Mproduct->product_detail($link);
        $this->data['row']=$row;
        $this->data['title']='E-Store - '.$row['name'];  
        $this->data['view']='detail';
        $this->load->view('frontend/layout',$this->data);
    }
    public function addcart(){
        $this->load->library('session');
        $id=$_POST['id'];
        if($this->session->userdata('cart')){
            $cart=$this->session->userdata('cart');
            if(array_key_exists($id, $cart)){
                $cart[$id]++;
            }else{
                $cart[$id] = 1;
            }
        }else{
            $cart[$id]=1;
        }
        $this->session->set_userdata('cart',$cart);
        echo json_encode( $cart );
    }

    public function update(){
        $this->load->library('session');
        $id=$_POST['id'];
        if($this->session->userdata('cart')){
            $cart=$this->session->userdata('cart');
            if(array_key_exists($id, $cart)){
                $cart[$id]=(int)($_POST['sl']);
            }
        }
        $this->session->set_userdata('cart',$cart);
        echo json_encode( $cart );
    }

    public function remove(){
        $this->load->library('session');
        $id=$_POST['id'];
        if($this->session->userdata('cart')){
            $cart=$this->session->userdata('cart');
            if($cart[$id]){
                unset($cart[$id]);
            }
        }
        $this->session->set_userdata('cart',$cart);
        $this->session->set_userdata('coupon_price');
        echo json_encode( $cart );

    }
}
