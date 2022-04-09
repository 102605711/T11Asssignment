using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using T11HabitatandAnimals.Models;

namespace T11HabitatandAnimals.Controllers
{
    public class threatened_animal_habitat_vicController : Controller
    {
        private LandAnimals db = new LandAnimals();

        // GET: threatened_animal_habitat_vic
        public ActionResult habitat_vic_data()
        {
            return View(db.threatened_animal_habitat_vic.ToList());
        }



        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
