package req

type ReqDepartment struct {
	Id      int      `json:"id" `
	Name    string   `json:"name"`
	Phone   string   `json:"phone"`
	Des     string   `json:"des"`
	ListCeo []ReqCeo `json:"list_ceo"`
}

type ReqCeo struct {
	Id      int    `json:"id"`
	Name    string `json:"name"`
	Phone   string `json:"phone"`
	Address string `json:"address"`
	Image   string `json:"image"`
}

type LoginReq struct {
	InputText     string `json:"inputText"`
	InputPassword string `json:"inputPassword"`
}
