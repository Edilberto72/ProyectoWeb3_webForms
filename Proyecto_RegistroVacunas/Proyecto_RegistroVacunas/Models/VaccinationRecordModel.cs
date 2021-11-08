using Proyecto_RegistroVacunas.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_RegistroVacunas.Models
{
    public class VaccinationRecordModel : IVaccinationRecord
    {
        public DateTime BussinessHours(DateTime startAttention, DateTime endAttention)
        {
            string totalTimeAttentionString = (endAttention - startAttention).ToString(@"hh\ mm\ ");
            string totalTimeFormat = totalTimeAttentionString.Substring(0, 2) + ":" + totalTimeAttentionString.Substring(3, 2);
            return DateTime.ParseExact(totalTimeFormat, "HH:mm", null);
        }

        public void Delete(VaccinationRecord t)
        {
            throw new NotImplementedException();
        }

        public List<VaccinationRecord> GetAll()
        {
            try
            {
                using (DBVaccineControlEntities context = new DBVaccineControlEntities())
                {
                    return context.VaccinationRecord.AsNoTracking().ToList();
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void InsertTransaction(VaccinationRecord vaccinationRecord, List<VaccinationSchedule> listVaccinationSchedules)
        {
            using (DBVaccineControlEntities context = new DBVaccineControlEntities())
            {
                using (var transaction = context.Database.BeginTransaction())
                {
                    try
                    {
                        context.VaccinationRecord.Add(vaccinationRecord);

                        context.SaveChanges();

                        for (int i = 0; i < listVaccinationSchedules.Count; i++)
                        {
                            listVaccinationSchedules[i].VaccinationRecordID = vaccinationRecord.VaccinationRecordID;
                            if (listVaccinationSchedules[i].VaccinationRecordID == 0)
                            {
                                transaction.Rollback();
                            }

                            context.VaccinationSchedule.Add(listVaccinationSchedules[i]);
                        }

                        context.SaveChanges();

                        transaction.Commit();
                    }
                    catch (Exception ex)
                    {
                        transaction.Rollback();
                        throw ex;
                    }
                }
            }
        }

        public void Save(VaccinationRecord t)
        {
            throw new NotImplementedException();
        }

        public void Update(VaccinationRecord t)
        {
            throw new NotImplementedException();
        }
    }
}