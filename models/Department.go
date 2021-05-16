package models

import (
	"strconv"
	"telemedicine/res"
)

type Department struct {
	Id          int    `json:"id"`
	Name        string `json:"name"`
	Phone       string `json:"phone"`
	Description string `json:"description"`
}

type Ceo struct {
	Id           int    `json:"id"`
	Name         string `json:"name"`
	Phone        string `json:"phone"`
	Address      string `json:"address"`
	Image        string `json:"image"`
	IdDepartment int    `json:"id_department"`
}

func (this *Department) Get(id int) (res.ResDepartment, error) {
	resIns := res.ResDepartment{}
	err := db.QueryRow("select Name, Phone, Description from Ceo where Id = " + strconv.Itoa(id)).Scan(resIns.Id)
	if err != nil {
		return res.ResDepartment{}, err
	}
	results, err := db.Query("select Id, Name, Phone, Address from Ceo where IdDepartment = " + strconv.Itoa(id))
	detail := []res.DetailResDepartment{}
	for results.Next() {
		detailIns := res.DetailResDepartment{}
		err = results.Scan(&detailIns.Id, &detailIns.Name, &detailIns.Phone, &detailIns.Address)
		if err != nil {
			return res.ResDepartment{}, err
		}
		detail = append(detail, detailIns)
	}
	resIns.ListCeo = detail
	return resIns, nil
}
