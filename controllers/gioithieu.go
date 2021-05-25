package controllers

import (
	beego "github.com/beego/beego/v2/server/web"
	"log"
	"telemedicine/models"
)

type GioiThieuController struct {
	beego.Controller
}

// @router /thongtin/:id
func (c *GioiThieuController) GetGt(id int) {
	if models.Id == -1 {
		c.Data["isLogin"] = false
	} else {
		c.Data["isLogin"] = true
		c.Data["name"] = models.Name
	}

	temp := models.Template{}
	res, err := temp.Get(id)
	if err != nil {
		log.Println(err, "err controllers/gioithieu.go:19")
		return
	}
	ran, err := temp.GetRand()
	if err != nil {
		log.Println(err, "err controllers/gioithieu.go:42")
		return
	}
	//log.Println(ran, "ran controllers/gioithieu.go:45")
	c.TplName = "thongtin.tpl"
	c.Data["res"] = res
	c.Data["ran"] = ran
	return
}

// @router /thongtin/
func (c *GioiThieuController) Get() {
	if models.Id == -1 {
		c.Data["isLogin"] = false
	} else {
		c.Data["isLogin"] = true
		c.Data["name"] = models.Name
	}

	page, err := c.GetInt("page", 1)
	log.Println(page, "page controllers/gioithieu.go:28")
	c.TplName = "tintuc.tpl"
	if err != nil || page <= 0 {
		return
	}
	temp := models.Template{}
	res, num, err := temp.Getlist(page)
	if err != nil {
		log.Println(err, "err controllers/gioithieu.go:19")
		return
	}
	//log.Println(num, "num controllers/gioithieu.go:40")
	if page < num && page > 1 {
		c.Data["truoc"] = true
		c.Data["sau"] = true
	} else if page == 1 {
		c.Data["truoc"] = false
		c.Data["sau"] = true
	} else if page == num {
		c.Data["truoc"] = true
		c.Data["sau"] = false
	}
	c.Data["res"] = res
	c.Data["numtrc"] = page - 1
	c.Data["numsau"] = page + 1
	return
}
