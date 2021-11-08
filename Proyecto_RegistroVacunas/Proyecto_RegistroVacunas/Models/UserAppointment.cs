using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_RegistroVacunas.Models
{
    public class UserAppointment
    {
        public int VacinnationRecordID { get; set; }
        public DateTime vaccinationDay { get; set; }
        public string FullName { get; set; }
        public int UserID { get; set; }
    }
}