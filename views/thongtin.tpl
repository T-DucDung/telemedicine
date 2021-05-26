<div class="wrapper bgded overlay dark" style="background-image:url('/images/demo/backgrounds/01.png');">
  <div id="breadcrumb" class="hoc clear"> 

    <h1 class="heading">{{.res.Title}}</h1>

  </div>
</div>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->

    <div class="content">
      <div id="comments">
      <ul>
        {{range $key, $val := .res.Context}}
            {{if eq $val.Type "image"}}
            <div class="image" style="text-align: center;margin-bottom: 40px;margin-top: 40px;">
                <img src="/images/decription/{{$val.String}}">
            </div>
            {{else}}

                <div class= "string" style="color: black;font-family: charter, Georgia, Cambria, `Times New Roman`, Times, serif;font-size: 16px;">
                    {{$val.String}}
                </div>

            {{end}}
        {{end}}
      </ul>
      </div>
    </div>

    <div style="margin-top: 100px;text-align: center; margin-bottom: 50px;">
        <h1 style="font-size: 30px;">Một Số Thông Tin Khác</h1>
    </div>

    <div class="rand" style="display: flex; margin-bottom: 90px;">
         {{range $key, $val := .ran}}
         <a style="width: 24%; text-align: center; margin: 10px 10px 10px 10px;" href="../thongtin/{{$val.Id}}">
         <div > <img style="height: 200px;" src="/images/decription/{{$val.Image}}"> </div>
         <div style="color: black;font-family: charter, Georgia, Cambria, `Times New Roman`, Times, serif;font-size: 16px; margin-top: 10px;"> {{$val.Title}} </div>
         </a>
         {{end}}
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