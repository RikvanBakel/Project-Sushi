using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectSushi
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVerzenden_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string sNaam = txtNaam.Text;
                string sEmail = txtEmail.Text;
                string sOnderwerp = txtOnderwerp.Text;//?
                Response.Write("Bedankt voor u bericht, we reageren zo spoedig mogelijk");
            }
        }
    }
}