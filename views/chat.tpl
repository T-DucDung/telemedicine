
  <div class="wrapper bgded overlay dark" style="background-image:url('../images/demo/backgrounds/01.png');">
    <div id="breadcrumb" class="hoc clear">
      <!-- ################################################################################################ -->
      <h6 class="heading">Tổ Tư Vấn Nhanh</h6>

      <!-- ################################################################################################ -->
    </div>
  </div>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div class="wrapper row3">
    <main class="hoc container clear" style="padding:0">
      <!-- main body -->
      <!-- ################################################################################################ -->
      <div class="content">
        <div id="frame">

          <div class="content">
            <div class="messages">
              <ul class="hcg">

              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="clear"></div>
    </main>
  </div>

  <!-- JAVASCRIPTS -->
  <script src="./layout/scripts/jquery.min.js"></script>
  <script src="./layout/scripts/jquery.backtotop.js"></script>
  <script src="./layout/scripts/jquery.mobilemenu.js"></script>

  <script src="./layout/scripts/hcg.js"></script>
  <script>
    let tree = new Tree()


    function Yes(e) {
      tree.Yes()
  $(e).parent().children().remove()
      $(".hcg").append(`<li class="replies">
    <img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
    <p>Có</p>
   </li>`)
   if(tree.IsEnd()){
    $(".hcg").append(`<li class="sent">
    <img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
    <div>
      ${tree.Text()}
    </div>
  </li>`)
   }
   else
   {
      $(".hcg").append(`<li class="sent">
    <img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
    <div>
      ${tree.Text()}
      <p onclick="Yes(this)">Có</p>
      <p onclick="No(this)">Không</p>
    </div>
  </li>`)
  }
    }
    function No(e) {
      tree.No()
      $(e).parent().children().remove()
      $(".hcg").append(`<li class="replies">
      <img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
      <p>Không</p>
      </li>`)
      if(tree.IsEnd()){
    $(".hcg").append(`<li class="sent">
    <img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
    <div>
      ${tree.Text()}
    </div>
  </li>`)
   }
   else
   {
      $(".hcg").append(`<li class="sent">
    <img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
    <div>
      ${tree.Text()}
      <p onclick="Yes(this)">Có</p>
      <p onclick="No(this)">Không</p>
    </div>
  </li>`)
  }
    }
    $(".hcg").append(`<li class="sent">
    <img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
    <div>
      ${tree.Text()}
      <p onclick="Yes(this)">Có</p>
      <p onclick="No(this)">Không</p>
    </div>
  </li>`)

  </script>