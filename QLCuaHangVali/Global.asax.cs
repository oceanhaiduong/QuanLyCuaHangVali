﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace QLCuaHangVali
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        protected void Session_Start()
        {
            Session["UserAdmin"] = "";
            Session["TaiKhoanKH"] = "";
            Session["count"] = "0";
            Session["MaKH"] = "";
            Session["KhachHangDangNhap"] = "";
            Session["CapNhatSoLuong"] = "";
            Session["XacThuc"] = "";
            Session["TongTienGioHang"] = "";
            Session["AnhVali"] = "";
            Session["avata"] = "";
            Session["TongTienThanhToan"] = "";
        }
    }
}
