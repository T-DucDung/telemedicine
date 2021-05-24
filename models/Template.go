package models

import (
	"errors"
	"log"
	"math"
	"strconv"
	"sync"
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

var once = new(sync.Once)

func (this *Template) Get(id int) (res.ResTemp, error) {
	resIns := res.ResTemp{}
	err := db.QueryRow("select title from Template where Id = " + strconv.Itoa(id)).Scan(&resIns.Title)
	if err != nil {
		return res.ResTemp{}, err
	}
	results, err := db.Query("select Id, String, Type from Content where IdTemplate = " + strconv.Itoa(id))
	if err != nil {
		return res.ResTemp{}, err
	}
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

func (this *Template) Getlist(page int) ([]res.ResTempList, int, error) {
	results, err := db.Query("select Id, Title from Template where IsDecription = 0 order by Id desc")
	if err != nil {
		return []res.ResTempList{}, 0, err
	}
	detail := []res.ResTempList{}
	for results.Next() {
		detailIns := res.ResTempList{}
		err = results.Scan(&detailIns.Id, &detailIns.Title)
		if err != nil {
			return []res.ResTempList{}, 0, err
		}
		detail = append(detail, detailIns)
	}
	numPage := int(math.RoundToEven(float64(len(detail) / 5)))
	if page > numPage {
		return nil, 0, errors.New("err")
	}
	if 5*page > len(detail) {
		detail = detail[5*page-5 : len(detail)]
	} else {
		detail = detail[5*page-5 : 5*page]
	}

	for index, item := range detail {
		r, err := this.Get(item.Id)
		if err != nil {
			log.Println(err, "err models/Template.go:68")
		}
		for _, i := range r.Context {
			if i.Type == "string" {
				detail[index].Context = i.String
				break
			}
		}

		for _, i := range r.Context {
			if i.Type == "image" {
				detail[index].Image = i.String
				break
			}
			detail[index].Image = "News.jpg"
		}
	}

	//log.Println(detail)

	return detail, numPage, err
}
