package controllers

import (
	"log"
	"telemedicine/req"

	beego "github.com/beego/beego/v2/server/web"
)

type AdminController struct {
	beego.Controller
}

// @router /admin/news [get]
func (c *AdminController) Get() {
	c.TplName = "admin-news.tpl"
	return
}

// @router /admin/news [post]
func (c *AdminController) Post() {
	reqIns := req.ReqNews{}
	err := c.ParseForm(&reqIns)
	if err != nil {
		return
	}
	log.Println(reqIns)



	c.TplName = "admin-news.tpl"
	return
}
