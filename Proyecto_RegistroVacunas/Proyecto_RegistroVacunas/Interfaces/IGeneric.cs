using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proyecto_RegistroVacunas.Interfaces
{
    interface IGeneric<T>
    {
        List<T> GetAll();

        void Save(T t);

        void Update(T t);

        void Delete(T t);
    }
}
