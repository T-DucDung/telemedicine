package main

import (
	"telemedicine/models"
	_ "telemedicine/routers"

	"github.com/beego/beego/v2/server/web"

	beego "github.com/beego/beego/v2/server/web"
)

func main() {

	web.SetStaticPath("/layout", "layout")
	web.SetStaticPath("/images", "images")
	web.SetStaticPath("/plugin", "plugin")
	web.SetStaticPath("/css", "css")
	web.SetStaticPath("/scss", "scss")
	web.SetStaticPath("/js", "js")

	web.BConfig.WebConfig.Session.SessionOn = true

	models.InitConnectDataBase()
	beego.Run()
}
