//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TourPal1._0.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class Client
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Client()
        {
            this.Activities = new HashSet<Activity>();
            this.preferredPartners = new HashSet<preferredPartner>();
        }
    
        public int Id { get; set; }
        [Required]
        [Display(Name = "First Name")]
        public string FirstName { get; set; }
        [Required]
        [Display(Name = "Last Name")]
        public string LastName { get; set; }
        [Required]
        [Display(Name = "Birthday")]
        public string DateOfBirth { get; set; }
        [Required]
        [Display(Name = "Occupation")]
        public string Occupation { get; set; }
        [Required]
        [Display(Name = "Destination")]
        public string Destination { get; set; }
        public string SelfDescription { get; set; }
        [Required]
        [Display(Name = "Gender")]
        public string Gender { get; set; }
        public Nullable<int> GroupId { get; set; }
        public string Image { get; set; }
        [Required]
        [Display(Name = "TimeToGo")]
        public string TimeScheduledToTravel { get; set; }

        //[Display(Name= "Email address")]
        //[Required(ErrorMessage ="Please enter an email address.")]
        //[EmailAddress(ErrorMessage ="Invalid Email Address!")]
        //public string Email { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Activity> Activities { get; set; }
        public virtual Group Group { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<preferredPartner> preferredPartners { get; set; }
    }
}
