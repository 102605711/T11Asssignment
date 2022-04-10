using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SendGrid;
using SendGrid.Helpers.Mail;
using System.Threading.Tasks;

namespace T11HabitatandAnimals.Utils
{
    public class EmailSender
    {
        private const String API_KEY = "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";

        public void Send(String toEmail, String subject, String contents)
        {
            var client = new SendGridClient(API_KEY);
            var from = new EmailAddress("yli518@student.monash.edu", "karoola-group");

            var to = new EmailAddress(toEmail, "");
            var plainTextContent = contents;
            var htmlContent = "<p>" + contents + "</p>";
            var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);
            var response = client.SendEmailAsync(msg);
        }
    }
}