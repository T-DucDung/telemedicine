
<div class="wrapper row3">
  <main class="hoc container clear">
    <!-- main body -->

    <div class="content">
      <div id="comments">
      <div style="text-align: center;">
      <h1 style="font-size: 40px;">Thông tin của bạn </h1>
      </div>
      <div class= "string" style="color: black;font-family: charter, Georgia, Cambria, `Times New Roman`, Times, serif;font-size: 16px;">
           Họ và Tên: {{.res.Name}}
      </div>
      <div class= "string" style="color: black;font-family: charter, Georgia, Cambria, `Times New Roman`, Times, serif;font-size: 16px;">
           Số Điện Thoại: {{.res.Phone}}
      </div>
      <div class= "string" style="color: black;font-family: charter, Georgia, Cambria, `Times New Roman`, Times, serif;font-size: 16px;">
           Địa Chỉ: {{.res.Address}}
      </div>
      <div style="text-align: center;">
            <h1 style="font-size: 40px; margin-top: 25px;">Lịch sử khám bệnh của bạn </h1>
            </div>
      <ul>
        {{range $key, $val := .res.ListHis}}
        <li>
        <div style="display: flex;" >
            <div class= "string" style="color: black;font-family: charter, Georgia, Cambria, `Times New Roman`, Times, serif;font-size: 16px;margin-right: 45px;">
                Lần thứ {{$val.Id}}
            </div>
            <div class= "string" style="color: black;font-family: charter, Georgia, Cambria, `Times New Roman`, Times, serif;font-size: 16px;">
                Thời Gian  {{$val.CreateAt}}
            </div>
            </div>
            <div class= "string" style="color: black;font-family: charter, Georgia, Cambria, `Times New Roman`, Times, serif;font-size: 16px;">
                Nội Dung Khám
            </div>
            <div class= "string" style="color: black;font-family: charter, Georgia, Cambria, `Times New Roman`, Times, serif;font-size: 16px;">
                {{$val.Description}}
            </div>
        </li>
        {{end}}
      </ul>
      </div>
    </div>
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>

<!-- JAVASCRIPTS -->
<script src="../layout/scripts/jquery.min.js"></script>
<script src="../layout/scripts/jquery.backtotop.js"></script>
<script src="../layout/scripts/jquery.mobilemenu.js"></script>