<%@ Page Title="" Language="C#" MasterPageFile="~/ProjectSushi.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ProjectSushi.Contact" Theme="ProjectThemes"%>
<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ProjectSushi.Contact" Theme="ProjectThemes"%>--%>

<asp:content id="contentContact" contentplaceholderid="body" runat="server">
    <form id="form1" runat="server">
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
                    <!--<form class="shake" role="form" method="post" id="contactForm" name="contact-form" data-toggle="validator">-->
                        <!-- Name -->
                        <div class="form-group label-floating">
                            <br />
                            <asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNaam" runat="server" ErrorMessage="Naam is niet ingevuld" ControlToValidate="txtNaam" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvNaam" runat="server" ErrorMessage="Naam moet letters zijn" ControlToValidate="txtNaam" Display="Dynamic" ForeColor="Red" MaximumValue="z" MinimumValue="a"></asp:RangeValidator>
                            <div class="help-block with-errors"></div>
                        </div>
                        <!-- email -->
                        <div class="form-group label-floating">
                            <br />
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="E-mail is niet ingevuld" ControlToValidate="txtEmail" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="E-mail is ongeldig" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RegularExpressionValidator>
                            <div class="help-block with-errors"></div>
                        </div>
                        <!-- Subject -->
                        <div class="form-group label-floating">
                            <br />
                            <asp:TextBox ID="txtOnderwerp" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvOnderwerp" runat="server" ErrorMessage="Onderwerp is vereist" ControlToValidate="txtOnderwerp" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                            <div class="help-block with-errors"></div>
                        </div>
                        <!-- Message -->
                        <div class="form-group label-floating">
                            <br />
                            <asp:TextBox ID="txtTekst" runat="server" Rows="3" TextMode="MultiLine" Width="100%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvTekst" runat="server" ErrorMessage="Vul opmerking in" ControlToValidate="txtTekst" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                            <div class="help-block with-errors"></div>
                        </div>
                        <!-- Form Submit -->
                        <div class="form-submit mt-5">
                            <asp:Button ID="btnVerzenden" runat="server" Text="Verzenden" OnClick="btnVerzenden_Click" />
                            <div id="msgSubmit" class="h3 text-center hidden"></div>
                            <div class="clearfix"></div>
                        </div>
                    <!--</form>-->
                </div>
            </div>
        </div>
    </section>

    </form>
</asp:content>

<asp:content id="scriptsContact" contentplaceholderid="userSripts" runat="server">
    <script>
        $(function () {
            menuRedraw();
            $('#menuItemContact').addClass('active');
        });
    </script>
</asp:content>
