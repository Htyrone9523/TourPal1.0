using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Net.Mail;
using TourPal1._0.Models.Email;

namespace TourPal1._0.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {   
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        //public ActionResult Email(EmailFromModel model)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        var body = "<p>Email From {0} ({1})</p><p>Message:</p><p>{2}</p>";
        //        var message = new MailMessage();
        //        message.To.Add(new MailAddress("htyrone9523@gmail.com"));
        //        message.From = new MailAddress("htyrone9523@gmail.com");
        //        message.Subject = "Your email subject";
        //        message.Body = string.Format(body, model.FromName, model.FromEmail, model.Message);
        //        message.IsBodyHtml = true;

        //        using (var smtp = new SmtpClient())
        //        {

        //        }
        //    }
    }
}