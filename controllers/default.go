package controllers

import (
	"encoding/json"
	"telemedicine/models"

	beego "github.com/beego/beego/v2/server/web"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Prepare() {
	userSession := c.GetSession("user")

	if userSession == nil {
		c.Data["isLogin"] = false
	} else {
		var user models.Patient
		bytedata, _ := json.Marshal(userSession)
		json.Unmarshal(bytedata, &user)
		c.Data["isLogin"] = true
		c.Data["name"] = user.Name
	}
	c.Layout = "layout.tpl"
}

// @router / [get]
func (c *MainController) Get() {
	logout := c.GetString("logout", "false")
	if logout == "true" {
		c.DelSession("user")
		c.Redirect("/", 302)
	}

	c.TplName = "index.tpl"
	return
}
