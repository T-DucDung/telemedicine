package models

import (
	"strconv"
	"telemedicine/res"
)

type Patient struct {
	Id      int    `json:"id"`
	Name    string `json:"name"`
	Phone   string `json:"phone"`
	Address string `json:"address"`
}

type History struct {
	Id          int    `json:"id"`
	IdPatient   int    `json:"id_patient"`
	CreateAt    int64  `json:"create_at"`
	Description string `json:"description"`
}

func (this *Patient) Get(id int) (res.ResPatient, error){
	resIns := res.ResPatient{}
	err := db.QueryRow("select Name, Phone, Address from Patient where Id = " + strconv.Itoa(id)).Scan(resIns.Id)
	if err != nil {
		return res.ResPatient{}, err
	}
	results, err := db.Query("select Id, CreateAt, Description from History where IdPatient = " + strconv.Itoa(id))
	detail := []res.History{}
	for results.Next() {
		detailIns := res.History{}
		err = results.Scan(&detailIns.Id, &detailIns.CreateAt, &detailIns.Description)
		if err != nil {
			return res.ResPatient{}, err
		}
		detail = append(detail, detailIns)
	}
	resIns.ListHis = detail
	return resIns, nil
}
