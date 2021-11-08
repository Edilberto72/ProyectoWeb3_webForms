using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_RegistroVacunas.Models
{
    public class VaccinationAppointmentModel
    {
        public List<UserAppointment> GetAppointment(DateTime vaccinationDay)
        {
            using (DBVaccineControlEntities context = new DBVaccineControlEntities())
            {
                var query = from x in context.VaccinationAppointment
                            join u in context.User on x.UserID equals u.UserID
                            where x.vaccinationDay >= DateTime.Now && x.vaccinationDay == vaccinationDay && u.vaccinated == 0
                            select new UserAppointment
                            {
                                VacinnationRecordID = x.VaccinationRecordID,
                                vaccinationDay = x.vaccinationDay,
                                FullName = u.lastName + " " + u.secondLastName + " " + u.name,
                                UserID = x.UserID
                            };
                return query.ToList();
            }
        } 
    }
}