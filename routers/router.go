package routers

import (
	"telemedicine/controllers"

	beego "github.com/beego/beego/v2/server/web"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Include( &controllers.GioiThieuController{})
}
