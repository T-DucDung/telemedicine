package req

type ReqNews struct {
	Title   string   `form:"title"`
	Content []string `form:"content"`
}

type Req struct {
	Title   string      `json:"title"`
	Context []ReqDetail `json:"context"`
}

type ReqDetail struct {
	Title   string `json:"title"`
	Image   string `json:"image"`
	Context string `json:"context"`
}
