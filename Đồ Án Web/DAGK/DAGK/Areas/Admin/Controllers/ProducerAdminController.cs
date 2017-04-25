using DAGK.Models.Bus;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WEB2Connection;

namespace DAGK.Areas.Admin.Controllers
{
    public class ProducerAdminController : Controller
    {
        // GET: Admin/Producer
        public ActionResult Index()
        {
            var ds = ProducerBus.DanhSach();
            return View(ds);
        }

        // GET: Admin/Producer/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/Producer/Create
        public ActionResult Create()
        {

            return View();
        }

        // POST: Admin/Producer/Create
        [HttpPost]
        public ActionResult Create(Producer producer)
        {
            try
            {
                // TODO: Add insert logic here
                // hàm thêm 
                ProducerBus.CreateProducerAdmin(producer);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/Producer/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/Producer/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/Producer/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/Producer/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
