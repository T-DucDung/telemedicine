package routers

import (
	"telemedicine/controllers"

	beego "github.com/beego/beego/v2/server/web"
)

func init() {
	beego.Include( &controllers.MainController{})
	beego.Router("/chat", &controllers.ChatController{})
	beego.Router("/thongtinnguoidung", &controllers.UserController{})
	beego.Include(&controllers.GioiThieuController{})
}
