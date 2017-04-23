﻿using DAGK.Models.Bus;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DAGK.Controllers
{
    public class SHOPController : Controller
    {
        // GET: SHOP
        public ActionResult Index()
        {
            var dsSanPham = SHOPBus.DanhSach(); 
            return View(dsSanPham);

        }

        // GET: SHOP/Details/5
        public ActionResult Details(int id)
        {
            return View(SHOPBus.ChiTiet(id));
        }

        // GET: SHOP/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: SHOP/Create
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

        // GET: SHOP/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: SHOP/Edit/5
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

        // GET: SHOP/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: SHOP/Delete/5
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
