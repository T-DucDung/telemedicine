package res

type ResTemp struct {
	Title   string          `json:"title"`
	Context []DetailResTemp `json:"context"`
}

type DetailResTemp struct {
	Id     int    `json:"id"`
	String string `json:"string"`
	Type   string `json:"type"`
}