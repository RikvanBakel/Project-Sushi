<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuKaart.aspx.cs" Inherits="ProjectSushi.MenuKaart" Theme="ProjectThemes" %>

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
    <div>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
            <a class="navbar-brand" href="#"><img src="JecoLogo.png" alt="Jeco Sushi" width="200px"> </a>
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item active">
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
                <li class="nav-item">
                    <a class="nav-link" href="Over.aspx">Over</a>
                </li>
            </ul>
            <!--<form class="form-inline my-2 my-lg-0">-->
                <a class="btn btn-link" href="Login.aspx">Log in</a>
            <!--</form>-->
        </div>
    </nav>

    <section>
        <br><br>
        <div class="container">

            <div class="col-md-12 wow animated fadeInLeft" data-wow-delay=".2s">
                <h1 class="section-title">Menukaart:</h1>
            </div>
            <div class="zoom">
                <img src="Afbeeldingen/Menukaart1.jpg" class="img-fluid" alt="Responsive image" width=80%>
            </div>
            <div class="zoom">
                <img src="Afbeeldingen/Menukaart2.jpg" class="img-fluid" alt="Responsive image" width=80%>
            </div>

        </div>
        <br><br><br>
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
    </div>
    </form>
</body>
</html>
