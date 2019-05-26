<%@ Page Title="" Language="C#" MasterPageFile="~/ProjectSushi.Master" AutoEventWireup="true" CodeBehind="Reserveren.aspx.cs" Inherits="ProjectSushi.Reserveren" Theme="ProjectThemes" %>

<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reserveren.aspx.cs" Inherits="ProjectSushi.Reserveren"  Theme="ProjectThemes"%>--%>

<asp:Content ID="contentReserveren" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="container">
                <h2 class="text-center display-4" id="title">Reserveren</h2>

                <hr>
                <div class="row">
                    <div class="col-md-5">
                        <!--<form role="form" method="post" action="Reserveren.php">-->
                        <fieldset class="mt-5">
                            <h4 class="text-info pull-center mb-5">Persoonlijke gegevens</h4>
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="txtVoornaam" Text="Voornaam:" CssClass="my-0"></asp:Label>
                                <!--Mag geen cijfers zijn instellen-->
                                <asp:TextBox ID="txtVoornaam" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvVoornaam" runat="server" ErrorMessage="Voornaam is niet ingevuld" ControlToValidate="txtVoornaam" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Naam moet letters zijn" ControlToValidate="txtVoornaam" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="txtAchternaam" Text="Achternaam:" CssClass="my-0"></asp:Label>
                                <asp:TextBox ID="txtAchternaam" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvAchternaam" runat="server" ErrorMessage="Achternaam is niet ingevuld" ControlToValidate="txtAchternaam" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Naam moet letters zijn" ControlToValidate="txtAchternaam" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[A-Za-z ']+$"></asp:RegularExpressionValidator>
                                <%--<asp:RangeValidator ID="rvAchternaam" runat="server" ErrorMessage="Achternaam moet letters zijn" MinimumValue="a" MaximumValue="z" ControlToValidate="txtAchternaam" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>--%>
                            </div>

                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="txtEmail" Text="Email:" CssClass="my-0"></asp:Label>
                                <asp:TextBox ID="txtEmail" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="E-mail is niet ingevuld" ControlToValidate="txtEmail" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="E-mail is ongeldig" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="txtTelefoonnummer" Text="Telefoonnummer:" CssClass="my-0"></asp:Label>
                                <asp:TextBox ID="txtTelefoonnummer" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvTelefoonnummer" runat="server" ErrorMessage="Telefoonnummer is niet ingevuld" ControlToValidate="txtTelefoonnummer" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="cvTelefoonnummer" runat="server" ErrorMessage="Telefoonnummer moet cijfers zijn" ControlToValidate="txtTelefoonnummer" Operator="DataTypeCheck" Type="Integer" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:CompareValidator>
                            </div>
                            <div class="form-group label-floating">
                                <asp:Label runat="server" AssociatedControlID="txtOpmerking" Text="Opmerking:" CssClass="my-0"></asp:Label>
                                <!--Vereist?-->
                                <asp:TextBox ID="txtOpmerking" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <asp:CheckBox ID="cbVoorwaarden" runat="server"></asp:CheckBox>
                                    Ik ga akkoord met de policy & terms van Jecosushi.
                               
                                </label>
                            </div>
                            <div class="my-3" runat="server" id="policyEnTermsError" hidden>
                                <div class="alert alert-danger">
                                    <strong>Attentie! </strong><span>U moet akkoord gaan met de policy & terms van Jecosushi</span>
                                </div>
                            </div>

                        </fieldset>

                    </div>
                    <div class="col-md-2">
                        <!-------null------>
                    </div>

                    <div class="col-md-5">

                        <fieldset class="mt-5">
                            <h4 class="text text-info mb-5">Reserveergegevens </h4>

                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="ddlAantalPersonen" Text="Aantal Personen:" CssClass="my-0"></asp:Label>
                                <asp:DropDownList ID="ddlAantalPersonen" CssClass="form-control form-control-sm" runat="server" OnSelectedIndexChanged="ddlAantalPersonen_SelectedIndexChanged">
                                    <asp:ListItem Value="-1">Kies het aantal personen</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvAantalPersonen" runat="server" ErrorMessage="Aantal personen is niet ingevuld" InitialValue="-1" ControlToValidate="ddlAantalPersonen" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-6">
                                        <asp:Label runat="server" AssociatedControlID="txtCalender" Text="Datum:" CssClass="my-0"></asp:Label>
                                        <asp:TextBox ID="txtCalender" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                                        <asp:ImageButton ID="imgbtnCalender" runat="server" Height="20px" ImageUrl="~/App_Themes/ProjectThemes/ProjectAfbeeldingen/calendar-3724556_960_720.jpg" OnClick="imgbtnCalender_Click" ValidationGroup="asdfs" />
                                        <asp:RequiredFieldValidator ID="rfvCalender" runat="server" ErrorMessage="Selecteer een datum" ControlToValidate="txtCalender" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="rvCalender" runat="server" ErrorMessage="Datum moet binnen 2 weken zijn" Display="Dynamic" ForeColor="Red" Type="Date" ControlToValidate="txtCalender"></asp:RangeValidator>
                                    </div>
                                    <div class="col-6">
                                        <asp:Calendar ID="Calender" runat="server" Font-Size="8pt" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" ForeColor="#663399" Height="200px" OnSelectionChanged="Calender_SelectionChanged" ShowGridLines="True" Width="200px" OnDayRender="Calender_DayRender">
                                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                            <OtherMonthDayStyle ForeColor="#CC9966" />
                                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                            <SelectorStyle BackColor="#FFCC66" />
                                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                        </asp:Calendar>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="ddlTijdsperiode" Text="Tijdsperiode:" CssClass="my-0"></asp:Label>
                                <asp:DropDownList ID="ddlTijdsperiode" CssClass="form-control form-control-sm" runat="server">
                                    <asp:ListItem Value="-1">Kies tijdsperiode</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvTijdsperiode" runat="server" ErrorMessage="Tijdsperiode niet geselecteerd" ControlToValidate="ddlTijdsperiode" ForeColor="Red" InitialValue="-1" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>

                            <div>
                                <asp:Button ID="btnReserveren" CssClass="btn btn-primary btn-block" runat="server" Text="Reserveren" OnClick="btnReserveren_Click" />
                            </div>

                            <div class="my-3" runat="server" id="reserveringGelukt" hidden>
                                <div class="alert alert-success">
                                    <strong>Gelukt! </strong><span>Uw reservering is gelukt. Wij hebben uw reservering als volgt opgeslagen. </span>
                                    <span>Datum: <span id="reserveringsDatum"></span></span>
                                </div>
                            </div>
                        </fieldset>
                        <!--</form>-->
                    </div>
                </div>
            </div>
            <p class="text-center">
            </p>
        </div>
    </form>
</asp:Content>

<asp:Content ID="scriptsReserveren" ContentPlaceHolderID="userSripts" runat="server">
    <script>
        $(function () {
            menuRedraw();
            $('#menuItemReserveren').addClass('active');
        });
    </script>
</asp:Content>
