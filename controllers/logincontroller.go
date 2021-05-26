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
	userSession := c.GetSession("user")
	if userSession != nil {
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
	user, err := p.Login(u.InputText, u.InputPassword)

	if err != nil {
		log.Println(err, "err controllers/logincontroller.go:36")
		c.Redirect("/login", 302)
		return
	}

	err = c.SetSession("user", user)
	if err != nil {
		log.Println(err, "err controllers/logincontroller.go:36")
		c.Redirect("/login", 302)
		return
	}

	c.Redirect("/", 302)
	return
}
