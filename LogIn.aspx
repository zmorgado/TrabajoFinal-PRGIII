<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Presentacion.Nosotros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="CSS/Principal.css" rel="stylesheet" />
    <link href="CSS/LogIn.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
        <div class="Contenedor-LogIn">
            <div class="LogIn">
            <asp:Label ID="lblUsuario" runat="server" Text="Nombre de Usuario"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_Usuario" runat="server" MaxLength="20"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_Usuario" ErrorMessage="*" ForeColor="Red" ValidationGroup="Grupo1"></asp:RequiredFieldValidator>
                <br />
            <br />
            <asp:Label ID="lblContraseña" runat="server" Text="Contraseña"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" MaxLength="20"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtContraseña" ErrorMessage="*" ForeColor="Red" ValidationGroup="Grupo1"></asp:RequiredFieldValidator>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnAceptar" runat="server" Text="Ingresar" OnClick="btnAceptar_Click" ValidationGroup="Grupo1" />
            &nbsp;&nbsp;
                <asp:Label ID="lblVerificacion" runat="server"></asp:Label>
            <br />
                <br />
                
            </div>
            <asp:Button ID="btnRegistrarUsuario" runat="server" OnClick="btnRegistrarUsuario_Click" Text="Registrarse" />
        </div>

        <footer>Copyright © 2021, Relojes Duarte</footer>
    </form>
</body>
</html>
