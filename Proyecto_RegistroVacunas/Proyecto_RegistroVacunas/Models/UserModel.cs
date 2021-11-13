using Proyecto_RegistroVacunas.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_RegistroVacunas.Models
{
    public class UserModel : IUser
    {
        public void Delete(User t)
        {
            throw new NotImplementedException();
        }

        public List<User> GetAll()
        {
            try
            {
                using (DBVaccineControlEntities context = new DBVaccineControlEntities())
                {
                    return context.User.AsNoTracking().ToList();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void Save(User user)
        {
            try
            {
                using (DBVaccineControlEntities context = new DBVaccineControlEntities())
                {
                    context.User.Add(user);
                    context.SaveChanges();
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void SaveAppointment(User user, VaccinationAppointment vaccinationAppointment, int scheduleID)
        {
            using (DBVaccineControlEntities context = new DBVaccineControlEntities())
            {
                using (var transaction = context.Database.BeginTransaction())
                {
                    try
                    {
                        context.User.Add(user);
                        context.SaveChanges();

                        vaccinationAppointment.UserID = user.UserID;
                        if (vaccinationAppointment.UserID == 0)
                        {
                            transaction.Rollback();
                        }

                        context.VaccinationAppointment.Add(vaccinationAppointment);

                        VaccinationSchedule vaccinationSchedule = context.VaccinationSchedule
                            .SingleOrDefault(x => x.VaccinationScheduleID == scheduleID);
                        if (vaccinationSchedule == null)
                        {
                            transaction.Rollback();
                        }
                        vaccinationSchedule.vaccinesAvailable = (byte)(vaccinationSchedule.vaccinesAvailable - 1);
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

        public void Update(User t)
        {
            throw new NotImplementedException();
        }

        public void UpdateVaccinated(int userID)
        {
            using (DBVaccineControlEntities context = new DBVaccineControlEntities())
            {
                User user = context.User.Where(x => x.UserID == userID).FirstOrDefault();
                if (user == null)
                {
                    return;
                }
                user.vaccinated = 1;
                context.SaveChanges();
            }
        }

        public bool EmailAlreadyExists(string email)
        {
            using (DBVaccineControlEntities context = new DBVaccineControlEntities())
            {
                User user = context.User.Where(u => u.email == email).FirstOrDefault();
                if (user == default)
                {
                    return false; // email no existe, no registrado
                }
                else
                {
                    return true; // email existe, ya registrado
                }
            }
        }

        public void SaveNurse(string email, string name, string lastname = "", string secondlastname = "")
        {
            try
            {
                using (DBVaccineControlEntities context = new DBVaccineControlEntities())
                {
                    User nurse = new User();
                    nurse.name = name;
                    nurse.lastName = lastname;
                    nurse.secondLastName = secondlastname;
                    nurse.email = email;
                    nurse.userType = 1;
                    nurse.vaccinated = 0;
                    nurse.state = 1;

                    context.User.Add(nurse);
                    context.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}