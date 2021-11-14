using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_RegistroVacunas
{
    public partial class PagePrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"');</script>");
            }
        }

        protected void btnPersonalLogin_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("PersonalLogin.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void btnRegisterAppointment_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("RegisterAppointmentTime.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void btnLocation_Click(object sender, EventArgs e)
        {

        }

        protected void btnHealthMinistryPage_Click(object sender, EventArgs e)
        {

        }

        protected void btnVaccineRegistration_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("RegisterVaccinations.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void btnVaccineConfirmation_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("VaccineConfirmation.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}