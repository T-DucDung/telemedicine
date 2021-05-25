package controllers

import (
	beego "github.com/beego/beego/v2/server/web"
	"telemedicine/models"
)

type ChatController struct {
	beego.Controller
}

// @router / [get]
func (c *ChatController) Get() {
	if models.Id == -1 {
		c.Data["isLogin"] = false
	} else {
		c.Data["isLogin"] = true
		c.Data["name"] = models.Name
	}

	c.TplName = "chat.tpl"
	return
}
