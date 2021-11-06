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

        public void Update(User t)
        {
            throw new NotImplementedException();
        }
    }
}