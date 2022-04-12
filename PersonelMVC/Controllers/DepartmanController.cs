using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PersonelMVC.Models.EntityFramework;

namespace PersonelMVC.Controllers
{
    public class DepartmanController : Controller
    {
        // GET: Departman
        PersonelMVCEntities db = new PersonelMVCEntities();  //  database bilgilerini alır
        public ActionResult Index()
        {
            var model = db.Departman.ToList();
            return View(model);
        }

        [HttpGet] //Veriyi okuma öz nitelik (veriyi aldığı kısım)
        public ActionResult Yeni()
        {
            return View("DepartmanForm");
        }

        [HttpPost]  //veriyi kaydetme özelliği
        public ActionResult Kaydet(Departman departman)
        {
            if (departman.ID == 0) //id 0 ise yeni kayıt
            {
                db.Departman.Add(departman);
            }
            else //id si olan kaydı güncelleme
            {
                var guncellenecekdepartman = db.Departman.Find(departman.ID);

                if (guncellenecekdepartman == null)
                {
                    return HttpNotFound();
                }
                guncellenecekdepartman.Ad = departman.Ad;
            }
            db.SaveChanges();
            return RedirectToAction("Index", "Departman");
        }
        public ActionResult Guncelle(int id)
        {
            var model = db.Departman.Find(id);
            if (model == null)
                return HttpNotFound();

            return View("DepartmanForm",model);
        }

        public ActionResult Sil(int id)
        {
            var silinecekdepartman = db.Departman.Find(id);
            if (silinecekdepartman == null)
                return HttpNotFound();
            db.Departman.Remove(silinecekdepartman);
            db.SaveChanges();
            return RedirectToAction("Index");

        }
    }
}