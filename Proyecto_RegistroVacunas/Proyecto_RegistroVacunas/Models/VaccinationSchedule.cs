//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Proyecto_RegistroVacunas.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class VaccinationSchedule
    {
        public int VaccinationScheduleID { get; set; }
        public System.TimeSpan appointment { get; set; }
        public byte vaccinesAvailable { get; set; }
        public int VaccionationRecordID { get; set; }
    
        public virtual VaccinationRecord VaccinationRecord { get; set; }
    }
}
