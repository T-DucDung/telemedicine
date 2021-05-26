<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>Shicso | Pages | Full Width</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link href="/layout/styles/chat.css" rel="stylesheet" type="text/css" media="all">
</head>
<body>
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
            <li><a href="/">Trang Chủ</a></li>
            <li><a class="drop" href="#">Giới thiệu</a>
              <ul>
                <li><a href="/thongtin/15">Giới Thiệu Bệnh Viện</a></li>
                <li><a href="/thongtin/16">Nhiệm Vụ Của Bệnh Viện</a></li>
                <li><a href="/thongtin/1">Sơ Đồ Bệnh Viện</a></li>
                <li><a href="/thongtin/2">Ban Giám Đốc</a></li>
                <li><a href="/thongtin/17">Phó Giám Đốc</a></li>
                <li><a href="/thongtin/12">Thành Tích</a></li>
              </ul>
            </li>
             <li><a class="drop" href="#">Về Các Phòng Ban</a>
                <ul>
                    <li><a href="/thongtin/18">Khoa Khám bệnh</a></li>
                    <li><a href="/thongtin/19">Khoa Cấp Cứu</a></li>
                    <li><a href="/thongtin/20">Khoa khám bệnh theo yêu cầu</a></li>
                    <li><a href="/thongtin/21">Phòng Vật tư- Trang thiết bị Y tế</a></li>
                    <li><a href="/thongtin/22">Khoa Kiểm soát nhiễm khuẩn</a></li>
                    <li><a href="/thongtin/23">Khoa Vi rút - Ký sinh trùng</a></li>
                </ul>
            </li>
            <li><a href="/thongtin">Tin tức</a></li>
            <li><a href="/chat">Chat với chúng tôi</a></li>
          </ul>
        </nav>
        {{if .isLogin}}
            <nav id="mainav" style="width: 30%;text-align: right;">
            <ul class="clear">
                <li><a class="drop" href="#">{{.name}}</a>
                    <ul>
                        <li><a style="text-align: left;" href="/thongtinnguoidung">Thông Tin Người Dùng</a></li>
                        <li><a style="text-align: left;" href="/?logout=true">Đăng Xuất</a></li>
                    </ul>
                </li>
            </ul>
            </nav>
        {{else}}
         <div style="width: 30%;text-align: right;"><a href="/login">ĐĂNG NHẬP</a></div>
         {{end}}
      </div>
</div>