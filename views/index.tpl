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
<title>Shicso</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
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
        <li class="active"><a href="./">Trang Chủ</a></li>
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
        <li><a href="./thongtin">Tin tức</a></li>
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
<div class="wrapper bgded overlay" style="background-image:url('images/Thumbnail.jpg');">
  <div id="pageintro" class="hoc clear"> 

    <article>
      <h3 class="heading">Chào mừng đến với bệnh viện</h3>
      <footer>
        <ul class="nospace inline pushright">
          <li><a class="btn" href="./thongtin/15">Thông tin</a></li>
          <li><a class="btn inverse" href="./thongtin/16">Nhiệm Vụ</a></li>
        </ul>
      </footer>
    </article>

  </div>
</div>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->

    <article class="group">
      <div class="one_half first">
        <h6 class="heading underline font-x2">Hệ thống giường bệnh chất lượng cao</h6>
        <p>Hệ thống giường bệnh được nhập khẩu từ nước ngoài mang đến cho người bệnh cảm giác thoải mái dù phải nằm trong thời gian dài.</p>
        <footer><a class="btn" href="#">Xem thêm</a></footer>
      </div>
      <div class="one_half"><a class="imgover" href="#"><img class="borderedbox inspace-10" src="images/main-1.jpg" alt=""></a></div>
    </article>

    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<div class="wrapper bgded overlay dark" style="background-image:url('images/banner/1.jpg');">
  <div id="shout" class="hoc container clear"> 

    <article>
      <h3 class="heading font-x2">Dịch vụ chăm sóc sức khỏe đi đầu thế giới</h3>
      <p>Với sự hỗ trợ của các chuyên gia đầu ngành trên toàn thế giới về các vấn đề trong y học. Chúng tôi đảm bảo cung cấp các dịch vụ như các bệnh viện hàng đầu.</p>
    </article>

  </div>
</div>
<div class="wrapper row3">
  <section id="services" class="hoc container clear"> 

    <div class="center btmspace-80">
      <h6 class="heading underline font-x2">Tin tức</h6>
    </div>
    <ul class="nospace group">
      <li class="one_third">
        <article><a href="#"><i class="fas fa-globe"></i></a>
          <h6 class="heading">Tin Quốc Tế</h6>
          <p>Các thông tin về tình hình y tế trên toàn thế giới.</p>
          <footer><a href="#"><i class="fas fa-arrow-right"></i></a></footer>
        </article>
      </li>
      <li class="one_third">
        <article><a href="#"><i class="fas fa-medkit"></i></a>
          <h6 class="heading">Tin Chuyên Môn</h6>
          <p>Các thông tin chuyên ngành, kĩ thuật mới trong điều trị và phòng ngừa</p>
          <footer><a href="#"><i class="fas fa-arrow-right"></i></a></footer>
        </article>
      </li>
      <li class="one_third">
        <article><a href="#"><i class="far fa-calendar-minus"></i></a>
          <h6 class="heading">Tin Trong Ngày</h6>
          <p>Tin tức trong ngày về tình hình y tế trong nước và quốc tế.</p>
          <footer><a href="#"><i class="fas fa-arrow-right"></i></a></footer>
        </article>
      </li>
    </ul>

  </section>
</div>
<div class="wrapper bgded overlay light" style="background-image:url('images/banner/2.jpg');background-position: center">
  <section id="cta" class="hoc container clear"> 

    <h6 class="three_quarter first">Đội ngũ y bác sĩ</h6>

  </section>
