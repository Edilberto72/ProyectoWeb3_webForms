using Proyecto_RegistroVacunas.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_RegistroVacunas
{
    public partial class ListVaccinationSchedules : System.Web.UI.Page
    {
        VaccinationRecordModel vaccinationRecord = new VaccinationRecordModel();
        VaccinationScheduleModel vaccinationSchedule = new VaccinationScheduleModel();
        UserModel userModel = new UserModel();
        User user;
        VaccinationAppointment vaccinationAppointment;
        DateTime vaccinationDayDate;
        int vaccinationScheduleID;

        private void Refresh()
        {
            dataVaccinationSchedule.DataSource = vaccinationSchedule.GetVaccinationSchedule(int.Parse(cmbDate.SelectedItem.Value));
            dataVaccinationSchedule.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (Application["ID"] != null)
                {
                    vaccinationScheduleID = (int)Application["ID"];
                }
            }
            else
            {
                cmbDate.DataSource = vaccinationRecord.GetAll();
                cmbDate.DataTextField = "startDate";
                cmbDate.DataValueField = "VaccinationRecordID";
                cmbDate.DataBind();
                Refresh();
            }
        }

        protected void dataVaccinationSchedule_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtPrueba.Text = dataVaccinationSchedule.SelectedRow.Cells[2].Text;
            Application["ID"] = int.Parse(dataVaccinationSchedule.SelectedRow.Cells[1].Text);
        }

        protected void dataVaccinationSchedule_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.dataVaccinationSchedule.PageIndex = e.NewPageIndex;
            this.dataVaccinationSchedule.DataBind();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                if (vaccinationScheduleID != 0)
                {
                    vaccinationDayDate = DateTime.Parse(cmbDate.SelectedItem.Text);
                    user = new User()
                    {
                        name = txtName.Text,
                        lastName = txtLastName.Text,
                        secondLastName = txtSecondLastName.Text,
                        userType = 0,
                        email = txtEmail.Text,
                        state = 1
                    };
                    vaccinationAppointment = new VaccinationAppointment()
                    {
                        vaccinationDay = vaccinationDayDate,
                        expiration = 1
                    };
                    userModel.SaveAppointment(user, vaccinationAppointment, vaccinationScheduleID);
                    vaccinationScheduleID = 0;
                    Refresh();
                }
                else
                {
                    Response.Write("<script>alert('Debe seleccionar un horario!');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(" + ex.Message + ");</script>");
            }
            
        }

        protected void cmbDate_SelectedIndexChanged(object sender, EventArgs e)
        {
            //antes estaba con cmbDate.SelectedIndex
            Refresh();
        }
    }
}