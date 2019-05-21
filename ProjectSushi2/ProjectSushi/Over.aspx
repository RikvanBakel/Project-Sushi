<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Over.aspx.cs" Inherits="ProjectSushi.Over" Theme="ProjectThemes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Jeco Sushi</title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                <a class="navbar-brand" href="#">
                    <img src="JecoLogo.png" alt="Jeco Sushi" width="200px">
                </a>
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="home.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="MenuKaart.aspx">Menu kaart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Bestellen.aspx">Bestellen</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Reserveren.aspx">Reserveren</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Contact.aspx">Contact</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="Over.aspx">Over</a>
                    </li>
                </ul>
                <!--<form class="form-inline my-2 my-lg-0">-->
                    <a class="btn btn-link" href="Login.aspx">Log in</a>
                <!--</form>-->
            </div>
        </nav>
    <section class="showcase">
        <div class="container-fluid p-0">
            <div class="row no-gutters">

                <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('afbeeldingen/gebouw.jpg');"></div>
                <div class="col-lg-6 order-lg-1 my-auto showcase-text">
                    <h1>Wie zijn wij?</h1>
                    <p class="lead mb-0">
                        Jeco sushi is een jong en innovatief bedrijf dat zich specialiseert in het bereiden van verse sushi. Zo staan er bij ons meerdere profssionele koks uit Zuid-oost Azië in de keuken. Deze koks zijn gespecialiseerd in het klaarmaken van sushi. In ons bedrijf zijn de kwaliteiten van de koks ons unique sellingpoint, omdat onze compinatie van kwaliteit, versheid en sensatie aan smaak moeilijk te evenaren is.
                    </p>
                </div>
            </div>
            <div class="row no-gutters">
                <div class="col-lg-6 text-white showcase-img" style="background-image: url('afbeeldingen/interieur.jpg');"></div>
                <div class="col-lg-6 my-auto showcase-text">
                    <h1>Wat is onze missie?</h1>
                    <p class="lead mb-0">
                        De missie die wij als Jeco sushi bij ons dragen is om de consument een positieve sensatie op de smaakpupillen te laten voelen. Dit niet alleen, wij willen de consument laten voelen dat ze in Azië zijn en dit overbrengen doormiddel van alles dat we uit de kast kunnen halen. Kledij van personeel, het interieur van het restaurant, live muziek en de beste sushi in Nederland te serveren.
                    </p>
                </div>
            </div>
            <div class="row no-gutters">

                <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('afbeeldingen/interieur2.jpg');"></div>
                <div class="col-lg-6 order-lg-1 my-auto showcase-text">
                    <h1>Werken bij Jeco sushi</h1>
                    <p class="lead mb-0">
                        Jeco sushi is altijd opzoek naar personeel dat het team kan aanvullen. Wanneer u interesse heeft om bij ons in de keuken of in de bediening een steentje bij te dragen. Dan moet u zeker niet aarzelen om contact met ons op te nemen. We zien u hier graag!
                        Contact kan via de contact pagina of via telefoon (072) 3945738945.
                    </p>
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
                                <img src="afbeeldingen/Facebook.png" class="social" width="40px">
                            </a>
                        </li>
                        <li class="list-inline-item mr-3">
                            <a href="#">
                                <img src="afbeeldingen/Instagram.png" class="social" width="40px">
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">
                                <img src="afbeeldingen/Twitter.png" class="social" width="40px">
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
    </form>
</body>
</html>
