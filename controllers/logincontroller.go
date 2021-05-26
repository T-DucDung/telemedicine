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
	if models.Id != -1 {
		c.Redirect("/", 302)
	}
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
	//log.Println(u, "u controllers/logincontroller.go:31")

	p := models.Patient{}
	ok, err := p.Login(u.InputText, u.InputPassword)
	if err != nil || ok == false {
		log.Println(err, "err controllers/logincontroller.go:36")
		c.Redirect("/login", 302)
		return
	}

	c.Redirect("/", 302)
	return
}
