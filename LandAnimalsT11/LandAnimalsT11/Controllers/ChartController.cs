using LandAnimalsT11.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LandAnimalsT11.Controllers
{
    public class ChartController : Controller
    {
        // GET: Chart
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult PieChart()
        {

            DatabaseEntities entities = new DatabaseEntities();
            return Json(entities.Animals.ToList(), JsonRequestBehavior.AllowGet);
        }
    }
}