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
        string[] klantVelden = new string[] {
            "Voornaam", "Tussenvoegsel", "Achternaam", "Geboortedatum", "Straat", "Huisnummer", "Postcode", "Woonplaats", "Email", "Wachtwoord", "Telefoonnummer"
        };

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVerstuur_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                #region Doe validatie stuff
                if (!cbVoorwaarden.Checked) { return; }

                if (EmailInUse(email: txtEmail.Text) != "")
                {
                    registrationError.Attributes.Remove("hidden");
                    txtLoginEmail.Text = txtEmail.Text;
                    txtWachtwoordInloggen.Focus();
                    return;
                }
                #endregion

                #region Haal data uit webform
                string sVoornaam = txtNaam.Text;
                Session["Voornaam"] = sVoornaam;
                string sAchternaam = txtAchternaam.Text;
                string sEmail = txtEmail.Text;
                Session["Email"] = sEmail;
                string sWachtwoord = txtWachtwoord.Text;
                Session["Wachtwoord"] = sWachtwoord;
                #endregion

                #region Doe database stuff
                SqlConnection con = HaalDatabaseVerbinding();
                SqlCommand cmd = new SqlCommand
                {
                    //Command toevoegen
                    CommandText = @"INSERT INTO [1A-Klant]
                                                (Voornaam, Tussenvoegsel, Achternaam, Geboortedatum, Straat, Huisnummer, Postcode, Woonplaats, Email, Wachtwoord, Telefoonnummer)
                                                SELECT @p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11",
                    Connection = con
                };
                #endregion

                #region Set database Parameters
                cmd.Parameters.AddWithValue("@p1", txtNaam.Text);
                cmd.Parameters.AddWithValue("@p2", txtTussenvoegsel.Text); //Toevoegen
                cmd.Parameters.AddWithValue("@p3", txtAchternaam.Text);
                cmd.Parameters.AddWithValue("@p4", txtGeboortedatum.Text); //Toevoegen
                cmd.Parameters.AddWithValue("@p5", txtStraat.Text); //Toevoegen
                cmd.Parameters.AddWithValue("@p6", txtHuisnummer.Text); //Toevoegen
                //cmd.Parameters.AddWithValue("@p6", txtToevoeging.Text); //Toevoegen
                cmd.Parameters.AddWithValue("@p7", txtPostcode.Text); //Toevoegen
                cmd.Parameters.AddWithValue("@p8", txtWoonplaats.Text); //Toevoegen
                cmd.Parameters.AddWithValue("@p9", txtEmail.Text);
                cmd.Parameters.AddWithValue("@p10", txtWachtwoord.Text);
                cmd.Parameters.AddWithValue("@p11", txtTelefoonnummer.Text); //Toevoegen;
                #endregion

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    registrationError.Attributes.Add("hidden", "");
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                finally
                {
                    con.Close();
                }
            }
        }

        private string EmailInUse(string email)
        {
            string returnVal = "";
            SqlCommand cmd;
            string commandText = "SELECT TOP (1) * FROM [dbo].[1A-Klant] WHERE Email = @email";
            using ( SqlConnection con = HaalDatabaseVerbinding())
            {
                cmd = new SqlCommand()
                {
                    CommandText = commandText,
                    Connection = con
                };
                cmd.Parameters.AddWithValue("@email", email);
                con.Open();

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    returnVal = dr["Email"].ToString();
                }
            }
            return returnVal;
        }

        private SqlCommand HaalInvoegKlantCommand(SqlConnection con)
        {
            SqlCommand cmd = new SqlCommand();
            string insertText = "INSERT INTO [1A-Klant] (fields) \nSELECT ";
            string fields = "";

            for (int i = 0; i < klantVelden.Length; i++)
            {
                var name = "body_txt" + klantVelden[i];
                TextBox textBox = (TextBox)FindControl(name);
                if(textBox != null)
                {
                    string field = @"@p{i.ToString()}";
                    if (i < klantVelden.Length - 1) { field += ", "; }
                    fields += field;
                    cmd.Parameters.AddWithValue("@p1", textBox.Text);
                }
            }

            insertText = insertText.Replace("fields", fields);
            cmd.CommandText = insertText;
            return cmd;
        }

        protected void btnVerstuurLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string email = txtLoginEmail.Text;
                string password = txtWachtwoordInloggen.Text;

                using (SqlConnection con = HaalDatabaseVerbinding()) {

                    string commandText = $"SELECT TOP 1 * FROM [dbo].[1A-Klant] WHERE Email = @p1 AND Wachtwoord = @p2";
                    SqlCommand cmd = new SqlCommand(commandText, con);
                    cmd.Parameters.AddWithValue("@p1", email);
                    cmd.Parameters.AddWithValue("@p2", password);
                    try
                    {
                        con.Open();
                        var dr = cmd.ExecuteReader();
                        dr.Read();
                        if (dr.HasRows)
                        {
                            loginError.Attributes.Add("hidden", "");
                            Session["email"] = email;
                            Session["voornaam"] = dr["Voornaam"].ToString();
                            Response.Redirect("Home.aspx", false);
                        }
                        else
                        {
                            // ToDo: Melding teruggeven
                            loginError.Attributes.Remove("hidden");
                        }
                    }
                    catch (Exception ex)
                    {
                        string msg = ex.Message;
                    }
                };
            }
        }

        private SqlConnection HaalDatabaseVerbinding()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["JecoSushi"].ConnectionString;
            return new SqlConnection(connectionString);
        }



    }
}