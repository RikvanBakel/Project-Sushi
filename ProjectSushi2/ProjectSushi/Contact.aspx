<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ProjectSushi.Contact"%>

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
                    <li class="nav-item">
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
                    <li class="nav-item active">
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

    <section class="Material-contact-section section-padding section-light">
        <div class="container">
            <div class="row">
                <!-- Section Titile -->
                <div class="col-md-12 wow animated fadeInLeft" data-wow-delay=".2s">
                    <h1 class="section-title">Contact</h1>
                </div>
            </div>
            <div class="row">
                <!-- Section Titile -->
                <div class="col-md-6 mt-3 contact-widget-section2 wow animated fadeInLeft" data-wow-delay=".2s">
                    <p>Jeco sushi staat voor bijna alles open. Dus aarzel niet om contact met ons op te nemen om uw vraag aan ons te stellen. Contact opnemen kan via telefoon, mail en natuurlijk kunt u altijd bij ons filiaal langs komen.</p>
                    <div class="find-widget">
                        Website:  <a href="https://www.jecosushi.nl">www.Jecosushi.nl</a>
                    </div>
                    <div class="find-widget">
                        Telefoon:  <a href="#">+31 (072) 97238454</a>
                    </div>
                    <div class="find-widget">
                        Adres: <a href="#">1234 AB, Hoofdstraat 23. Alkmaar</a>
                    </div>
                    <div class="find-widget">
                        Openingstijden: <a href="#">Ma t/m do: 17:30 - 22:00 | vr t/m zo 17:00 - 23:59</a>
                    </div>
                    <div class="find-widget">
                        <img src="Afbeeldingen/4.jpg" style="width: 450px" />
                    </div>
                </div>
                <!-- contact form -->
                <div class="col-md-6 wow animated fadeInRight">
                    <form class="shake" role="form" method="post" id="contactForm" name="contact-form" data-toggle="validator">
                        <!-- Name -->
                        <div class="form-group label-floating">
                            <br />
                            <asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNaam" runat="server" ErrorMessage="Naam is vereist" ControlToValidate="txtNaam" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <div class="help-block with-errors"></div>
                        </div>
                        <!-- email -->
                        <div class="form-group label-floating">
                            <br />
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is vereist" ControlToValidate="txtEmail" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Email is ongeldig" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            <div class="help-block with-errors"></div>
                        </div>
                        <!-- Subject -->
                        <div class="form-group label-floating">
                            <br />
                            <asp:TextBox ID="txtOnderwerp" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvOnderwerp" runat="server" ErrorMessage="Onderwerp is vereist" ControlToValidate="txtOnderwerp" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <div class="help-block with-errors"></div>
                        </div>
                        <!-- Message -->
                        <div class="form-group label-floating">
                            <br />
                            <asp:TextBox ID="txtTekst" runat="server" Rows="3" TextMode="MultiLine" Width="100%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvTekst" runat="server" ErrorMessage="Tekst is vereist" ControlToValidate="txtTekst" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <div class="help-block with-errors"></div>
                        </div>
                        <!-- Form Submit -->
                        <div class="form-submit mt-5">
                            <asp:Button ID="btnVerzenden" runat="server" Text="Verzenden" />
                            <div id="msgSubmit" class="h3 text-center hidden"></div>
                            <div class="clearfix"></div>
                        </div>
                    </form>
                </div>
            </div>
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
