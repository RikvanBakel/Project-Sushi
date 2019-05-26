<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bestellen.aspx.cs" Inherits="ProjectSushi.Bestellen" theme="ProjectThemes"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

    <meta charset="UTF-8" />
    <meta name="description" content="Free Web tutorials" />
    <meta name="keywords" content="HTML,CSS,XML,JavaScript" />
    <meta name="author" content="Wouter van Zelst" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <title>Jeco Sushi</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-dark " style="background-color: #333;">
                <a class="navbar-brand" href="v">
                    <img src="image/home.png" width="30" height="30" alt="" />Jeco Sushi</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-item nav-link" href="home.aspx">Home </a>
                        <a class="nav-item nav-link" href="menukaart.aspx">Menukaart</a>
                        <a class="nav-item nav-link active" href="bestellen.aspx">Bestellen<span class="sr-only">(current)</span></a>
                        <a class="nav-item nav-link" href="reserveren.aspx">Reserveren</a>
                        <a class="nav-item nav-link" href="contact.aspx">Contact</a>
                        <a class="nav-item nav-link" href="over.aspx">Over</a>
                        <button type="button" class="navbar-nav nav btn nav-item nav-link" style="background-color: rgb(102,100,100);"><a href="Login.aspx">Inloggen</a></button>
                    </div>

                </div>

            </nav>
            <!-- Carousel slider hieronder-->
            <div class="container-fluid" style="background-color: white;">
                <div class="row">
                    <div class="col-md-2 text-center text-dark">
                        <h2>Filters</h2>
                        <p>Selecteer uw gegevens:</p>
                        <table class="table">
                            <p>Sushi</p>
                            <br />
                            <asp:CheckBox ID="cbSushi1" runat="server" />
                            Sushi
                    <br />
                            <asp:CheckBox ID="cbSushi2" runat="server" />
                            Sushi
                    <br />
                            <asp:CheckBox ID="cbSushi3" runat="server" />
                            Sushi
                    <br />
                            <asp:CheckBox ID="cbSushi4" runat="server" />
                            Sushi
                    <br />
                            <asp:CheckBox ID="cbSushi5" runat="server" />
                            Sushi
                    <br />
                            <br />
                            <p>Dranken</p>
                            <asp:CheckBox ID="cbDrank1" runat="server" />
                            Sushi
                    <br />
                            <asp:CheckBox ID="cbDrank2" runat="server" />
                            Sushi
                    <br />
                            <asp:CheckBox ID="cbDrank3" runat="server" />
                            Sushi
                    <br />
                            <asp:CheckBox ID="cbDrank4" runat="server" />
                            Sushi
                    <br />
                            <asp:CheckBox ID="cbDrank5" runat="server" />
                            Sushi
                    <br />
                            <asp:Button ID="btnZoek" runat="server" Text="Zoek" />
                        </table>
                    </div>
                    <div class="col-md-6 text-center text-dark">
                        <div class="container">
                            <h2>Menu kaart</h2>
                            <p>Hier vindt u een lijst van ons assortiment dat ter beschikking staat in ons restaurant.</p>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Naam</th>
                                        <th>Omschrijving</th>
                                        <th>Prijs</th>
                                        <th>Toevoegen aan winkelwagen</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>John</td>
                                        <td>Doe</td>
                                        <td>john@example.com</td>
                                        <td>
                                            <asp:Button ID="btnVoegToe" runat="server" Text="Voeg toe" /></td>
                                    </tr>
                                    <tr>
                                        <td>Mary</td>
                                        <td>Moe</td>
                                        <td>mary@example.com</td>
                                        <td>
                                            <asp:Button ID="btnVoegToe1" runat="server" Text="Voeg toe" /></td>
                                    </tr>
                                    <tr>
                                        <td>July</td>
                                        <td>Dooley</td>
                                        <td>july@example.com</td>
                                        <td>
                                            <asp:Button ID="btnVoegToe2" runat="server" Text="Voeg toe" /></td>
                                    </tr>
                                    <tr>
                                        <td>John</td>
                                        <td>Doe</td>
                                        <td>john@example.com</td>
                                        <td>
                                            <asp:Button ID="btnVoegToe3" runat="server" Text="Voeg toe" /></td>
                                    </tr>
                                    <tr>
                                        <td>Mary</td>
                                        <td>Moe</td>
                                        <td>mary@example.com</td>
                                        <td>
                                            <asp:Button ID="btnVoegToe4" runat="server" Text="Voeg toe" /></td>
                                    </tr>
                                    <tr>
                                        <td>July</td>
                                        <td>Dooley</td>
                                        <td>july@example.com</td>
                                        <td>
                                            <asp:Button ID="btnVoegToe5" runat="server" Text="Voeg toe" /></td>
                                    </tr>
                                    <tr>
                                        <td>John</td>
                                        <td>Doe</td>
                                        <td>john@example.com</td>
                                        <td>
                                            <asp:Button ID="btnVoegToe6" runat="server" Text="Voeg toe" /></td>
                                    </tr>
                                    <tr>
                                        <td>Mary</td>
                                        <td>Moe</td>
                                        <td>mary@example.com</td>
                                        <td>
                                            <asp:Button ID="btnVoegToe7" runat="server" Text="Voeg toe" /></td>
                                    </tr>
                                    <tr>
                                        <td>July</td>
                                        <td>Dooley</td>
                                        <td>july@example.com</td>
                                        <td>
                                            <asp:Button ID="btnVoegToe8" runat="server" Text="Voeg toe" /></td>
                                    </tr>
                                    <tr>
                                        <td>John</td>
                                        <td>Doe</td>
                                        <td>john@example.com</td>
                                        <td>
                                            <asp:Button ID="btnVoegToe9" runat="server" Text="Voeg toe" /></td>
                                    </tr>
                                    <tr>
                                        <td>Mary</td>
                                        <td>Moe</td>
                                        <td>mary@example.com</td>
                                        <td>
                                            <asp:Button ID="btnVoegToe10" runat="server" Text="Voeg toe" /></td>
                                    </tr>
                                    <tr>
                                        <td>July</td>
                                        <td>Dooley</td>
                                        <td>july@example.com</td>
                                        <td>
                                            <asp:Button ID="btnVoegToe11" runat="server" Text="Voeg toe" /></td>
                                    </tr>
                                    <tr>
                                        <td>John</td>
                                        <td>Doe</td>
                                        <td>john@example.com</td>
                                        <td>
                                            <asp:Button ID="btnVoegToe12" runat="server" Text="Voeg toe" /></td>
                                    </tr>
                                    <tr>
                                        <td>Mary</td>
                                        <td>Moe</td>
                                        <td>mary@example.com</td>
                                        <td>
                                            <asp:Button ID="btnVoegToe13" runat="server" Text="Voeg toe" /></td>
                                    </tr>
                                    <tr>
                                        <td>July</td>
                                        <td>Dooley</td>
                                        <td>july@example.com</td>
                                        <td>
                                            <asp:Button ID="btnVoegToe14" runat="server" Text="Voeg toe" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-4 text-center text-dark">
                        <h2>Winkelwagen</h2>
                        <p>Hier staan uw geselecteerde producten klaar om af te rekenen.</p>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Naam</th>
                                    <th>Prijs</th>
                                    <th>Aantal</th>
                                    <th>Totaal prijs</th>
                                    <th>Verwijder</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Sushi</td>
                                    <td>€ 5</td>
                                    <td>2</td>
                                    <td>€10</td>
                                    <td>
                                        <asp:Button ID="btnVerwijderen" runat="server" Text="Verwijderen" /></td>
                                </tr>
                            </tbody>

                        </table>
                        <asp:Button ID="btnBetalen" runat="server" Text="Betalen" />
                    </div>

                </div>

            </div>





            <footer class="footer-bs ">
                <div class="row">
                    <div class="col-md-4 footer-brand">
                        <h2>Jeco Sushi</h2>
                        <p>Hier Komt informatie over ons sushi restaurant.</p>
                        <p>© 2019 Jeco Sushi, All rights reserved</p>
                    </div>
                    <div class="col-md-4 footer-nav ">
                        <h4>Menu —</h4>
                        <div class="col-md-6">
                            <ul class="pages">
                                <li><a href="home.aspx">Home</a></li>
                                <li><a href="MenuKaart.aspx">Menukaart</a></li>
                                <li><a href="Reserveren.aspx">Reserveren</a></li>
                                <li><a href="Bestellen.aspx">Bestellen</a></li>
                                <li><a href="Contact.aspx">Contact</a></li>
                                <li><a href="Over.aspx">Over</a></li>
                                <li><a href="Login.aspx">Inloggen</a></li>
                            </ul>
                        </div>


                    </div>
                    <div class="col-md-4 footer-social">
                        <h4>Volg ons op Socialmedia:</h4>
                        <ul>
                            <li><a href="#">Facebook</a></li>
                            <li><a href="#">Twitter</a></li>
                            <li><a href="#">Instagram</a></li>
                            <li><a href="#">Youtube</a></li>
                        </ul>
                    </div>

                </div>
            </footer>


            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        </div>
    </form>
</body>
</html>
