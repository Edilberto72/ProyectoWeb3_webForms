using Proyecto_RegistroVacunas.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_RegistroVacunas
{
    public partial class VaccineConfirmation : System.Web.UI.Page
    {
        VaccinationAppointmentModel vaccinationAppointmentModel = new VaccinationAppointmentModel();
        VaccinationRecordModel vaccinationRecord = new VaccinationRecordModel();
        UserModel userModel = new UserModel();
        int userID;

        protected void Page_Load(object sender, EventArgs e)
        {
            cmbVaccinationDay.DataSource = vaccinationRecord.GetAll();
            cmbVaccinationDay.DataTextField = "startDate";
            cmbVaccinationDay.DataValueField = "VaccinationRecordID";
            cmbVaccinationDay.DataBind();
            dataVaccineConfirmation.DataSource = vaccinationAppointmentModel.GetAppointment(DateTime.Parse(cmbVaccinationDay.SelectedItem.Text));
            dataVaccineConfirmation.DataBind();
            if (IsPostBack)
            {
                if (Application["userID"] != null)
                {
                    userID = int.Parse(Application["userID"].ToString());
                }
            }
        }

        protected void dataVaccineConfirmation_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtPrueba.Text = dataVaccineConfirmation.SelectedRow.Cells[3].Text;
            Application["userID"] = dataVaccineConfirmation.SelectedRow.Cells[4].Text;
        }

        protected void cmbVaccinationDay_SelectedIndexChanged(object sender, EventArgs e)
        {
            dataVaccineConfirmation.DataSource = vaccinationAppointmentModel.GetAppointment(DateTime.Parse(cmbVaccinationDay.SelectedItem.Text));
            dataVaccineConfirmation.DataBind();
        }

        protected void btnVaccinationRegister_Click(object sender, EventArgs e)
        {
            try
            {
                if (userID != 0)
                {
                    userModel.UpdateVaccinated(userID);
                    //Implementar logica de email
                }
                else
                {
                    Response.Write("<script>alert('Debe elegir a un paciente');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}