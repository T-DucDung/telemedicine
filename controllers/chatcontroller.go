package controllers

import (
	beego "github.com/beego/beego/v2/server/web"
)

type ChatController struct {
	beego.Controller
}

// @router / [get]
func (c *ChatController) Get() {
	c.TplName = "chat.tpl"
	return
}
