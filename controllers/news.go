package controllers

import beego "github.com/beego/beego/v2/server/web"

type NewsController struct {
	beego.Controller
}

// @router / [get]
func (c *NewsController) Get() {
	c.TplName = "news.tpl"
	return
}
