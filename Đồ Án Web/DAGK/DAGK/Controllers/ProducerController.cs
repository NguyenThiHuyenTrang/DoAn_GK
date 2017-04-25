using DAGK.Models.Bus;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DAGK.Controllers
{
    public class ProducerController : Controller
    {
        // GET: Producer
        public ActionResult Index(String id, int page = 1, int pagesize = 2)
        {
            var ds = ProducerBus.ChiTiet(id).ToPagedList(page, pagesize);
            return View(ds);
            
        }
    }
}