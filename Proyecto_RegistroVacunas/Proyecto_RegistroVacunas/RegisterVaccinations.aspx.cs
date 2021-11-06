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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //Formula: 
            //Se debe restar Horario de Atencion(Final - Inicio)
            //Luego convertir el resultado a minutos * 60
            //se divide entre el intervalo para aplicar la dosis
            int vaccionationsQuantity = int.Parse(txtQuantityVaccionations.Text);
            int doseInterval = int.Parse(txtDoseTime.Text);
            int quantityNurses = int.Parse(txtQuantityNurses.Text);
            DateTime startVaccionation = DateTime.Parse(txtStartVaccination.Text);

            string totalTimeAttentionString =(DateTime.Parse(txtEndAttention.Text) - DateTime.Parse(txtStartAttention.Text)).ToString(@"hh\ mm\ ");
            string totalTimeFormat = totalTimeAttentionString.Substring(0,2) + ":" + totalTimeAttentionString.Substring(3,2);
            DateTime totalTimeAttention = DateTime.ParseExact(totalTimeFormat, "HH:mm", null);

            double formula = TimeSpan.Parse(totalTimeAttention.ToShortTimeString()).TotalMinutes / doseInterval;
            //PRUEBAS.Text = totalTimeAttention.ToShortTimeString() + "Vacunas: "+ formula.ToString();

            //Para verificar que los horarios no sobrepasen a las vacunas
            //El resultado se multiplica por la cantidad de enfermeras disponibles
            if ((formula*quantityNurses) < vaccionationsQuantity)
            {
                //Es correcto no sobrepasa

            }

        }
    }
}