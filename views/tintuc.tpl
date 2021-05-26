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
<!-- JAVASCRIPTS -->
<script src="../layout/scripts/jquery.min.js"></script>
<script src="../layout/scripts/jquery.backtotop.js"></script>
<script src="../layout/scripts/jquery.mobilemenu.js"></script>