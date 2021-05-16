package res

type ResDepartment struct {
	Id          int                   `json:"id"`
	Name        string                `json:"name"`
	Phone       string                `json:"phone"`
	Description string                `json:"description"`
	ListCeo     []DetailResDepartment `json:"list_ceo"`
}

type DetailResDepartment struct {
	Id           int    `json:"id"`
	Name         string `json:"name"`
	Phone        string `json:"phone"`
	Address      string `json:"address"`
	IdDepartment string `json:"id_department"`
}