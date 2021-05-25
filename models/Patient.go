package models

import (
	"crypto/md5"
	"encoding/hex"
	"strconv"
	"telemedicine/res"
)

var Id = 1
var Name = "Trần Văn An"

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

func (this *Patient) Get(id int) (res.ResPatient, error) {
	resIns := res.ResPatient{}
	err := db.QueryRow("select Name, Phone, Address from Patient where Id = " + strconv.Itoa(id)).Scan(&resIns.Id)
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

func (this *Patient) Login(sdt, pass string) (bool, error) {
	passIns := ""
	idIns := -1
	nameIns := ""
	err := db.QueryRow("select Pass, Id, Name from Patient where Phone = '"+sdt+"'").Scan(&passIns, &idIns, &nameIns)
	if err != nil {
		return false, err
	}

	if GetMD5Hash(pass) == passIns {
		Id = idIns
		Name = nameIns
		return true, nil
	}
	return false, nil
}

func GetMD5Hash(text string) string {
	hasher := md5.New()
	hasher.Write([]byte(text))
	return hex.EncodeToString(hasher.Sum(nil))
}
