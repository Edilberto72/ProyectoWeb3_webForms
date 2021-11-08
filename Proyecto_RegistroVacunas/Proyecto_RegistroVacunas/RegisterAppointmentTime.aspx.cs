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

        protected void Page_Load(object sender, EventArgs e)
        {
            cmbDate.DataSource = vaccinationRecord.GetAll();
            cmbDate.DataTextField = "startDate";
            cmbDate.DataValueField = "VaccinationRecordID";
            cmbDate.DataBind();
            dataVaccinationSchedule.DataSource = vaccinationSchedule.GetVaccinationSchedule(int.Parse(cmbDate.SelectedItem.Value));
            dataVaccinationSchedule.DataBind();
            if (IsPostBack)
            {
                if (Application["ID"] != null)
                {
                    vaccinationScheduleID = (int)Application["ID"];
                }
            }
        }

        protected void dataVaccinationSchedule_SelectedIndexChanged(object sender, EventArgs e)
        {
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
                    //Post. No se actualiza la lista debido a que el ispost no tiene el metodo select vuelto a cargar
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
            dataVaccinationSchedule.DataSource = vaccinationSchedule.GetVaccinationSchedule(cmbDate.SelectedIndex);
            dataVaccinationSchedule.DataBind();
        }
    }
}