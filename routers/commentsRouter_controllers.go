package routers

import (
	beego "github.com/beego/beego/v2/server/web"
	"github.com/beego/beego/v2/server/web/context/param"
)

func init() {

    beego.GlobalControllerRouter["telemedicine/controllers:GioiThieuController"] = append(beego.GlobalControllerRouter["telemedicine/controllers:GioiThieuController"],
        beego.ControllerComments{
            Method: "Get",
            Router: "/thongtin/",
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["telemedicine/controllers:GioiThieuController"] = append(beego.GlobalControllerRouter["telemedicine/controllers:GioiThieuController"],
        beego.ControllerComments{
            Method: "GetGt",
            Router: "/thongtin/:id",
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(
				param.New("id", param.InPath),
			),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["telemedicine/controllers:MainController"] = append(beego.GlobalControllerRouter["telemedicine/controllers:MainController"],
        beego.ControllerComments{
            Method: "Get",
            Router: "/",
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

}
