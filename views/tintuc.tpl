<!DOCTYPE html>
<!--
Template Name: Shicso
Author: <a href="https://www.os-templates.com/">OS Templates</a>
Author URI: https://www.os-templates.com/
Copyright: OS-Templates.com
Licence: Free to use under our free template licence terms
Licence URI: https://www.os-templates.com/template-terms
-->
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>Shicso | Pages | Full Width</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<div class="wrapper row0">
  <header id="header" class="hoc clear">

    <div id="logo" class="one_quarter first">
      <h1 class="logoname clear"><a href="#"><i class="fas fa-handshake"></i> <span> Shicso</span></a></h1>

    </div>
    <div class="three_quarter">
          <ul class="nospace clear">
            <li class="one_third first">
              <div class="block clear"><a href="#"><i class="fas fa-phone"></i></a> <span><strong>Gọi chúng tôi tại:</strong> +00 (123) 456 7890</span></div>
            </li>
            <li class="one_third">
              <div class="block clear"><a href="#"><i class="fas fa-envelope"></i></a> <span><strong>Email:</strong> support@domain.com</span></div>
            </li>
            <li class="one_third">
              <div class="block clear"><a href="#"><i class="fas fa-clock"></i></a> <span><strong> Thứ hai - Chủ nhật:</strong> 8 giờ - 21 giờ</span></div>
            </li>
          </ul>
        </div>

  </header>
</div>
<div class="wrapper row1">
  <div class="hoc clear" style="display: flex;align-items: center;justify-content: space-between;">
      <nav id="mainav" style="width: 70%;">
        <ul class="clear">
          <li><a href="./">Trang Chủ</a></li>
          <li><a class="drop" href="#">Giới thiệu</a>
            <ul>
              <li><a href="./thongtin/15">Giới Thiệu Bệnh Viện</a></li>
              <li><a href="./thongtin/16">Nhiệm Vụ Của Bệnh Viện</a></li>
              <li><a href="./thongtin/1">Sơ Đồ Bệnh Viện</a></li>
              <li><a href="./thongtin/2">Ban Giám Đốc</a></li>
              <li><a href="./thongtin/17">Phó Giám Đốc</a></li>
              <li><a href="./thongtin/12">Thành Tích</a></li>
            </ul>
          </li>
           <li><a class="drop" href="#">Về Các Phòng Ban</a>
              <ul>
                  <li><a href="./thongtin/18">Khoa Khám bệnh</a></li>
                  <li><a href="./thongtin/19">Khoa Cấp Cứu</a></li>
                  <li><a href="./thongtin/20">Khoa khám bệnh theo yêu cầu</a></li>
                  <li><a href="./thongtin/21">Phòng Vật tư- Trang thiết bị Y tế</a></li>
                  <li><a href="./thongtin/22">Khoa Kiểm soát nhiễm khuẩn</a></li>
                  <li><a href="./thongtin/23">Khoa Vi rút - Ký sinh trùng</a></li>
              </ul>
          </li>
          <li class="active" ><a href="../thongtin">Tin tức</a></li>
          <li><a href="./chat">Chat với chúng tôi</a></li>
        </ul>
      </nav>
      {{if .isLogin}}
          <nav id="mainav" style="width: 30%;text-align: right;">
          <ul class="clear">
              <li><a class="drop" href="#">{{.name}}</a>
                  <ul>
                      <li><a style="text-align: left;" href="./thongtinnguoidung">Thông Tin Người Dùng</a></li>
                      <li><a style="text-align: left;" href="../?logout=true">Đăng Xuất</a></li>
                  </ul>
              </li>
          </ul>
          </nav>
      {{else}}
       <div style="width: 30%;text-align: right;"><a href="./login">ĐĂNG NHẬP</a></div>
       {{end}}
    </div>
</div>
<div class="wrapper bgded overlay dark" style="background-image:url('/images/demo/backgrounds/01.png');">
  <div id="breadcrumb" class="hoc clear">

        <h1 class="heading">Trang Tổng Hợp Tin Tức</h1>

  </div>
</div>
<div class="wrapper row3">
  <main class="hoc container clear">
    <!-- main body -->

    <div class="content">
      <div id="comments">
      <ul>
        {{range $key, $val := .res}}
            <li>
            <div class="news">
                <a href="./thongtin/{{$val.Id}}" style="display: flex;">
                    <img src="/images/decription/{{$val.Image}}" style="width: 300px;border-radius: 5px;height: 200px;"> </img>
                    <div style="margin-left: 50px;">
                        <h1>{{$val.Title}}</h1>
                        <div style="color: black;font-family: charter, Georgia, Cambria, `Times New Roman`, Times, serif;font-size: 16px;">{{$val.Context}}</div>
                    </div>
                </a>
            </div>
            </li>
        {{end}}
      </ul>
      <div class="paginate" style="text-align: center;">
        {{if .truoc}}
        <a href="./thongtin?page={{.numtrc}}" class="previous" style="text-decoration: none;display: inline-block;padding: 8px 16px;background-color: #f1f1f1;color: black;">&laquo; Trang trước</a>
        {{end}}
        {{if .sau}}
        <a href="./thongtin?page={{.numsau}}" class="next" style="text-decoration: none;display: inline-block;padding: 8px 16px;background-color: #f1f1f1;color: black;">Trang Sau &raquo;</a>
        {{end}}
      </div>
      </div>
    </div>

    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<div class="wrapper row4">
  <footer id="footer" class="hoc clear">

        <div class="one_quarter first">
          <h1 class="logoname clear"><a href="../index.html"><i class="fas fa-handshake"></i> <span>Shicso</span></a></h1>
          <p class="btmspace-30">Dịch vụ chăm sóc sức khỏe đi đầu thế giới Với sự hỗ trợ của các
            chuyên gia đầu ngành trên toàn thế giới về các vấn đề trong y học [<a href="#">&hellip;</a>]</p>
          <ul class="faico clear">
            <li><a class="faicon-facebook" href="#"><i class="fab fa-facebook"></i></a></li>
            <li><a class="faicon-google-plus" href="#"><i class="fab fa-google-plus-g"></i></a></li>
            <li><a class="faicon-linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
            <li><a class="faicon-twitter" href="#"><i class="fab fa-twitter"></i></a></li>
            <li><a class="faicon-vk" href="#"><i class="fab fa-vk"></i></a></li>
          </ul>
        </div>
        <div class="one_quarter">
          <h6 class="heading">Thông tin liên hệ</h6>
          <ul class="nospace linklist contact">
            <li><i class="fas fa-map-marker-alt"></i>
              <address>
                Hà Nội
              </address>
            </li>
            <li><i class="fas fa-phone"></i> +00 (123) 456 7890</li>
            <li><i class="fas fa-fax"></i> +00 (123) 456 7890</li>
            <li><i class="far fa-envelope"></i> info@domain.com</li>
          </ul>
        </div>
      </footer>
</div>
<div class="wrapper row5">
  <div id="copyright" class="hoc clear">

    <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="https://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>

  </div>
</div>
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="../layout/scripts/jquery.min.js"></script>
<script src="../layout/scripts/jquery.backtotop.js"></script>
<script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>