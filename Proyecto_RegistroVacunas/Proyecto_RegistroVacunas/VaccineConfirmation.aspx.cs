using Proyecto_RegistroVacunas.Models;
using Proyecto_RegistroVacunas.Services;
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
        EmailSender emailSenderHelper; 
        UserModel userModel = new UserModel();
        int userID;

        private void Refresh()
        {
            dataVaccineConfirmation.DataSource = vaccinationAppointmentModel.GetAppointment(DateTime.Parse(cmbVaccinationDay.SelectedItem.Text));
            dataVaccineConfirmation.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (IsPostBack)
                {
                    if (Application["userID"] != null)
                    {
                        userID = int.Parse(Application["userID"].ToString());
                    }
                }
                else
                {
                    cmbVaccinationDay.DataSource = vaccinationRecord.GetAll();
                    cmbVaccinationDay.DataTextField = "startDate";
                    cmbVaccinationDay.DataValueField = "VaccinationRecordID";
                    cmbVaccinationDay.DataBind();
                    Refresh();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void dataVaccineConfirmation_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtPrueba.Text = dataVaccineConfirmation.SelectedRow.Cells[3].Text;
            Application["userID"] = dataVaccineConfirmation.SelectedRow.Cells[4].Text;
        }

        protected void cmbVaccinationDay_SelectedIndexChanged(object sender, EventArgs e)
        {
            Refresh();
        }

        protected void btnVaccinationRegister_Click(object sender, EventArgs e)
        {
            try
            {
                if (userID != 0)
                {
                    User user = userModel.GetUser(userID);
                    if (user != null)
                    {
                        userModel.UpdateVaccinated(user.UserID);

                        emailSenderHelper = new EmailSender(user);
                        emailSenderHelper.SendCertificateEmail(Server.MapPath($"~/Certificates/Certificate{user.UserID}.pdf"));
                        Refresh();
                    }
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