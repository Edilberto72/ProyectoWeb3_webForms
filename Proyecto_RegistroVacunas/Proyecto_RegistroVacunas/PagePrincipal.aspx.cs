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
            Response.Redirect("PersonalLogin.aspx");
        }

        protected void btnRegisterAppointment_Click(object sender, EventArgs e)
        {

        }

        protected void btnLocation_Click(object sender, EventArgs e)
        {

        }

        protected void btnHealthMinistryPage_Click(object sender, EventArgs e)
        {

        }
    }
}