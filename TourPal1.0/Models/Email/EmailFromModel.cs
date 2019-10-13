using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TourPal1._0.Models.Email
{
    public class EmailFromModel
    {
        [Required]
        [Display(Name ="Your name")]
        public string FromName { get; set; }

        [Required]
        [Display(Name ="Your Email")]
        [EmailAddress(ErrorMessage = "Please input valid Email address.")]
        public string FromEmail { get; set; }

        [Required]
        public string Message { get; set; }

        public HttpPostedFileBase Upload { get; set; }
    }
}