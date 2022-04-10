using T11HabitatandAnimals.Models;
using T11HabitatandAnimals.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace T11HabitatandAnimals.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult kolaroo( )
        {

            return View();

        }

        public ActionResult habitat()
        {
        

            return View();
        }

        public ActionResult landanimals()
        {
           

            return View();
        }
        public ActionResult Donate()
        {


            return View();
        }
        public ActionResult news(SendEmailViewModel model)
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

      
    }
}