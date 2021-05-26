package controllers

import (
	"telemedicine/models"

	beego "github.com/beego/beego/v2/server/web"
)

type MainController struct {
	beego.Controller
}

// @router / [get]
func (c *MainController) Get() {
	logout := c.GetString("logout", "false")
	if logout == "true" {
		models.Id = -1
		models.Name = ""
		c.Redirect("/", 302)
	}
	if models.Id == -1 {
		c.Data["isLogin"] = false
	} else {
		c.Data["isLogin"] = true
		c.Data["name"] = models.Name
	}

	c.TplName = "index.tpl"
	return
}
