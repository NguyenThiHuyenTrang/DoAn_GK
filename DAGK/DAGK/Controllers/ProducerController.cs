using DAGK.Models.Bus;
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
        public ActionResult Index(int id)
        {
            var ds = ProducerBus.ChiTiet(id);
            return View(ds);
        }
    }
}

