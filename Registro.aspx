<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Presentacion.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="CSS/Principal.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Merriweather' rel='stylesheet'>

    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 70%;
            height: 110px;
            margin-right: 291px;
        }
        .auto-style2 {
            width: 295px;
        }
        .auto-style3 {
            width: 295px;
            height: 25px;
        }
        .auto-style4 {
            height: 25px;
        }
        .auto-style5 {
            margin-left: 120px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
            <nav>
            <h1>RELOJES DUARTE</h1>
            <ul>
                <li>
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Home.aspx" CssClass="HyperLink">Home</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Catalogo.aspx" CssClass="HyperLink">Catalogo</asp:HyperLink>
                </li>
                <li> 
                    <asp:HyperLink ID="hpLog" runat="server" NavigateUrl="~/LogIn.aspx" CssClass="HyperLink">SignIn/LogIn</asp:HyperLink>
                </li>
                <li> 
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Contacto.aspx" CssClass="HyperLink">Contacto</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="hypAdmin" runat="server" NavigateUrl="~/Admin.aspx" CssClass="HyperLink">Admin</asp:HyperLink>
                </li>
            </ul>
        </nav>
              
                
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblUsuario0" runat="server" Text="Nombre"></asp:Label>
                        </td>
                        <td class="auto-style4">
            <asp:TextBox ID="txtNombre" runat="server" Height="18px" Width="160px" ValidationGroup="RFV" MaxLength="20"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Requerido" ForeColor="Red" InitialValue="                                 " ValidationGroup="Grupo 1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Apellido</td>
                        <td class="auto-style5">
            &nbsp;
            <asp:TextBox ID="txtApellido" runat="server" Width="161px" ValidationGroup="RFV" MaxLength="20"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtApellido" ErrorMessage="Apellido Requerido" ForeColor="Red" InitialValue="                                       " ValidationGroup="Grupo 1">*</asp:RequiredFieldValidator>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nombre de usuario</td>
                        <td>
            <asp:TextBox ID="txtUsuario" runat="server" Width="161px" ValidationGroup="RFV" MaxLength="20"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Nombre de Usuario Requerido" ForeColor="Red" InitialValue="                  " ValidationGroup="Grupo 1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mail</td>
                        <td>
            <asp:TextBox ID="txtMail" runat="server" Width="161px" ValidationGroup="RFV" MaxLength="30"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMail" ErrorMessage="Mail Requerido" ForeColor="Red" InitialValue="                        " ValidationGroup="Grupo 1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Telefono&nbsp;</td>
                        <td>
            <asp:TextBox ID="txtTelefono" runat="server" Width="161px" ValidationGroup="RFV" MaxLength="10"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Telefono Requerido" ForeColor="Red" InitialValue="                                      " ValidationGroup="Grupo 1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contraseña</td>
                        <td>
            <asp:TextBox ID="txtPass" runat="server" Width="161px" TextMode="Password" ValidationGroup="RFV" MaxLength="20"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPass" ErrorMessage="Contraseña Requerida" ForeColor="Red" InitialValue="                            " ValidationGroup="Grupo 1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Repita contraseña</td>
                        <td>
            <asp:TextBox ID="txtRepetirPass" runat="server" Width="161px" TextMode="Password" ValidationGroup="RFV" MaxLength="20" ></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtRepetirPass" ControlToValidate="txtPass" ErrorMessage="Las contraseñas deben ser iguales" ForeColor="Red" ValidationGroup="Grupo 1">*</asp:CompareValidator>
                        </td>
                    </tr>
                </table>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblMensaje" runat="server" Visible="False"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Grupo 1" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click1" ValidationGroup="Grupo 1" />
                <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <div class="Registrarse">

            </div>

        <footer>Copyright © 2021, Relojes Duarte</footer>
        </div>
        </div>
    </form>
</body>
</html>
