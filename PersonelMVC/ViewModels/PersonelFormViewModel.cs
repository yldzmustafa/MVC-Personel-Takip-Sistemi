using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PersonelMVC.Models.EntityFramework;

namespace PersonelMVC.ViewModels
{
    public class PersonelFormViewModel
    {
        public IEnumerable<Departman> Departmanlar { get; set; }
        public Personel Personel { get; set; }
        
    }
}