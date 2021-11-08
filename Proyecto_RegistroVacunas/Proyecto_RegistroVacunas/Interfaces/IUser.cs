﻿using Proyecto_RegistroVacunas.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proyecto_RegistroVacunas.Interfaces
{
    interface IUser: IGeneric<User>
    {
        void SaveAppointment(User user, VaccinationAppointment vaccinationAppointment, int scheduleID);
    }
}
