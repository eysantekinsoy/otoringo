using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;

namespace otoringo.App_Start
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("anasayfa",
                                "Anasayfa", "~/anasayfa.aspx");

            routes.MapPageRoute("hakkimizda",
                                "Hakkimizda", "~/hakkimizda.aspx");

            routes.MapPageRoute("hizmetler",
                                "Hizmetler", "~/hizmetler.aspx");

            routes.MapPageRoute("hizmetler_detay",
                                "Hizmetler_Detay", "~/hizmetler_detay.aspx");

            routes.MapPageRoute("iletisim",
                                "İletisim", "~/iletisim.aspx");
        }
    }
}