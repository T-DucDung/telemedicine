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
  <div class="hoc clear">

    <nav id="mainav">
      <ul class="clear">
        <li><a href="../">Trang Chủ</a></li>
        <li><a class="drop" href="#">Giới thiệu</a>
          <ul>
            <li><a href="../thongtin/1">Sơ Đồ Bệnh Viện</a></li>
            <li><a href="../thongtin/2">Ban Giám Đốc</a></li>
            <li><a href="../thongtin/12">Thành Tích</a></li>
          </ul>
        </li>
        <li><a href="../thongtin">Tin tức</a></li>
        <li><a href="#">Chat với chúng tôi</a></li>
      </ul>
    </nav>

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
      <h1 class="logoname clear"><a href="#"><i class="fas fa-handshake"></i> <span>Shicso</span></a></h1>
      <p class="btmspace-30">Leo scelerisque at imperdiet in volutpat quis turpis praesent sit amet ante sed erat tempor consequat sed ut nibh nullam sagittis nunc a turpis nec [<a href="#">&hellip;</a>]</p>
      <ul class="faico clear">
        <li><a class="faicon-facebook" href="#"><i class="fab fa-facebook"></i></a></li>
        <li><a class="faicon-google-plus" href="#"><i class="fab fa-google-plus-g"></i></a></li>
        <li><a class="faicon-linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
        <li><a class="faicon-twitter" href="#"><i class="fab fa-twitter"></i></a></li>
        <li><a class="faicon-vk" href="#"><i class="fab fa-vk"></i></a></li>
      </ul>
    </div>
    <div class="one_quarter">
      <h6 class="heading">Felis lobortis pulvinar</h6>
      <ul class="nospace linklist contact">
        <li><i class="fas fa-map-marker-alt"></i>
          <address>
          Street Name &amp; Number, Town, Postcode/Zip
          </address>
        </li>
        <li><i class="fas fa-phone"></i> +00 (123) 456 7890</li>
        <li><i class="fas fa-fax"></i> +00 (123) 456 7890</li>
        <li><i class="far fa-envelope"></i> info@domain.com</li>
      </ul>
    </div>
    <div class="one_quarter">
      <h6 class="heading">In cursus placerat velit</h6>
      <ul class="nospace linklist">
        <li><a href="#">Maecenas sem fusce quis</a></li>
        <li><a href="#">Vel leo semper rhoncus ut</a></li>
        <li><a href="#">Suscipit pede eu diam class</a></li>
        <li><a href="#">Aptent taciti sociosqu ad</a></li>
      </ul>
    </div>
    <div class="one_quarter">
      <h6 class="heading">Litora torquent conubia</h6>
      <ul class="nospace linklist">
        <li>
          <article>
            <p class="nospace btmspace-10"><a href="#">Nostra per inceptos himenaeos cras augue est dictum quis&hellip;</a></p>
            <time class="block font-xs" datetime="2045-04-06">Friday, 6<sup>th</sup> April 2045</time>
          </article>
        </li>
        <li>
          <article>
            <p class="nospace btmspace-10"><a href="#">Suscipit vel est in pulvinar aliquam vulputate purus in tincidunt&hellip;</a></p>
            <time class="block font-xs" datetime="2045-04-05">Thursday, 5<sup>th</sup> April 2045</time>
          </article>
        </li>
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