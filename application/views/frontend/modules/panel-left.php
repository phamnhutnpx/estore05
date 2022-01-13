<div class="menu-pri">
    <div class="container">
        <div class="panel-left" style="background: #c40a0b;">
            <!--MOBILE-->
            <nav class="navbar navbar-default hidden-md hidden-lg" role="navigation">
                <div class="container-fluid" style="background-color: #c40a0b;">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar primary-color"></span>
                            <span class="icon-bar primary-color"></span>
                            <span class="icon-bar primary-color"></span>
                        </button>
                        <a class="navbar-brand" style="color: #fff;" href="#">Danh mục sản phẩm</a>
                    </div>
                    <div class="collapse navbar-collapse navbar-ex1-collapse hidden-md hidden-lg">
                        <?php
                        $listcat = $this->Mcategory->category_menu(0);
                        $html_menu='<ul class="nav navbar-nav">';
                        foreach ($listcat as $menu) {
                            $parentid = $menu['id'];
                            $submenu = $this->Mcategory->category_menu($parentid);
                            $html_menu.='<li class="dropdown">';
                            $html_menu.="<a href='san-pham/".$menu['link']."' class='dropdown-toggle' data-toggle='dropdown'>";
                            $html_menu.=$menu['name'];
                            if(!empty($submenu)){
                                $html_menu.='<i class="fa fa-angle-right pull-right" aria-hidden="true">';
                                $html_menu.='</i>';
                            }
                            $html_menu.="</a>";
                            if(count($submenu))
                            {
                                $html_menu.='<ul class="dropdown-menu">';
                                foreach ($submenu as $menu1){
                                    $html_menu.='<li>';
                                    $html_menu.="<a href='san-pham/".$menu1['link']."'> ".$menu1['name']."</a>";
                                    $html_menu.="</li>";    
                                }
                                $html_menu.="</ul>";
                            }
                            $html_menu.="</li>";
                        }
                        $html_menu.="</ul>";
                        echo $html_menu;
                        ?>  
                    </div><!-- /.navbar-collapse -->
                </div>
            </nav>
            <!--MD LG-->
        </div>
        <div class="col-md-12 col-lg-12 panel-right hidden-xs text-center" style="background: #c40a0b;">
            <ul class="menu-right" style="display: inline-block;">
                <li class="pull-left"><a href="">Trang chủ</a></li>
                <li class="pull-left"><a href="san-pham">Sản phẩm</a></li>
                <?php
                $listcat = $this->Mcategory->category_menu(0);
                $html='';
                foreach ($listcat as $menu) {
                    $html= '<li class="pull-left">';
                    $html.="<a href='san-pham/".$menu['link']." '>";
                    $html.=$menu['name'];
                    $html.="</a>";
                    $html.='</li>';
                    echo $html;
                }
                ?>
                <li class="pull-left"><a href="tin-tuc/1">Tin tức</a></li>
                <li class="pull-left"><a href="gioi-thieu">Giới thiệu</a></li>
                <li class="pull-left"><a href="lien-he">Liên hệ</a></li>
                <li class="pull-left"><a onclick="getPriceRequest()">Build PC</a></li>
            </ul>
        </div>
    </div>
</div>
<script>
    function getPriceRequest(){
        var input, i=0;
        do {
            input = Number(window.prompt('Hãy nhập số tiền bạn sẽ chi cho chiếc PC của bạn! (đơn vị: vnđ)','10000000'));
        } while (!Number(input) || Number(input)<=0);
        url = "<?= base_url().'buildpc?price=' ?>" + input;
        window.location.href = url;
        // console.log(url);
    }
</script>