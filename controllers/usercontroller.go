package controllers

import (
	beego "github.com/beego/beego/v2/server/web"
	"log"
	"telemedicine/models"
)

type UserController struct {
	beego.Controller
}

// @router /thongtinnguoidung
func (c *UserController) Get() {
	if models.Id == -1 {
		c.Data["isLogin"] = false
		c.Redirect("/", 302)
		return
	} else {
		c.Data["isLogin"] = true
		c.Data["name"] = models.Name
	}
	c.TplName = "info.tpl"

	p :=models.Patient{}
	res, err := p.Get(models.Id)
	if err != nil {
		log.Println(err, "err controllers/usercontroller.go:28")
		return
	}
	//log.Println(res, "res controllers/usercontroller.go:31")

	c.Data["res"] = res
	return
}
