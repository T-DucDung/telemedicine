<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="./layout/styles/login.css">
    <title>Document</title>
</head>
<body>
    <div class="container-fluid">
        <div class="row no-gutter">
          <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
          <div class="col-md-8 col-lg-6">
            <div class="login d-flex align-items-center py-5">
              <div class="container">
                <div class="row">
                  <div class="col-md-9 col-lg-8 mx-auto">
                    <h3 class="login-heading mb-4">Thông tin đăng nhập</h3>
                    <form action="./login" method="post">
                      <div class="form-label-group">
                        <input type="text" id="inputText" class="form-control" placeholder="Số điện thoại" required >
                        <label for="inputText">Số điện thoại</label>
                      </div>

                      <div class="form-label-group">
                        <input type="password" id="inputPassword" class="form-control" placeholder="Mật khẩu" required>
                        <label for="inputPassword">Mật khẩu</label>
                      </div>


                      <button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Đăng nhập</button>

                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
</body>
</html>