</div>
<div class="wrapper row3">
  <section id="team" class="hoc container clear"> 

    <div class="center btmspace-80">
      <h6 class="heading underline font-x2">Cán bộ tiêu biểu</h6>
    </div>
    <ul class="nospace group">
      <li class="one_quarter first">
        <article>
          <figure><a class="imgover" href="#"><img src="images/people/1.jpg" alt=""></a>
            <figcaption class="heading">Mai Trọng Khoa</figcaption>
          </figure>
          <em>Phó Giám đốc phụ trách Chuyên môn</em>
          <footer>
            <ul class="faico clear">
              <li><a class="faicon-facebook" href="#"><i class="fab fa-facebook"></i></a></li>
              <li><a class="faicon-google-plus" href="#"><i class="fab fa-google-plus-g"></i></a></li>
              <li><a class="faicon-linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
              <li><a class="faicon-twitter" href="#"><i class="fab fa-twitter"></i></a></li>
              <li><a class="faicon-vk" href="#"><i class="fab fa-vk"></i></a></li>
            </ul>
          </footer>
        </article>
      </li>
      <li class="one_quarter">
        <article>
          <figure><a class="imgover" href="#"><img src="images/people/2.jpg" alt=""></a>
            <figcaption class="heading">Nguyễn Quang Tuấn</figcaption>
          </figure>
          <em>Giám đốc bệnh viện</em>
          <footer>
            <ul class="faico clear">
              <li><a class="faicon-facebook" href="#"><i class="fab fa-facebook"></i></a></li>
              <li><a class="faicon-google-plus" href="#"><i class="fab fa-google-plus-g"></i></a></li>
              <li><a class="faicon-linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
              <li><a class="faicon-twitter" href="#"><i class="fab fa-twitter"></i></a></li>
              <li><a class="faicon-vk" href="#"><i class="fab fa-vk"></i></a></li>
            </ul>
          </footer>
        </article>
      </li>
      <li class="one_quarter">
        <article>
          <figure><a class="imgover" href="#"><img src="images/people/3.jpg" alt=""></a>
            <figcaption class="heading">Đỗ Doãn Lợi</figcaption>
          </figure>
          <em>Phó Giám đốc phụ trách Chuyên môn</em>
          <footer>
            <ul class="faico clear">
              <li><a class="faicon-facebook" href="#"><i class="fab fa-facebook"></i></a></li>
              <li><a class="faicon-google-plus" href="#"><i class="fab fa-google-plus-g"></i></a></li>
              <li><a class="faicon-linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
              <li><a class="faicon-twitter" href="#"><i class="fab fa-twitter"></i></a></li>
              <li><a class="faicon-vk" href="#"><i class="fab fa-vk"></i></a></li>
            </ul>
          </footer>
        </article>
      </li>
      <li class="one_quarter">
        <article>
          <figure><a class="imgover" href="#"><img src="images/people/4.jpg" alt=""></a>
            <figcaption class="heading">Nguyễn Ngọc Hiền</figcaption>
          </figure>
          <em>Phó Giám đốc Phụ trách Kinh tế y tế</em>
          <footer>
            <ul class="faico clear">
              <li><a class="faicon-facebook" href="#"><i class="fab fa-facebook"></i></a></li>
              <li><a class="faicon-google-plus" href="#"><i class="fab fa-google-plus-g"></i></a></li>
              <li><a class="faicon-linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
              <li><a class="faicon-twitter" href="#"><i class="fab fa-twitter"></i></a></li>
              <li><a class="faicon-vk" href="#"><i class="fab fa-vk"></i></a></li>
            </ul>
          </footer>
        </article>
      </li>
    </ul>

  </section>
</div>
<div class="wrapper row3">
  <section id="testimonials" class="hoc container clear"> 

    <div class="center btmspace-80">
      <h6 class="heading underline font-x2">Đánh giá của bệnh nhân</h6>
    </div>
    <ul class="nospace group btmspace-80">
      <li class="one_third first">
        <blockquote>Bệnh viện sạch sẽ, đội ngũ y bác sĩ nhiệt tình</blockquote>
        <figure class="clear"><img class="circle comment" src="images/dummy.jpg" alt="">
          <figcaption>
            <h6 class="heading">Nguyễn</h6>
            <em>Bệnh nhân</em></figcaption>
        </figure>
      </li>
      <li class="one_third">
        <blockquote>Môi trường bệnh viện yên tĩnh, </blockquote>
        <figure class="clear"><img class="circle comment" src="images/dummy.jpg" alt="">
          <figcaption>
            <h6 class="heading">Văn</h6>
            <em>Bệnh nhân</em></figcaption>
        </figure>
      </li>
      <li class="one_third">
        <blockquote>Không khí trong lành, thích hợp cho người bệnh phục hồi sức khỏe</blockquote>
        <figure class="clear"><img class="circle comment" src="images/dummy.jpg" alt="">
          <figcaption>
            <h6 class="heading">Trần</h6>
            <em>Bệnh nhân</em></figcaption>
        </figure>
      </li>
    </ul>
    <footer><a class="btn" href="#">Xem tiếp &raquo;</a></footer>

  </section>
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
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>