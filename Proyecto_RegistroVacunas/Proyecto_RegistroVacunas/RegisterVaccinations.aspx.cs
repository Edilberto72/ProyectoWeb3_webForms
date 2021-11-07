using Proyecto_RegistroVacunas.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_RegistroVacunas
{
    public partial class RegisterVaccinations : System.Web.UI.Page
    {

        VaccinationRecordModel vaccinationRecordM = new VaccinationRecordModel();
        List<VaccinationSchedule> listVaccinationSchedules;
        TimeSpan appointmentSchedule;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                //Formula: 
                //Se debe restar Horario de Atencion(Final - Inicio)
                //Luego convertir el resultado a minutos * 60
                //se divide entre el intervalo para aplicar la dosis
                int vaccionationsQuantity = int.Parse(txtQuantityVaccionations.Text);
                int doseInterval = int.Parse(txtDoseTime.Text);
                int quantityNurses = int.Parse(txtQuantityNurses.Text);
                DateTime startVaccionation = DateTime.Parse(txtStartVaccination.Text);

                DateTime totalTimeAttention = vaccinationRecordM.BussinessHours(DateTime.Parse(txtStartAttention.Text), DateTime.Parse(txtEndAttention.Text));

                double formula = TimeSpan.Parse(totalTimeAttention.ToShortTimeString()).TotalMinutes / doseInterval;
                //PRUEBAS.Text = totalTimeAttention.ToShortTimeString() + "Vacunas: "+ formula.ToString();

                //Para verificar que los horarios no sobrepasen a las vacunas
                //El resultado se multiplica por la cantidad de enfermeras disponibles
                if ((formula * quantityNurses) < vaccionationsQuantity)
                {
                    //Es correcto no sobrepasa
                    VaccinationRecord vaccionationRecord = new VaccinationRecord()
                    {
                        vaccineQuantity = vaccionationsQuantity,
                        doseTime = TimeSpan.FromMinutes(doseInterval),
                        nursesQuantity = (byte)quantityNurses,
                        startDate = startVaccionation,
                        startAttention = TimeSpan.Parse(txtStartAttention.Text),
                        endAttention = TimeSpan.Parse(txtEndAttention.Text),
                        UserID = 1 //Administrador
                    };

                    listVaccinationSchedules = new List<VaccinationSchedule>();
                    appointmentSchedule = vaccionationRecord.startAttention;
                    for (int i = 0; i < formula; i++)
                    {

                        listVaccinationSchedules.Add(new VaccinationSchedule()
                        {
                            appointment = appointmentSchedule,
                            vaccinesAvailable = vaccionationRecord.nursesQuantity
                        });
                        appointmentSchedule = appointmentSchedule + TimeSpan.FromMinutes(doseInterval);
                    }

                    vaccinationRecordM.InsertTransaction(vaccionationRecord, listVaccinationSchedules);
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert("+ex.Message+");</script>");
            }
        }
    }
}