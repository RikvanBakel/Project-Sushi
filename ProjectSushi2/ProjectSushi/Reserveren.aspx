<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reserveren.aspx.cs" Inherits="ProjectSushi.Reserveren" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link href="http://localhost:65044/App_Themes/ProjectTheme/Style.css" rel="stylesheet" />
    <title>Jeco Sushi</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                <a class="navbar-brand" href="#">
                    <img src="JecoLogo.png" alt="Jeco Sushi" style="width: 200px" />
                </a>
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="Home.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Menukaart.html">Menu kaart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Bestellen.html">Bestellen</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Reserveren.html">Reserveren</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Contact.html">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Over.html">Over</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <a class="btn btn-link" href="Login.html">Log in</a>
                </form>
            </div>
        </nav>

    <div class="container-fluid">
        <div class="container">
            <h2 class="text-center" id="title">Reserveren</h2>

            <hr>
            <div class="row">
                <div class="col-md-5">
                    <form role="form" method="post" action="Reserveren.php">
                        <fieldset>
                            <p class="text pull-center"> Persoonlijke gegevens</p>
                            <div class="form-group">
                                Voornaam:
                                <br />
                                <asp:TextBox ID="txtVoornaam" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvVoornaam" runat="server" ErrorMessage="Voornaam is vereist" ControlToValidate="txtVoornaam" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                Achternaam:
                                <br />
                                <asp:TextBox ID="txtAchternaam" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvAchternaam" runat="server" ErrorMessage="Achternaam is vereist" ControlToValidate="txtAchternaam" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                Email:
                                <br />
                                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is vereist" ControlToValidate="txtEmail" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="E-mail is ongeldig" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                Telefoonnummer:
                                <br />
                                <asp:TextBox ID="txtTelefoonnummer" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvTelefoonnummer" runat="server" ErrorMessage="Telefoon nummer is vereist" ControlToValidate="txtTelefoonnummer" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="cvTelefoonnummer" runat="server" ErrorMessage="Telefoon nummer is ongeldig" ControlToValidate="txtTelefoonnummer" Operator="DataTypeCheck" Type="Integer" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                            </div>
                            <div class="form-group label-floating">
                                Opmerking:
                                <br />
                                <!--Vereist?-->
                                <asp:TextBox ID="txtOpmerking" runat="server"></asp:TextBox>
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <asp:CheckBox ID="cbVoorwaarden" runat="server"></asp:CheckBox>
                                    Ik ga akkoord met de policy & terms van Jecosushi.
                                </label>
                            </div>

                        </fieldset>

                </div>
                <div class="col-md-2">
                    <!-------null------>
                </div>

                <div class="col-md-5">

                    <fieldset>
                        <p class="text"> Reserveergegevens </p>

                        <div class="form-group">
                            <label for="sel1">Aantal Personen:</label>
                            <br />
                            <asp:DropDownList ID="ddlAantalPersonen" runat="server" OnSelectedIndexChanged="ddlAantalPersonen_SelectedIndexChanged">
                                <asp:ListItem Value="-1">Kies het aantal personen</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvAantalPersonen" runat="server" ErrorMessage="Selecteer het aantal personen" InitialValue="-1" ControlToValidate="ddlAantalPersonen" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="sel1">Tijdsperiode:</label>
                            <br />
                            <asp:DropDownList ID="ddlTijdsperiode" runat="server">
                                <asp:ListItem Value="-1">Kies tijdsperiode</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvTijdsperiode" runat="server" ErrorMessage="Kies tijdsperiode" ControlToValidate="ddlTijdsperiode" ForeColor="Red" InitialValue="-1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>

                        <div>
                            <br />
                            <asp:Button ID="btnReserveren" runat="server" Text="Reserveren" />
                        </div>
                </div>

                </fieldset>
                </form>
            </div>
        </div>
    </div>
    <p class="text-center">
    </p>
    </div>
    </section>
    <footer class="footer bg-light">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 h-100 text-center text-lg-left my-auto">
                    <ul class="list-inline mb-2">
                        <li class="list-inline-item">
                            <a href="#">Over</a>
                        </li>
                        <li class="list-inline-item">&sdot;</li>
                        <li class="list-inline-item">
                            <a href="#">Contact</a>
                        </li>
                        <li class="list-inline-item">&sdot;</li>
                        <li class="list-inline-item">
                            <a href="#">Terms of Use</a>
                        </li>
                        <li class="list-inline-item">&sdot;</li>
                        <li class="list-inline-item">
                            <a href="#">Privacy Policy</a>
                        </li>
                    </ul>
                    <p class="text-muted small mb-4 mb-lg-0">&copy; Jeco Sushi 2019. Alle rechten voorbehouden.</p>
                </div>
                <div class="col-lg-6 h-100 text-center text-lg-right my-auto">
                    <ul class="list-inline mb-0">
                        <li class="list-inline-item mr-3">
                            <a href="#">
                                <img src="afbeeldingen/Facebook.png" class="social" style="width: 40px" />
                            </a>
                        </li>
                        <li class="list-inline-item mr-3">
                            <a href="#">
                                <img src="afbeeldingen/Instagram.png" class="social" style="width: 40px" />
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">
                                <img src="afbeeldingen/Twitter.png" class="social" style="width: 40px" />
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>




    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </div>
    </form>
</body>
</html>
