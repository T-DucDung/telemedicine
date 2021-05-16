package controllers

import (
	"telemedicine/models"

	beego "github.com/beego/beego/v2/server/web"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	c.Data["Object"] = models.Object{A: "Nam", B: 21}
	c.Data["Array"] = []int{1, 2, 3, 4, 5, 6, 7}
	c.TplName = "index.tpl"
	return
}
