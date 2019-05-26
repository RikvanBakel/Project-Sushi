<%@ Page Title="" Language="C#" MasterPageFile="~/ProjectSushi.Master" AutoEventWireup="true" CodeBehind="MenuKaart.aspx.cs" Inherits="ProjectSushi.MenuKaart" Theme="ProjectThemes" %>

<asp:Content ID="contentMenuKaart" ContentPlaceHolderID="body" runat="server">
    <form>
        <section>
            <br>
            <br>
            <div class="container">

                <div class="col-md-12 wow animated fadeInLeft" data-wow-delay=".2s">
                    <h1 class="section-title">Menukaart:</h1>
                </div>
                <div class="zoom">
                    <img src="Afbeeldingen/Menukaart1.jpg" class="img-fluid" alt="Responsive image" width="80%">
                </div>
                <div class="zoom">
                    <img src="Afbeeldingen/Menukaart2.jpg" class="img-fluid" alt="Responsive image" width="80%">
                </div>

            </div>
            <br>
            <br>
            <br>
        </section>
    </form>
</asp:Content>

<asp:Content ID="scriptsMenuKaart" ContentPlaceHolderID="userSripts" runat="server">
    <script>
        $(function () {
            menuRedraw();
            $('#menuItemMenuKaart').addClass('active');
        });
    </script>
</asp:Content>

