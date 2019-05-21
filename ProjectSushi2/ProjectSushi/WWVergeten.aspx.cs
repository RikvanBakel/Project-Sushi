using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectSushi
{
    public partial class WWVergeten : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoginEmail"] != null)
            {
                hlLogin.Text = Session["LoginEmail"].ToString();
            }
        }
    }
}