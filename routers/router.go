package routers

import (
	"telemedicine/controllers"

	beego "github.com/beego/beego/v2/server/web"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/login", &controllers.LoginController{})
	beego.Router("/chat", &controllers.ChatController{})
	beego.Router("/thongtinnguoidung", &controllers.UserController{})
	beego.Include(&controllers.GioiThieuController{})
	beego.Include(&controllers.AdminController{})
}
