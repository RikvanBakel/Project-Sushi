<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectSushi.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!--Attributen veranderen?-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link href="App_Themes/ProjectTheme/Style.css" rel="stylesheet" />
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
          <a class="navbar-brand" href="#"><img src="JecoLogo.png" alt="Jeco Sushi" style="width: 200px" /> </a>
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
                <!--links veranderen-->
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
            <!--Form veranderen-->
            <form class="form-inline my-2 my-lg-0">
                <a class="btn btn-link" href="Login.html">Log in</a>
            </form>
        </div>
      </nav>
        <div class="container-fluid">
            <div class="container">
                <h2 class="text-center" id="title">Inloggen</h2>
                
                <hr />
                <div class="row">
                    <div class="col-md-5">
                        <!--Form veranderen-->
                        <form role="form" method="post" action="register.php">
						    <fieldset>
                                <p class="text pull-center">Registreer</p>	
                                <div class="form-group">
                                 Voornaam:
                                    <br />
                                    <asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvNaam" runat="server" ControlToValidate="txtNaam" ErrorMessage="Naam is vereist" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                              Achternaam:
                                    <br />
                                    <asp:TextBox ID="txtAchternaam" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvAchternaam" runat="server" ControlToValidate="txtAchternaam" ErrorMessage="Achternaam is vereist" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    Email:
                                    <br />
                                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="E-mail is vereist" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="E-mail is niet geldig" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">
                                    Wachtwoord:
                                    <br />
                                    <asp:TextBox ID="txtWachtwoord" runat="server" Style="margin-bottom: 0px" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvdWachtwoord" runat="server" ControlToValidate="txtWachtwoord" ErrorMessage="Wachtwoord is vereist" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    Bevestig wachtwoord:
                                    <br />
                                    <asp:TextBox ID="txtHerhaalWW" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvHerhaalWW" runat="server" ControlToValidate="txtHerhaalWW" ErrorMessage="Herhaal wachtwoord is vereist" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="cvHerhaalWW" runat="server" ControlToCompare="txtWachtwoord" ControlToValidate="txtHerhaalWW" ErrorMessage="Wachtwoorden komen niet overeen" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <!--Als voorwaarde maken-->
                                        <asp:CheckBox runat="server" type="checkbox" class="form-check-input" ID="cbVoorwaarden" />
								        Ik ga akkoord met de policy & terms van Jecosushi.
                                    </label>
                                </div>
                                <div>
                                    <br />
                                    <asp:Button ID="btnVerstuur" runat="server" Text="Registreren" />
                                </div>
						    </fieldset>		
                        </form>
                    </div>
				<div class="col-md-2">
					<!-------null------>
                </div>
				
                    <div class="col-md-5">
                        <!--Form veranderen-->
                        <form role="form">
                            <fieldset>
                                <p class="text">Log in door uw gegevens in te vullen </p>	
                                <div class="form-group">
                                    Email:
                                    <br />
                                    <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfdLoginEmail" runat="server" ErrorMessage="E-mail is vereist" ControlToValidate="txtLoginEmail" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revLoginEmail" runat="server" ErrorMessage="E-mail is niet geldig" ControlToValidate="txtLoginEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">
                                    Wachtwoord:
                                    <br />
                                    <asp:TextBox ID="txtWachtwoordInloggen" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfdLoginWachtwoord" runat="server" ErrorMessage="Wachtwoord is vereist" ControlToValidate="txtWachtwoordInloggen" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                                <asp:Button ID="btnVerstuurLogin" runat="server" Text="Inloggen" />
                                <!--Links maken-->
                                <a class="btn btn-link" href="WachtwoordVergeten.html">Wachtwoord vergeten?</a>
                                <div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
        </div>
                <p class="text-center">
                </p>
                <footer class="footer bg-light">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 h-100 text-center text-lg-left my-auto">
                                <ul class="list-inline mb-2">
                                    <li class="list-inline-item">
                                        <!--Links maken-->
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
                                        <!--Links maken-->
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
