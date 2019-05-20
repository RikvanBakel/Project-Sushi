using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Drawing;
using System.Xml.Linq;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Security;

namespace ProjectSushi
{
    public partial class Reserveren : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calender.Visible = false;
            }
            rvCalender.MinimumValue = DateTime.Now.ToString("d");
            rvCalender.MaximumValue = DateTime.Now.AddDays(14).ToString("d");
        }

        protected void ddlAantalPersonen_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnReserveren_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (cbVoorwaarden.Checked)
                {
                    string sVoornaam = txtVoornaam.Text;
                    string sAchternaam = txtAchternaam.Text;
                    string sEmail = txtEmail.Text;
                    string telefoonnummer = txtTelefoonnummer.Text;
                    Response.Write("Reservering is gelukt");
                }
                else
                {
                    Response.Write("U moet akkoord gaan met de policy & terms van Jecosushi");
                }
            }
        }

        protected void Calender_SelectionChanged(object sender, EventArgs e)
        {
            txtCalender.Text = Calender.SelectedDate.ToString("d");
            Calender.Visible = false;
        }

        protected void imgbtnCalender_Click(object sender, ImageClickEventArgs e)
        {
            if (Calender.Visible)
            {
                Calender.Visible = false;
            }
            else
            {
                Calender.Visible = true;
            }
        }

        protected void Calender_DayRender(object sender, DayRenderEventArgs e)
        {
            DateTime pastDays = e.Day.Date;
            DateTime date = DateTime.Now;
            int year = date.Year;
            int month = date.Month;
            int day = date.Day;
            DateTime today = new DateTime(year, month, day);
            if (pastDays.CompareTo(today) < 0)
            {
                e.Cell.BackColor = System.Drawing.Color.Gray;
                e.Day.IsSelectable = false;
            }
            DateTime later = today.AddDays(14);
            if (pastDays.CompareTo(later) > 0)
            {
                e.Cell.BackColor = System.Drawing.Color.Gray;
                e.Day.IsSelectable = false;
            }
        }
    }
}