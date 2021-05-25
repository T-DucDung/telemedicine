package res

type ResPatient struct {
	Id      int       `json:"id"`
	Name    string    `json:"name"`
	Phone   string    `json:"phone"`
	Address string    `json:"address"`
	ListHis []History `json:"list_his"`
}

type History struct {
	Id          int    `json:"id"`
	CreateAt    string  `json:"create_at"`
	Description string `json:"description"`
}
