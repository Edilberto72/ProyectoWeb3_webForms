using Proyecto_RegistroVacunas.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_RegistroVacunas.Models
{
    public class VaccinationRecordModel : IVaccionationRecord
    {
        public void Delete(VaccionationRecord t)
        {
            throw new NotImplementedException();
        }

        public List<VaccionationRecord> GetAll()
        {
            try
            {
                using (DBVaccineControlEntities context = new DBVaccineControlEntities())
                {
                    return context.VaccionationRecord.AsNoTracking().ToList();
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void Save(VaccionationRecord t)
        {
            try
            {
                using (DBVaccineControlEntities context = new DBVaccineControlEntities())
                {
                    context.VaccionationRecord.Add(t);
                    context.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void Update(VaccionationRecord t)
        {
            throw new NotImplementedException();
        }
    }
}