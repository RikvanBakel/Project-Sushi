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
using System.Data.SqlClient;

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

            if (Session["email"] != null)
            {
                string email = Session["email"].ToString();
                using (SqlConnection con = new SqlConnection())
                {
                    string connectionString = ConfigurationManager.ConnectionStrings["JecoSushi"].ConnectionString;
                    con.ConnectionString = connectionString;
                    string commandText = $"SELECT TOP 1 * FROM [dbo].[1A-Klant] WHERE Email = @p1";
                    SqlCommand cmd = new SqlCommand(commandText, con);
                    cmd.Parameters.AddWithValue("@p1", email);
                    try
                    {
                        con.Open();
                        var dr = cmd.ExecuteReader();
                        dr.Read();
                        if (dr.HasRows)
                        {
                            txtVoornaam.Text = dr["Voornaam"].ToString();
                            txtAchternaam.Text = dr["Achternaam"].ToString();
                            txtEmail.Text = dr["Email"].ToString();
                            txtTelefoonnummer.Text = dr["Telefoonnummer"].ToString();
                        }
                    }
                    catch (Exception ex)
                    {
                        string msg = ex.Message;
                    }

                }

            }
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
                    policyEnTermsError.Attributes.Add("hidden","");
                    reserveringGelukt.Attributes.Remove("hidden");
                    //Response.Write("Reservering is gelukt");
                }
                else
                {
                    policyEnTermsError.Attributes.Remove("hidden");
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