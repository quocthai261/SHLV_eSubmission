using eSubmission.Models.Menu; 
using Microsoft.AspNetCore.Mvc;
using System.Security.Policy;
using System;

namespace eSubmission.ViewComponents
{
    public class vcNavbar : ViewComponent
    {
        public async Task<IViewComponentResult> InvokeAsync()
        {
            ViewBag.SiteMap = await GetSiteMap();

            return View();
        }

        private async Task<IEnumerable<TreeMenuItem<SiteMapNode>>> GetSiteMap()
        {
            IEnumerable<TreeMenuItem<SiteMapNode>> siteMap = null;

            List<SiteMapNode> menus = null;

            menus = new List<SiteMapNode>()
                {
                    new SiteMapNode()
                    {
                        ACTIVE = false,
                        CONTENT = "dashboard",
                        ICONCLASS = "glyphicon glyphicon-folder-close",
                        ID = 1,
                        ISACTIVE = true,
                        ISDISPLAY = true,
                        ORDER = null,
                        ORDER_ = 1,
                        PARENTID = null,
                        SYSTEMNAME = null, 
                        URL = null,
                        URL_ = "Dashboard/Dashboard"
                    },
                    new SiteMapNode()   
                    {
                        ACTIVE = false,
                        CONTENT = "customerinfo",
                        ICONCLASS = "glyphicon glyphicon-folder-close",
                        ID = 2,
                        ISACTIVE = true,
                        ISDISPLAY = true,
                        ORDER = null,
                        ORDER_ = 2,
                        PARENTID = null,
                        SYSTEMNAME = null,
                        URL = null,
                        URL_ = "Functions/Customer"
                    },
                    new SiteMapNode()
                    {
                        ACTIVE = false,
                        CONTENT = "productinfo",
                        ICONCLASS = "glyphicon glyphicon-folder-close",
                        ID = 3,
                        ISACTIVE = true,
                        ISDISPLAY = true,
                        ORDER = null,
                        ORDER_ = 3,
                        PARENTID = null,
                        SYSTEMNAME = null,
                        URL = null,
                        URL_ = "Functions/Product"
                    },
                    new SiteMapNode()
                    {
                        ACTIVE = false,
                        CONTENT = "financialanalysis",
                        ICONCLASS = "glyphicon glyphicon-folder-close",
                        ID = 4,
                        ISACTIVE = true,
                        ISDISPLAY = true,
                        ORDER = null,
                        ORDER_ = 4,
                        PARENTID = null,
                        SYSTEMNAME = null,
                        URL = null,
                        URL_ = "Functions/FinancialAnalysis"
                    },
                    new SiteMapNode()
                    {
                        ACTIVE = false,
                        CONTENT = "quotation",
                        ICONCLASS = "glyphicon glyphicon-folder-close",
                        ID = 5,
                        ISACTIVE = true,
                        ISDISPLAY = true,
                        ORDER = null,
                        ORDER_ = 5,
                        PARENTID = null,
                        SYSTEMNAME = null,
                        URL = null,
                        URL_ = "Functions/Quotation"
                    },
                    new SiteMapNode()
                    {
                        ACTIVE = false,
                        CONTENT = "eApplication",
                        ICONCLASS = "glyphicon glyphicon-folder-close",
                        ID = 6,
                        ISACTIVE = true,
                        ISDISPLAY = true,
                        ORDER = null,
                        ORDER_ = 6,
                        PARENTID = null,
                        SYSTEMNAME = null,
                        URL = null,
                        URL_ = "Functions/eApplication"
                    },
                    new SiteMapNode()
                    {
                        ACTIVE = false,
                        CONTENT = "policies",
                        ICONCLASS = "glyphicon glyphicon-folder-close",
                        ID = 7,
                        ISACTIVE = true,
                        ISDISPLAY = true,
                        ORDER = null,
                        ORDER_ = 7,
                        PARENTID = null,
                        SYSTEMNAME = null,
                        URL = null,
                        URL_ = "Functions/Policy"
                    },
                    new SiteMapNode()
                    {
                        ACTIVE = false,
                        CONTENT = "payment",
                        ICONCLASS = "glyphicon glyphicon-folder-close",
                        ID = 8,
                        ISACTIVE = true,
                        ISDISPLAY = true,
                        ORDER = null,
                        ORDER_ = 8,
                        PARENTID = null,
                        SYSTEMNAME = null,
                        URL = null,
                        URL_ = "Functions/Payment"
                    }
                };

            if (menus != null && menus.Count > 0)
            {
                siteMap = menus.GenerateTreeMenu(c => c.ID, c => c.PARENTID, c => c.ORDER_);
            }

            return siteMap; 
        }
    }
}
