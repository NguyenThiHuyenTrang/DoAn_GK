using DAGK.Models.Bus;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DAGK.Controllers
{
    public class ProductTypeController : Controller
    {
        // GET: ProductType
        public ActionResult Index(String id, int page = 1, int pagesize = 4)
        {
            var ds = ProductTypeBus.ChiTiet(id).ToPagedList(page, pagesize);
            return View(ds);
        }
    }
}