package controllers

import (
	"encoding/json"
	beego "github.com/beego/beego/v2/server/web"
	"log"
	"telemedicine/models"
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

// @router /login/ [get]
func (c *MainController) GetLogin() {
	c.TplName = "login.tpl"
	return
}

// @router /login/ [post]
func (c *MainController) PostLogin() {
	log.Println("here controllers/default.go:41")
	body := struct {
		InputText     string `json:"inputText"`
		InputPassword string `json:"inputPassword"`
	}{}
	err := json.Unmarshal(c.Ctx.Input.RequestBody, &body)
	if err != nil {
		log.Println(err, "err controllers/default.go:47")
		c.Redirect("/login", 302)
		return
	}

	p := models.Patient{}
	ok, err := p.Login(body.InputText, body.InputPassword)
	if err != nil || ok == false {
		log.Println(err, "err controllers/default.go:54")
		c.Redirect("/login", 302)
		return
	}

	c.Redirect("/", 302)
	return
}
