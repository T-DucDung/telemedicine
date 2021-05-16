package models

import (
	"strconv"
	"telemedicine/res"
)

type Template struct {
	Id    int    `json:"id"`
	Title string `json:"title"`
}

type Context struct {
	Id     int    `json:"id"`
	String string `json:"string"`
	Type   string `json:"type"`
}

func (this *Template) Get(id int) (res.ResTemp, error) {
	resIns := res.ResTemp{}
	err := db.QueryRow("select title from Template where Id = " + strconv.Itoa(id)).Scan(resIns.Title)
	if err != nil {
		return res.ResTemp{}, err
	}
	results, err := db.Query("select Id, String, Type from Context where IdTemplate = " + strconv.Itoa(id))
	detail := []res.DetailResTemp{}
	for results.Next() {
		detailIns := res.DetailResTemp{}
		err = results.Scan(&detailIns.Id, &detailIns.String, &detailIns.Type)
		if err != nil {
			return res.ResTemp{}, err
		}
		detail = append(detail, detailIns)
	}
	resIns.Context = detail
	return resIns, nil
}
