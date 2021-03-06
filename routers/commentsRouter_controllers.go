package routers

import (
	beego "github.com/beego/beego/v2/server/web"
	"github.com/beego/beego/v2/server/web/context/param"
)

func init() {

    beego.GlobalControllerRouter["telemedicine/controllers:AdminController"] = append(beego.GlobalControllerRouter["telemedicine/controllers:AdminController"],
        beego.ControllerComments{
            Method: "Get",
            Router: "/admin/news",
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["telemedicine/controllers:AdminController"] = append(beego.GlobalControllerRouter["telemedicine/controllers:AdminController"],
        beego.ControllerComments{
            Method: "Post",
            Router: "/admin/news",
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["telemedicine/controllers:ChatController"] = append(beego.GlobalControllerRouter["telemedicine/controllers:ChatController"],
        beego.ControllerComments{
            Method: "Get",
            Router: "/",
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

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

    beego.GlobalControllerRouter["telemedicine/controllers:LoginController"] = append(beego.GlobalControllerRouter["telemedicine/controllers:LoginController"],
        beego.ControllerComments{
            Method: "Get",
            Router: "/login/",
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["telemedicine/controllers:LoginController"] = append(beego.GlobalControllerRouter["telemedicine/controllers:LoginController"],
        beego.ControllerComments{
            Method: "Post",
            Router: "/login/",
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
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

    beego.GlobalControllerRouter["telemedicine/controllers:UserController"] = append(beego.GlobalControllerRouter["telemedicine/controllers:UserController"],
        beego.ControllerComments{
            Method: "Get",
            Router: "/thongtinnguoidung",
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

}
