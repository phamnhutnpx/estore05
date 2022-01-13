<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dangnhap extends CI_Controller {
	// Hàm khởi tạo
    function __construct() {
        parent::__construct();
        $this->load->model('frontend/Mcategory');
        $this->load->model('frontend/Mcustomer');
        $this->load->model('frontend/Mcoupon');
        $this->load->model("frontend/Mproduct");
        $this->data['com']='dangnhap';
    }

    public function dangnhap(){
        $this->load->library('form_validation');
        $this->form_validation->set_rules('username', 'Tài khoản', 'required|min_length[6]|max_length[32]');
        $this->form_validation->set_rules('password', 'Mật khẩu', 'required|min_length[6]|max_length[32]');
        if($this->form_validation->run() ==TRUE){
            $username = $_POST['username'];
            $password = md5($_POST['password']);
            if($this->Mcustomer->customer_login($username, $password)!=FALSE){
                $row = $this->Mcustomer->customer_login($username, $password);
                $this->session->set_userdata('sessionKhachHang',$row);
                $this->session->set_userdata('id',$row['id']);
                $this->session->set_userdata('email',$row['email']);
                $this->session->set_userdata('sessionKhachHang_name',$row['fullname']);
                if($this->session->userdata('cart')){
                    redirect('gio-hang','refresh');
                }else{
                    redirect('thong-tin-khach-hang','refresh');
                }
            }else{
                $this->data['error']='Tài khoản hoặc mật khẩu không chính xác';
                $this->data['title']='Đăng nhập tài khoản';
                $this->data['view']='dangnhap';
                $this->load->view('frontend/layout',$this->data);
            }
        }else{
            $this->data['title']='E-Store - Đăng nhập tài khoản';
            $this->data['view']='dangnhap';
            $this->load->view('frontend/layout',$this->data);
        }     
    }

    public function dangxuat(){
        $array_items = array( 'email','fullname', 'id','sessionKhachHang','sessionKhachHang_name','coupon_price','id_coupon_price');
        $this->session->unset_userdata($array_items);
        redirect('trang-chu','refresh');
    }

    public function dangky(){
        $this->load->helper('string');

        $today = date('Y-m-d');
        // giới hạn mã giảm giá mới có hạn 30 ngày từ khi đăng ký tài khoản
        $todaylimit = strtotime(date("Y-m-d", strtotime($today)) . " +1 month");
        $todaylimit = strftime("%Y-%m-%d", $todaylimit);

        $this->load->library('form_validation');
        $this->load->helper('form');
        $this->form_validation->set_rules('username', 'Tên đăng nhập', 'required|min_length[6]|max_length[32]|is_unique[db_customer.username]');
        $this->form_validation->set_rules('name', 'Họ và tên', 'required|min_length[5]');
        $this->form_validation->set_rules('password', 'Mật khẩu', 'required|min_length[6]|max_length[32]');
        if(!$this->session->userdata('sessionKhachHang')){
            $this->form_validation->set_rules('email', 'Email', 'required|is_unique[db_customer.email]');
        }
        $this->form_validation->set_rules('re_password', 'Nhập lại mật khẩu', 'required|matches[password]');
        
        $this->form_validation->set_rules('phone', 'Số điện thoại', 'required|min_length[6]|numeric|is_unique[db_customer.phone]|max_length[11]');
        
        if($this->form_validation->run() ==TRUE){
            $data = array(
                'username'     => $this->input->post('username'),   
                'fullname'     => $this->input->post('name'),
                'email'    => $this->input->post('email'),
                'phone'    => $this->input->post('phone'),
                'created'=>$today,
                'password' => md5($this->input->post('password'))
            );

            $newcoupon=array(
                'code' => strtoupper(random_string('alnum', 12)),
                'discount' => '100000',
                'limit_number' => '1',
                'number_used' => '0',
                'expiration_date' => $todaylimit,
                'description' => 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công',
                'created' => $today,
                'orders' => 0,
                'trash' => 1,
                'status' => 1,
            );

            //Lưu tt mã và ngày giới hạn để gửi mail
            $tempcoupon = $newcoupon['code'];
            $tempdatelimit = $newcoupon['expiration_date'];
            //Test in mã ra màn hình
            // echo "Mã của bạn là: $tempcoupon <br>Ngày hết hạn: $tempdatelimit <br>";
            // tao mã giảm giá random
            $this->Mcoupon->coupon_insert($newcoupon);
            $this->Mcustomer->customer_insert($data);
            // gui mail ma giam gia
            $email = $this->input->post('email');
            $this->load->library('email');
            $this->load->library('parser');
            $this->email->clear();
            $config['protocol']    = 'smtp';
            $config['smtp_host']    = 'ssl://smtp.gmail.com';
            $config['smtp_port']    = '465';
            $config['smtp_timeout'] = '7';
            $config['smtp_user']    = 'noreply.estore.pnb.2021@gmail.com';
            $config['smtp_pass']    = 'phonambo';
            $config['charset']    = 'utf-8';
            $config['newline']    = "\r\n";
            $config['wordwrap'] = TRUE;
            $config['mailtype'] = 'html';
            $config['validation'] = TRUE;   
            $this->email->initialize($config);
            $this->email->from('noreply.estore.pnb.2021@gmail.com', 'E-Store');
            $this->email->to($email);
            $this->email->subject('Hệ thống E-Store - Quà thành viên mới');
            $this->email->message('Bạn đã trở thành thành viên mới của cửa hàng E-Store, Cửa hàng tặng bạn 1 mã giảm giá giảm 100.000 đ : '.$tempcoupon.' , Mã này có giá trị tới ngày '.$tempdatelimit.'
                Hãy sử dụng tài khoản để mua hàng để tích lũy nhận thêm nhiều ưu đãi !!!!');
            $this->email->send();
            $this->data['success']='Đăng ký thành công! Bạn đã nhận được 1 mã giảm giá cho thành viên mới, vui lòng kiểm tra email !!';

        }  
        $this->data['title']='E-Store - Đăng ký tài khoản';   
        $this->data['view']='dangky';
        $this->load->view('frontend/layout',$this->data);  
    }
    function check_username(){
        $username = $this->input->post('username');
        if($this->Mcustomer->customer_check_username($username)){
            $this->form_validation->set_message(__FUNCTION__, 'Tên đăng nhập để trống hoặc đã được sử dụng');
            return FALSE;
        }
        return TRUE;
    }

    function check_mail(){
        $email = $this->input->post('email');
        if($this->Mcustomer->customer_detail_email($email))
        {
            $this->form_validation->set_message(__FUNCTION__, 'Email để trống hoặc đã được sử dụng');
            return FALSE;
        }
        return TRUE;
    }

    public function forget_password(){
        $this->form_validation->set_rules('email', 'Email', 'required|callback_check_mail_forget');
        if($this->form_validation->run() ==TRUE){

            $email = $this->input->post('email');
            $list = $this->Mcustomer->customer_detail_email($email);

            $this->load->library('email');
            $this->load->library('parser');
            $this->email->clear();
            $config['protocol']    = 'smtp';
            $config['smtp_host']    = 'ssl://smtp.gmail.com';
            $config['smtp_port']    = '465';
            $config['smtp_timeout'] = '7';
            $config['smtp_user']    = 'noreply.estore.pnb.2021@gmail.com';
            $config['smtp_pass']    = 'phonambo';
            $config['charset']    = 'utf-8';
            $config['newline']    = "\r\n";
            $config['wordwrap'] = TRUE;
            $config['mailtype'] = 'html';
            $config['validation'] = TRUE;   
            $this->email->initialize($config);
            $this->email->from('noreply.estore.pnb.2021@gmail.com', 'E-Store');
            $this->email->to($list['email']);
            $this->email->subject('Hệ thống E-Store - Lấy lại mật khẩu');
            $this->email->message('Vui lòng truy cập đường dẫn để lấy lại mật khẩu <button class="btn"><a href="'.base_url().'dangnhap/reset_password_new/'.$list['id'].'">Lấy lại mật khẩu</a></button>'); 
            $this->email->send();
            $this->data['success']='Bạn vui lòng kiểm tra mail để lấy lại mật khẩu!';   
        }  
        $this->data['title']='E-Store - Quên mật khẩu';   
        $this->data['view']='forget_password';
        $this->load->view('frontend/layout',$this->data);  
    }
    // Kiêm tra email lấy lại mk có đúng
    function check_mail_forget(){
        $email = $this->input->post('email');
        if($this->Mcustomer->customer_detail_email($email))
        {

            return TRUE;
        }
        else{
            $this->form_validation->set_message(__FUNCTION__, 'Email này không phải thành viên của cửa hàng !!');
            return FALSE;
        }
    }

    public function reset_password_new($id){
        $list = $this->Mcustomer->customer_detail_id($id);
        
        $this->load->library('form_validation');
        $this->form_validation->set_rules('email', 'Email', 'required');
        $this->form_validation->set_rules('password', 'Mật khẩu', 'required|min_length[6]|max_length[32]');
        $this->form_validation->set_rules('re_password', 'Nhập lại mật khẩu', 'required|matches[password]');
        
        if($this->form_validation->run() ==TRUE){ 
           $email = $_POST['email'];
           if($this->Mcustomer->customer_check_id_email($id, $email)!=FALSE){
               $password_new = md5($_POST['re_password']);
               $mydata= array( 'password' => $password_new,);
               $this->Mcustomer->customer_update($mydata, $list['id']);
               $this->data['success']='Đổi mật khẩu thành công';
               echo '<script>alert("Mật khẩu đã được thay đổi thành công !")</script>';
               redirect('dang-nhap','refresh');
           }
           else{
            $this->data['error']='Email không đúng, vui lòng nhập đúng email cần lấy lại mật khẩu !';
            $this->data['title']='E-Store - Cập nhật mật khẩu mới';
            $this->data['view']='reset_password_new';
            $this->load->view('frontend/layout',$this->data);
        }

    }
    $this->data['title']='E-Store - Cập nhật mật khẩu mới';
    $this->data['view']='reset_password_new';
    $this->load->view('frontend/layout',$this->data);
}

}