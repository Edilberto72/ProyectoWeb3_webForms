using Proyecto_RegistroVacunas.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_RegistroVacunas
{
    public partial class PersonalLogin : System.Web.UI.Page
    {
        UserModel userModel = new UserModel();
        User user;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPersonalLogin_Click(object sender, EventArgs e)
        {
            try
            {
                user = userModel.AuthenticateUser(txbEmailPersonal.Text, txbPasswordPersonal.Text);
                if (user != null)
                {
                    if (user.userType == 0)
                    {
                        Response.Write("<script>alert('Usuario invalido');</script>");
                        return;
                    }
                    Session["UserID"] = user.userType;
                    Response.Redirect("PagePrincipal.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Usuario invalido');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}