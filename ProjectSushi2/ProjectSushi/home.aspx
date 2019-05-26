<%@ Page Title="" Language="C#" MasterPageFile="~/ProjectSushi.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ProjectSushi.home" Theme="ProjectThemes"%>

<asp:Content ID="contentLogin" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
    <header class="masthead text-white text-center">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-xl-9 mx-auto">
                    <h1 class="mb-5">Registreer nu en ontvang 10% korting!</h1>
                </div>
                <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
                    <!--<form>-->
                        <div class="form-row">
                            <div class="col-12 col-md-4 mb-2 mb-md-0">
                            </div>
                            <div class="col-12 col-md-4">
                                <a class="btn btn-block btn-danger btn-lg" href="Login.aspx">Registreren</a>
                            </div>
                        </div>
                    <!--</form>-->
                </div>
            </div>
        </div>
    </header>
    <section class="showcase">
        <div class="container-fluid p-0">
            <div class="row no-gutters">

                <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('afbeeldingen/1.jpg');"></div>
                <div class="col-lg-6 order-lg-1 my-auto showcase-text">
                    <h1>Jeco Sushi</h1>
                    <p class="lead mb-0">
                        Welkom op de website van Jeco Sushi! Al sinds 1800 maken wij in ons restaurant de lekkerste sushi. Met zorg en aandacht bereid en altijd met de beste en verste ingrediënten. U kunt bij ons via deze website of telefonisch bestellen maar u bent uiteraard ook van harte welkom in onze winkel!
                        Daarnaast kunt u ook bij ons online reserveren. Geeft u toevallig een feestje of bedrijfslunch/dineren wilt u verschillende sushi’s en warme gerechten serveren? Dan kunt u contact opnemen met ons door te mailen naar info@Jecosushi.nl of te bellen naar (072) 4564235.

                </div>
            </div>
            <div class="row no-gutters">
                <div class="col-lg-6 text-white showcase-img" style="background-image: url('afbeeldingen/3.jpg');"></div>
                <div class="col-lg-6 my-auto showcase-text">
                    <h1>Adres en gegevens</h1>
                    <p class="lead mb-0">
                        Hoofdstraat 34<br>
                        1234 AB, Alkmaar<br>
                        Nederland<br>
                        Telefoon: 072-34567845<br>
                        Email: info@Jecosushi.nl<br>
                        KVK-nummer: 342798237492834<br>
                        BTW-nummer: 095384905834056<br>
                        Openingstijden: Ma t/m do: 17:30 - 22:00 | vr t/m zo 17:00 - 23:59
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </form>

    <script>
        $(function () {
            menuRedraw();
            $('#menuItemHome').addClass('active');
        });
    </script>

</asp:Content>
