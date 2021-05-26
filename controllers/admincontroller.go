package controllers

import (
	"log"

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
	log.Println(c.Ctx.Request.Form)
	c.TplName = "admin-news.tpl"
	return
}
