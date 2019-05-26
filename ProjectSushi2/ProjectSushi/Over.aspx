<%@ Page Title="" Language="C#" MasterPageFile="~/ProjectSushi.Master" AutoEventWireup="true" CodeBehind="Over.aspx.cs" Inherits="ProjectSushi.Over" Theme="ProjectThemes"%>

<asp:Content id="contentOver" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">

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

    </form>
</asp:Content>

<asp:Content id="scriptsOver" ContentPlaceHolderID="userSripts" runat="server">
    <script>
        $(function () {
            menuRedraw();
            $('#menuItemOver').addClass('active');
        });
    </script>
</asp:Content>
