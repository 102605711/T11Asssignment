using LandAnimalsT11.Models;
using LandAnimalsT11.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LandAnimalsT11.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Home(SendEmailViewModel model)
        {
            {
                if (ModelState.IsValid)
                {
                    try
                    {
                        String toEmail = model.ToEmail;
                        String subject = "KalarooProjectGroup";
                        String contents = "Thanks for your subscribing to the Kalaroo Project newsletter! "
                            +
                            "If you receive this email by mistake, you can simply delete it. "

                            +
                            "Forthermore, you can unsubscribe from our project website.";

                        EmailSender es = new EmailSender();
                        es.Send(toEmail, subject, contents);

                        ModelState.Clear();

                        return View(new SendEmailViewModel());
                    }

                    catch
                    {
                        return View();
                    }
                }

                return View();
            }

        }
        public ActionResult LandAnimals()
        {
            return View();
        }
        public ActionResult Habitats()
        {
            return View();
        }

        public ActionResult donate()
        {
            return View();
        }



    }
}