using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;


namespace LandAnimalsT11.Models
{
    public class SendEmailViewModel
    {


        [EmailAddress(ErrorMessage = "Invalid Email Address")]
        public string ToEmail { get; set; }

    }
}