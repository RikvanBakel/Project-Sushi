<%@ Page Title="" Language="C#" MasterPageFile="~/ProjectSushi.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectSushi.Login" Theme="ProjectThemes" %>

<asp:Content ID="contentLogin" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="container">
                <h2 class="text-center display-4" id="title">Inloggen</h2>
                <hr />
                <div class="col-6 offset-3 my-5">
                    <h6>Log in door uw gegevens in te vullen</h6>
                </div>

                <div class="col-6 offset-3">
                    <!--Form veranderen-->
                    <!--<form role="form">-->
                    <fieldset>
                        <%--<p class="text">Log in door uw gegevens in te vullen </p>--%>
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtLoginEmail" Text="Email:" CssClass="my-0"></asp:Label>
                            <asp:TextBox ID="txtLoginEmail" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="E-mail is vereist" ControlToValidate="txtLoginEmail" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="vgInloggen"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="E-mail is niet geldig" ControlToValidate="txtLoginEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="vgInloggen"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtWachtwoordInloggen" Text="Wachtwoord:" CssClass="my-0"></asp:Label>
                            <asp:TextBox ID="txtWachtwoordInloggen" runat="server" TextMode="Password" CssClass="form-control form-control-sm"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Wachtwoord is vereist" ControlToValidate="txtWachtwoordInloggen" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="vgInloggen"></asp:RequiredFieldValidator>
                        </div>
                        <a class="btn btn-link p-0" href="WWVergeten.aspx">Wachtwoord vergeten?</a>
                        <div class="my-3" runat="server" id="loginError" hidden>
                            <div class="alert alert-danger">
                                <strong>Fout! </strong><span>E-mailadres en/of wachtwoord is onjuist. Probeer het opnieuw.</span>
                            </div>
                        </div>
                        <asp:Button ID="Button2" runat="server" Text="Inloggen" OnClick="btnVerstuurLogin_Click" ValidationGroup="vgInloggen" CssClass="btn btn-primary btn-block mt-5" />
                    </fieldset>
                    <!--</form>-->
                </div>

                <div class="col-12 text-center my-3">
                    <h5>of</h5>
                    <p><a class="btn btn-link" data-toggle="modal" data-target="#registerModal">Maak een account aan door te registreren</a></p>
                </div>

                <div class="col-6 offset-3 my-3" runat="server" id="registrationError" hidden>
                    <div class="alert alert-danger">
                        <strong>Helaas! </strong><span>Dit e-mailadres is al in gebruik.</span>
                        <span>Als dit e-mailadres u toe behoort voer dan hierboven uw wachtwoord in.</span>
                    </div>
                </div>

                <!-- The Register Modal -->
                <div class="modal fade modal-xl" id="registerModal">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title ml-3">Registreer</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body mx-3">
                                <!--Form veranderen-->
                                <!--<form role="form" method="post" action="register.php">-->
                                <fieldset>
                                    <%--<p class="text pull-center">Registreer</p>--%>
                                    <div class="form-group mb-1">
                                        <asp:Label runat="server" AssociatedControlID="txtNaam" Text="Voornaam:" CssClass="my-0"></asp:Label>
                                        <asp:TextBox ID="txtNaam" name="txtNaam" runat="server" CssClass="form-control form-control-sm" MaxLength="50"></asp:TextBox>
                                        <!--Alleen letters intstellen-->
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNaam" ErrorMessage="Naam is niet ingevuld" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="vgRegistreren"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Naam moet letters zijn" ControlToValidate="txtNaam" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="row">
                                        <div class="col-4 pr-0">
                                            <div class="form-group mb-1">
                                                <asp:Label runat="server" AssociatedControlID="txtTussenvoegsel" Text="Tussenvoegsel:" CssClass="my-0"></asp:Label>
                                                <asp:TextBox ID="txtTussenvoegsel" runat="server" CssClass="form-control form-control-sm" MaxLength="50"></asp:TextBox>
                                                <!--Alleen letters intstellen-->
                                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Tussenvoegsel moet letters zijn" ControlToValidate="txtTussenvoegsel" Display="Dynamic" ForeColor="Red" MaximumValue="z" MinimumValue="a"></asp:RangeValidator>
                                            </div>
                                        </div>
                                        <div class="col-8 pl-1">
                                            <div class="form-group mb-1">
                                                <asp:Label runat="server" AssociatedControlID="txtAchternaam" Text="Achternaam:" CssClass="my-0"></asp:Label>
                                                <asp:TextBox ID="txtAchternaam" runat="server" CssClass="form-control form-control-sm" MaxLength="50"></asp:TextBox>
                                                <!--Alleen letters intstellen-->
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAchternaam" ErrorMessage="Achternaam is niet ingevuld" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="vgRegistreren"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Achternaam moet letters zijn" ControlToValidate="txtAchternaam" Display="Dynamic" ForeColor="Red" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-group mb-1">
                                                <asp:Label runat="server" AssociatedControlID="txtGeboortedatum" Text="Geboortedatum:" CssClass="my-0"></asp:Label>
                                                <asp:TextBox ID="txtGeboortedatum" runat="server" CssClass="form-control form-control-sm" MaxLength="50"></asp:TextBox>
                                                <!--Alleen letters intstellen-->
                                                <%-- "^([0-2][0-9]|(3)[0-1])(\/)(((0)[0-9])|((1)[0-2]))(\/)\d{4}$" --%>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtGeboortedatum" ErrorMessage="Vul uw geboortedatum in" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="vgRegistreren"></asp:RequiredFieldValidator>
                                                <%--                            <asp:RangeValidator ID="rvGeboortedatum" runat="server" ErrorMessage="U moet tussen de 0 en 125 jaar oud zijn" ControlToValidate="txtGeboortedatum" Display="Dynamic" ForeColor="Red" Type="Date" ValidationGroup="vgRegistreren"></asp:RangeValidator>
                                    <asp:CompareValidator ID="cvGeboortedatum" runat="server" ControlToValidate="txtGeboortedatum" ErrorMessage="Geboortedatum moet een datum zijn" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="vgRegistreren" Type="Date" Operator="DataTypeCheck"></asp:CompareValidator>--%>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-9 pr-0">
                                            <div class="form-group mb-1">
                                                <asp:Label runat="server" AssociatedControlID="txtStraat" Text="Straat:" CssClass="my-0"></asp:Label>
                                                <asp:TextBox ID="txtStraat" runat="server" CssClass="form-control form-control-sm mr-0" MaxLength="50"></asp:TextBox>
                                                <!--Alleen letters intstellen-->
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtStraat" ErrorMessage="Straat is niet ingevuld" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="vgRegistreren"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Straat moet letters zijn" ControlToValidate="txtStraat" Display="Dynamic" ForeColor="Red" ValidationExpression="^[.A-Za-z ]+$" SetFocusOnError="True" ValidationGroup="vgRegistreren"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                        <div class="col-3 pl-1">
                                            <div class="form-group mb-1">
                                                <asp:Label runat="server" AssociatedControlID="txtHuisnummer" Text="Huisnummer:" CssClass="my-0"></asp:Label>
                                                <asp:TextBox ID="txtHuisnummer" runat="server" CssClass="form-control form-control-sm ml-0" MaxLength="10"></asp:TextBox>
                                                <!--Alleen letters intstellen-->
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtHuisnummer" ErrorMessage="Huisnummer is niet in gevuld" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="vgRegistreren"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Alleen cijfers!" ControlToValidate="txtHuisnummer" Display="Dynamic" ForeColor="Red" ValidationExpression="^\d+$" SetFocusOnError="True" ValidationGroup="vgRegistreren"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-3 pr-0">
                                            <div class="form-group mb-1">
                                                <asp:Label runat="server" AssociatedControlID="txtPostcode" Text="Postcode:" CssClass="my-0"></asp:Label>
                                                <asp:TextBox ID="txtPostcode" runat="server" CssClass="form-control form-control-sm" MaxLength="10"></asp:TextBox>
                                                <!--Alleen letters intstellen-->
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPostcode" ErrorMessage="Postcode is niet ingevuld" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="vgRegistreren"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Post code is ongeldig" ControlToValidate="txtPostcode" Display="Dynamic" ForeColor="Red" ValidationExpression="^[1-9][0-9]{3}[\s]?[A-Za-z]{2}$" SetFocusOnError="True" ValidationGroup="vgRegistreren"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                        <div class="col-9 pl-1">
                                            <div class="form-group mb-1">
                                                <asp:Label runat="server" AssociatedControlID="txtWoonplaats" Text="Woonplaats:" CssClass="my-0"></asp:Label>
                                                <asp:TextBox ID="txtWoonplaats" runat="server" CssClass="form-control form-control-sm" MaxLength="50"></asp:TextBox>
                                                <!--Alleen letters intstellen-->
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtWoonplaats" ErrorMessage="Woonplaats is niet ingevuld" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="vgRegistreren"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Woonplaats moet letters zijn" ControlToValidate="txtWoonplaats" Display="Dynamic" ForeColor="Red" ValidationExpression="^[A-Za-z]+$" SetFocusOnError="True" ValidationGroup="vgRegistreren"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Straat veld toevoegen-->
                                    <!--Huisnummer veld toevoegen-->
                                    <!--Toevoeging veld toevoegen-->
                                    <!--Telefoonnummer veld toevoegen-->
                                    <div class="form-group mb-1">
                                        <asp:Label runat="server" AssociatedControlID="txtEmail" Text="Email:" CssClass="my-0"></asp:Label>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-control-sm" MaxLength="50"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtEmail" ErrorMessage="E-mail is niet ingevuld" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="vgRegistreren"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtEmail" ErrorMessage="E-mail is niet geldig" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ValidationGroup="vgRegistreren" Display="Dynamic"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="row">
                                        <div class="col-6 pr-0">
                                            <div class="form-group mb-1">
                                                <asp:Label runat="server" AssociatedControlID="txtWachtwoord" Text="Wachtwoord:" CssClass="my-0"></asp:Label>
                                                <asp:TextBox ID="txtWachtwoord" runat="server" CssClass="form-control form-control-sm" TextMode="Password" MaxLength="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtWachtwoord" ErrorMessage="Wachtwoord is niet ingevuld" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="vgRegistreren"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="col-6 pl-1">
                                            <div class="form-group mb-1">
                                                <asp:Label runat="server" AssociatedControlID="txtHerhaalWW" Text="Bevestig wachtwoord:" CssClass="my-0"></asp:Label>
                                                <asp:TextBox ID="txtHerhaalWW" runat="server" CssClass="form-control form-control-sm" TextMode="Password" MaxLength="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtHerhaalWW" ErrorMessage="Herhaal wachtwoord is vereist" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="vgRegistreren"></asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtWachtwoord" ControlToValidate="txtHerhaalWW" ErrorMessage="Wachtwoorden komen niet overeen" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="vgRegistreren"></asp:CompareValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group mb-1">
                                        <asp:Label runat="server" AssociatedControlID="txtTelefoonnummer" Text="Telefoonnummer:" CssClass="my-0"></asp:Label>
                                        <asp:TextBox ID="txtTelefoonnummer" runat="server" CssClass="form-control form-control-sm" placeholder="+31 123456789"></asp:TextBox>
                                        <!--Alleen letters intstellen-->
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtTelefoonnummer" ErrorMessage="Telefoonnummer is niet ingevuld" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="vgRegistreren"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="Is ongeldig" ControlToValidate="txtTelefoonnummer" Display="Dynamic" ForeColor="Red" ValidationExpression="^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$" SetFocusOnError="True" ValidationGroup="vgRegistreren"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-check pt-0">
                                        <label class="form-check-label">
                                            <!--Als voorwaarde maken-->
                                            <asp:CheckBox runat="server" type="checkbox" class="form-check-input mr-2 mt-2" ID="cbVoorwaarden" />
                                            Ik ga akkoord met de policy & terms van Jecosushi.
                                        </label>
                                    </div>
                                    <div>
                                        <br />
                                        <!--Bericht bedankt voor het aanmaken van een account-->
                                    </div>
                                </fieldset>
                                <!--</form>-->
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <asp:Button ID="btnVerstuur" runat="server" CssClass="btn btn-primary" Text="Registreren" OnClick="btnVerstuur_Click" ValidationGroup="vgRegistreren" />
                                <!--Bericht bedankt voor het aanmaken van een account-->

                                <button type="button" class="btn btn-light" data-dismiss="modal">Annuleren</button>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- The Modal -->

            </div>
        </div>

    </form>
</asp:Content>

<asp:Content ID="content1" ContentPlaceHolderID="userSripts" runat="server">
</asp:Content>
