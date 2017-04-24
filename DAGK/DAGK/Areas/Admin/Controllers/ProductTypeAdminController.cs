using DAGK.Models.Bus;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DAGK.Areas.Admin
{
    public class ProductTypeAdminController : Controller
    {
        // GET: Admin/ProductType
        public ActionResult Index()
        {
            var ds = ProductTypeBus.DanhSach();
            return View(ds);
            
        }

        // GET: Admin/ProductType/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/ProductType/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/ProductType/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/ProductType/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/ProductType/Edit/5
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

        // GET: Admin/ProductType/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/ProductType/Delete/5
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
