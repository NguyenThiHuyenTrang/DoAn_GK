using DAGK.Models.Bus;
using WEB2Connection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DAGK.Areas.Admin.Controllers
{
    public class ProductAdminController : Controller
    {
        // GET: Admin/Product
        public ActionResult Index()
        {
            return View(SHOPBus.DanhSachProductAdmin());
        }

        // GET: Admin/Product/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/Product/Create
        public ActionResult Create()
        {
            ViewBag.ProducerID = new SelectList(ProducerBus.DanhSach(), "ProducerID", "ProducerName");
            ViewBag.ProductTypeID = new SelectList(ProductTypeBus.DanhSach(), "ProductTypeID", "ProductTypeName");
            return View();
        }

        // POST: Admin/Product/Create
        [HttpPost]
        public ActionResult Create(Product product)
        {
            //try
            //{
            // TODO: Add insert logic here
            if (HttpContext.Request.Files.Count > 0)
            {
                var hpf = HttpContext.Request.Files[0];
                if (hpf.ContentLength > 0)
                {
                    string fileName = Guid.NewGuid().ToString();

                    string fullPathWithFileName = "~/TN/img/" + fileName + ".jpg";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    product.ImageURL = fullPathWithFileName;
                }
            }
            SHOPBus.InsertProductAdmin(product);
            return RedirectToAction("Index");
            //    }
            //}
            //catch
            //{
            //    return View();
            //}
        }


        // GET: Admin/Product/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/Product/Edit/5
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

        // GET: Admin/Product/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/Product/Delete/5
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


