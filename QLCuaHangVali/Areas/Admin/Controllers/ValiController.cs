﻿using PagedList;
using QLCuaHangVali.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QLCuaHangVali.Areas.Admin.Controllers
{
    public class ValiController : BaseController
    {
        // GET: Admin/Vali
        ValiDBDataContext db = new ValiDBDataContext();
        //lay list danh muc
        public void SetViewBag(int? selectedId = null)
        {
            List<THUONGHIEU> listThuongHieu = db.THUONGHIEUs.ToList();
            List<SIZEVALI> listSize = db.SIZEVALIs.ToList();
            List<DANHMUCVALI> listDanhMuc = db.DANHMUCVALIs.ToList();
            ViewBag.DMID = new SelectList(listDanhMuc, "madanhmuc", "tendanhmuc");
            ViewBag.SizeID = new SelectList(listSize, "masize", "tensize");
            ViewBag.CategoryID = new SelectList(listThuongHieu, "mathuonghieu","tenthuonghieu");
        }
        // GET: Vali
        public ActionResult Index(int ? page)
        {
            if (page == null) page = 1;
            //var all_vl = (from vl in db.VALIs select vl).OrderBy( m => m.mavali);
            var all_vali = db.VALIs.Where(p => p.trangthai == true).OrderBy(p => p.mavali);
            int pageSize = 9;
            int pageNum = page ?? 1;
            return View(all_vali.ToPagedList(pageNum, pageSize));
        }

        public ActionResult Details(int id)
        {
            VALI find = db.VALIs.FirstOrDefault(m => m.mavali == id);
            if (find == null)
                return HttpNotFound();
            return View(find);
        }

        public ActionResult Create()
        {
            SetViewBag();
            return View();
        }
        [HttpPost]
        public ActionResult Create(FormCollection collection, VALI vl)
        {
            var tenvali = collection["tenvali"];
            var mathuonghieu = int.Parse(collection["mathuonghieu"]);
            var masize = int.Parse(collection["masize"]);
            var madanhmuc = int.Parse(collection["madanhmuc"]);
            var anhvali = collection["anhvali"];
            var mota = collection["mota"];
            var tukhoa = collection["tukhoa"];
            var soluongton = int.Parse(collection["soluongton"]);
            var gia = Convert.ToDecimal(collection["gia"]);
            var giakhuyenmai = Convert.ToDecimal(collection["giakhuyenmai"]);
            var ngaytao = Convert.ToDateTime(collection["ngaytao"]);
            var trangthai = Convert.ToBoolean(collection["trangthai"]);
            var chatlieu = collection["chatlieu"];
            var kichthuoc = collection["kichthuoc"];
            var thetich = collection["thetich"];
            var banhxe = collection["banhxe"];
            var khoa = collection["khoa"];
            var tienich = collection["tienich"];
            var linkvideo = collection["linkvideo"];

            if (string.IsNullOrEmpty(tenvali))
            {
                ViewData["Error"] = "Don't empty!";
            }
            else
            {
                vl.tenvali = tenvali.ToString();
                vl.mathuonghieu = int.Parse(mathuonghieu.ToString());
                vl.masize = int.Parse(masize.ToString());
                vl.madanhmuc = int.Parse(madanhmuc.ToString());
                vl.anhvali = anhvali.ToString();
                vl.mota = mota.ToString();
                vl.tukhoa = tukhoa.ToString();
                vl.soluongton = int.Parse(soluongton.ToString());
                vl.gia = Convert.ToDecimal(gia.ToString());
                vl.giakhuyenmai = Convert.ToDecimal(giakhuyenmai.ToString());
                vl.ngaytao = Convert.ToDateTime(ngaytao);
                vl.trangthai = Convert.ToBoolean(trangthai);
                vl.chatlieu = chatlieu.ToString();
                vl.kichthuoc = kichthuoc.ToString();
                vl.thetich = thetich.ToString();
                vl.banhxe = banhxe.ToString();
                vl.khoa = khoa.ToString();
                vl.tienich = tienich.ToString();
                vl.linkvideo = linkvideo.ToString();
                db.VALIs.InsertOnSubmit(vl);
                db.SubmitChanges();
                return RedirectToAction("Index");
            }
            return this.Create();
        }

        public ActionResult Edit(int id)
        {
            VALI find = db.VALIs.FirstOrDefault(m => m.mavali == id);
            if (find == null)
                return HttpNotFound();
            SetViewBag();
            return View(find);
        }
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            var vl = db.VALIs.First(m => m.mavali == id);
            var tenvali = collection["tenvali"];
            var mathuonghieu = int.Parse(collection["mathuonghieu"]);
            var masize = int.Parse(collection["masize"]);
            var madanhmuc = int.Parse(collection["madanhmuc"]);
            var anhvali = collection["anhvali"];
            var mota = collection["mota"];
            var tukhoa = collection["tukhoa"];
            var soluongton = int.Parse(collection["soluongton"]);
            var gia = Convert.ToDecimal(collection["gia"]);
            var giakhuyenmai = Convert.ToDecimal(collection["giakhuyenmai"]);
            var ngaytao = Convert.ToDateTime(collection["ngaytao"]);
            var trangthai = Convert.ToBoolean(collection["trangthai"]);
            var chatlieu = collection["chatlieu"];
            var kichthuoc = collection["kichthuoc"];
            var thetich = collection["thetich"];
            var banhxe = collection["banhxe"];
            var khoa = collection["khoa"];
            var tienich = collection["tienich"];
            var linkvideo = collection["linkvideo"];
            vl.mavali = id;
            if (string.IsNullOrEmpty(tenvali))
            {
                ViewData["Error"] = "Don't empty!";
            }
            else
            {
                vl.tenvali = tenvali.ToString();
                vl.mathuonghieu = int.Parse(mathuonghieu.ToString());
                vl.masize = int.Parse(masize.ToString());
                vl.madanhmuc = int.Parse(madanhmuc.ToString());
                vl.anhvali = anhvali.ToString();
                vl.mota = mota.ToString();
                vl.tukhoa = tukhoa.ToString();
                vl.soluongton = int.Parse(soluongton.ToString());
                vl.gia = Convert.ToDecimal(gia.ToString());
                vl.giakhuyenmai = Convert.ToDecimal(giakhuyenmai.ToString());
                vl.ngaytao = Convert.ToDateTime(ngaytao);
                vl.trangthai = Convert.ToBoolean(trangthai);
                vl.chatlieu = chatlieu.ToString();
                vl.kichthuoc = kichthuoc.ToString();
                vl.thetich = thetich.ToString();
                vl.banhxe = banhxe.ToString();
                vl.khoa = khoa.ToString();
                vl.tienich = tienich.ToString();
                vl.linkvideo = linkvideo.ToString();
                UpdateModel(vl);
                db.SubmitChanges();
                return RedirectToAction("Index");
            }
            return this.Edit(id);
        }
        //-----------------------------------------
        public ActionResult Delete(int id)
        {
            VALI find = db.VALIs.FirstOrDefault(m => m.mavali == id && m.trangthai == true);
            if (find == null)
                return HttpNotFound();
            return View(find);
        }
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            var Del_vl = db.VALIs.Where(m => m.mavali == id && m.trangthai == true).First();
            if(Del_vl != null)
            {
                Del_vl.trangthai = false;
            }
            db.SubmitChanges();
            return RedirectToAction("Index");
        }

        public string ProcessUpload(HttpPostedFileBase file)
        {
            if (file == null)
            {
                return "";
            }
            file.SaveAs(Server.MapPath("~/Content/AnhVali/" + file.FileName));
            return file.FileName;
        }
    }
}