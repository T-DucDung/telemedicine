package controllers

import (
	"encoding/json"
	"log"
	"telemedicine/models"

	beego "github.com/beego/beego/v2/server/web"
)

type UserController struct {
	beego.Controller
}

func (c *UserController) Prepare() {
	userSession := c.GetSession("user")
	var user models.Patient
	if userSession == nil {
		c.Data["isLogin"] = false
	} else {
		bytedata, _ := json.Marshal(userSession)
		json.Unmarshal(bytedata, &user)
		c.Data["isLogin"] = true
		c.Data["name"] = user.Name
	}
	c.Layout = "layout.tpl"
}

// @router /thongtinnguoidung
func (c *UserController) Get() {
	userSession := c.GetSession("user")
	var user models.Patient
	if userSession == nil {
		c.Data["isLogin"] = false
	} else {
		bytedata, _ := json.Marshal(userSession)
		json.Unmarshal(bytedata, &user)
		c.Data["isLogin"] = true
		c.Data["name"] = user.Name
	}
	c.TplName = "info.tpl"

	p := models.Patient{}
	res, err := p.Get(user.Id)
	if err != nil {
		log.Println(err, "err controllers/usercontroller.go:28")
		return
	}
	//log.Println(res, "res controllers/usercontroller.go:31")

	c.Data["res"] = res
	return
}
