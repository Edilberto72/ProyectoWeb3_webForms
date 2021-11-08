using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Proyecto_RegistroVacunas.Interfaces;

namespace Proyecto_RegistroVacunas.Models
{
    public class VaccinationScheduleModel : IVaccinationSchedule
    {
        public void Delete(VaccinationSchedule t)
        {
            throw new NotImplementedException();
        }

        public List<VaccinationSchedule> GetAll()
        {
            throw new NotImplementedException();
        }

        public VaccinationSchedule GetSchedule(int id)
        {
            using (DBVaccineControlEntities context = new DBVaccineControlEntities())
            {
                return context.VaccinationSchedule.AsNoTracking()
                    .Where(x => x.VaccinationScheduleID == id).FirstOrDefault();
            }
        }

        public List<VaccinationSchedule> GetVaccinationSchedule(int recordID)
        {
            using (DBVaccineControlEntities context = new DBVaccineControlEntities())
            {
                return context.VaccinationSchedule.AsNoTracking()
                    .Where(x => x.VaccinationRecordID == recordID && x.vaccinesAvailable > 0).ToList();
            }
        }

        public void Save(VaccinationSchedule t)
        {
            throw new NotImplementedException();
        }

        public void Update(VaccinationSchedule t)
        {
            throw new NotImplementedException();
        }
    }
}