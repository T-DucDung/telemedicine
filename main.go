package main

import (
	_ "telemedicine/routers"

	"github.com/beego/beego/v2/server/web"
	beego "github.com/beego/beego/v2/server/web"
)

func main() {

	web.SetStaticPath("/layout", "layout")
	web.SetStaticPath("/images", "images")

	beego.Run()
}
