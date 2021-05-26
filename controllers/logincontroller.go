package controllers

import (
	"log"
	"telemedicine/models"
	"telemedicine/req"

	beego "github.com/beego/beego/v2/server/web"
)

type LoginController struct {
	beego.Controller
}

// @router /login/ [get]
func (c *LoginController) Get() {
	c.TplName = "login.tpl"
	return
}

// @router /login/ [post]
func (c *LoginController) Post() {
	u := req.LoginReq{}
	if err := c.ParseForm(&u); err != nil {
		c.Redirect("/login", 302)
		return
	}

	p := models.Patient{}
	ok, err := p.Login(u.InputText, u.InputPassword)
	if err != nil || ok == false {
		log.Println(err, "err controllers/default.go:54")
		c.Redirect("/login", 302)
		return
	}

	c.Redirect("/", 302)
	return
}
