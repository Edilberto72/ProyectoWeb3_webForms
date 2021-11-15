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
                btnLogin.Visible = true;
                btnCloseLogin.Visible = false;
                btnVaccineRegistration.Visible = false;
                btnVaccineConfirmation.Visible = false;
                if (Session["UserID"] != null)
                {
                    byte id = byte.Parse(Session["UserID"].ToString());
                    switch (id)
                    {
                        case 1:
                            btnLogin.Visible = false;
                            btnVaccineConfirmation.Visible = true;
                            break;
                        case 2:
                            btnLogin.Visible = false;
                            btnVaccineRegistration.Visible = true;
                            btnVaccineConfirmation.Visible = true;
                            break;
                        case 0:
                            break;
                    }
                }
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

        protected void btnCloseLogin_Click(object sender, EventArgs e)
        {
            try
            {
                Session.Contents.RemoveAll();
                Response.Redirect("PagePrincipal.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}