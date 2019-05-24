using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace ProjectSushi
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rvGeboortedatum.MinimumValue = DateTime.Now.AddYears(-125).ToString("d");
            rvGeboortedatum.MaximumValue = DateTime.Now.ToString("d");
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
                    hlLogin.Text = Session["Voornaam"].ToString();
                    // Response.Redirect("~/home.aspx");

                    /*"(Klantid, Voornaam, Tussenvoegsel, Achternaam, Geboortedatum, Straat, Huisnummer, Postcode, Woonplaats, Email, Wachtwoord, Telefoonnummer)*/
                    string CS = ConfigurationManager.ConnectionStrings["JecoSushi"].ConnectionString;

                    SqlConnection con = new SqlConnection(CS);
                    
                        //Command toevoegen
                        SqlCommand cmd = new SqlCommand();
                        cmd.Connection = con;
                        cmd.CommandText = @"INSERT INTO
                                            [1A-Klant]
                                            VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
                    cmd.Parameters.AddWithValue("?", 8); //ID?
                    cmd.Parameters.AddWithValue("?", txtNaam.Text);
                    cmd.Parameters.AddWithValue("?", txtTussenvoegsel.Text); //Toevoegen
                    cmd.Parameters.AddWithValue("?", txtAchternaam.Text);
                    cmd.Parameters.AddWithValue("?", txtGeboortedatum.Text); //Toevoegen
                    cmd.Parameters.AddWithValue("?", txtStraat.Text); //Toevoegen
                    cmd.Parameters.AddWithValue("?", txtHuisnummer.Text); //Toevoegen
                    cmd.Parameters.AddWithValue("?", txtPostcode.Text); //Toevoegen
                    cmd.Parameters.AddWithValue("?", txtWoonplaats.Text); //Toevoegen
                    cmd.Parameters.AddWithValue("?", txtEmail.Text);
                    cmd.Parameters.AddWithValue("?", txtWachtwoord.Text);
                    cmd.Parameters.AddWithValue("?", txtTelefoonnummer.Text); //Toevoegen
                    try
                    {
                        con.Open();
                        int TotalRowsAffected = cmd.ExecuteNonQuery();
                        Response.Write("Total rows inserted =" + TotalRowsAffected.ToString());
                    }
                    catch (Exception ex)
                    {
                    }
                    finally
                    {
                        con.Close();
                    }
                    //GridView1.DataSource = cmd.ExecuteReader();
                    //GridView1.DataBind();

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