using Proyecto_RegistroVacunas.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proyecto_RegistroVacunas.Interfaces
{
    interface IVaccinationRecord : IGeneric<VaccinationRecord>
    {
        DateTime BussinessHours(DateTime startAttention, DateTime endAttention);

        void InsertTransaction(VaccinationRecord vaccinationRecord, List<VaccinationSchedule> listVaccinationSchedules);
    }
}
