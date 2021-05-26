package controllers

import (
	"encoding/json"
	"telemedicine/models"

	beego "github.com/beego/beego/v2/server/web"
)

type ChatController struct {
	beego.Controller
}

func (c *ChatController) Prepare() {
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
func (c *ChatController) Get() {

	c.TplName = "chat.tpl"
	return
}
