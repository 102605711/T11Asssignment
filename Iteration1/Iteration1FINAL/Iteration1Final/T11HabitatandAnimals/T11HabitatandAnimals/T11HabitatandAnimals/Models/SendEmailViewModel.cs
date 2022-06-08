using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace T11HabitatandAnimals.Models
{
    public class SendEmailViewModel
    {
        [EmailAddress(ErrorMessage = "Invalid Email Address")]
        public string ToEmail { get; set; }
    }
}