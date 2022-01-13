<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Zend_search
{
  var $CI;
  function __construct($class = NULL)
  {
    $this->CI =& get_instance();
  }
    /**
     *
     * Ket noi den data index
     */
    public function _index_connect()
    {
        // Tai thu vien Zend_Search_Lucene
      require_once APPPATH.'libraries/Zend/Search/Lucene.php';

        // Gọi tới path luu data index
      $data = './search/lucene_index';

        // Ket noi den data index
      try
      {
        $index = Zend_Search_Lucene::open($data);
                        //Mỡ thư mục chứa các tập tin search
      }
      catch (Exception $e)
      {
        $index = Zend_Search_Lucene::create($data);
                        //Tạo các tập tin search
      }

        // Gan kieu du lieu Utf8 khong phan biet chu hoa va chu thuong
      Zend_Search_Lucene_Analysis_Analyzer::setDefault(
        new Zend_Search_Lucene_Analysis_Analyzer_Common_Utf8_CaseInsensitive()
      );

      return $index;
    }

    /*create index document*/
    public function create_index(){
      $this->CI->load->Model('frontend/Mproduct');
      $arr_data = array() ;
      $index = $this->_index_connect();

      $arr_data = $this->CI->Mproduct->get_product();
      var_dump($arr_data);
                //$arr_data chưa tất cả các dữ liệu sản phẩm
      foreach($arr_data as $pro) {
        //create an cache index doc
        $doc = new Zend_Search_Lucene_Document();
        $doc->addField(Zend_Search_Lucene_Field::Keyword('id', $pro['id']));
        $doc->addField(Zend_Search_Lucene_Field::Keyword('catid', $pro['catid']));
        $doc->addField(Zend_Search_Lucene_Field::text('name', $pro['name'], 'UTF-8'));
        $index->addDocument($doc);
      }
      $index->commit();
      $index->optimize();
      echo $index->count().' Documents indexed.';
    }

    /*end create index document*/

    /*save document*/
    function save_item($pro = null,$options = null){
     $index = $this->_index_connect();
     if($options['task']=='add'){
      $doc = new Zend_Search_Lucene_Document();
      $doc->addField(Zend_Search_Lucene_Field::Keyword('id', $pro['id']));
      $doc->addField(Zend_Search_Lucene_Field::Keyword('catid', $pro['catid']));
      $doc->addField(Zend_Search_Lucene_Field::text('name', $pro['name'], 'UTF-8'));
      $index->addDocument($doc);
      $index->commit();
      $index->optimize();
    }

    if($options['task']=='edit'){
      $hits = $index->find('id:'.$pro['id']);
      foreach ($hits as $hit) {
       $index->delete($hit->id);
     }

     $doc = new Zend_Search_Lucene_Document();

     $doc->addField(Zend_Search_Lucene_Field::Keyword('id', $pro['id']));
      $doc->addField(Zend_Search_Lucene_Field::Keyword('catid', $pro['catid']));
      $doc->addField(Zend_Search_Lucene_Field::text('name', $pro['name'], 'UTF-8'));

     $index->addDocument($doc);
     $index->commit();
     $index->optimize();
   }

   if($options['task']=='delete'){
    $hits = $index->find('id:'.$pro['id']);
    foreach ($hits as $hit) {
      $index->delete($hit->id);
    }
  }
}
/*end save document*/
}