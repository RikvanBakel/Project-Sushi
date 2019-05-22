using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectSushi
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVerstuur_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (cbVoorwaarden.Checked)
                {
                    string sVoornaam = txtNaam.Text;
                    Session["Voornaam"] = sVoornaam;
                    hlLogin.Text = Session["Voornaam"].ToString();
                    string sAchternaam = txtAchternaam.Text;
                    string sEmail = txtEmail.Text;
                    Session["Email"] = sEmail;
                    string sWachtwoord = txtWachtwoord.Text;
                    Session["Wachtwoord"] = sWachtwoord;
                   // Response.Redirect("~/home.aspx");
                }
                else
                {
                    Response.Write("U moet akkoord gaan met de policy & terms van Jecosushi");
                }
            }
        }

        protected void btnVerstuurLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (txtLoginEmail.Text == Session["Email"].ToString() && txtWachtwoordInloggen.Text == Session["Wachtwoord"].ToString())
                {
                    hlLogin.Text = "Voornaam";
                    //Response.Redirect("~/home.aspx");
                }
            }
        }
    }
}