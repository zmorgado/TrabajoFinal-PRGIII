<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Presentacion.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="CSS/Principal.css" rel="stylesheet" />
    <link href="CSS/Slider.css" rel="stylesheet" />
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

        <div class="Container">
        <img class="Prev" src="http://cdn.onlinewebfonts.com/svg/download_98761.png" alt="Fallo">
        <ul class="Slider">
            <li><img src="https://relojesduarte.com/img/img1.jpg" alt="Alternate Text" /></li>
            <li><img src="https://relojesduarte.com/img/img2.jpg" alt="Alternate Text" /></li>
            <li><img src="https://relojesduarte.com/img/img3.jpg" alt="Alternate Text" /></li>
            <li><img src="https://relojesduarte.com/img/img4.jpg" alt="Alternate Text" /></li>
        </ul>
        <img class="Next" src="http://cdn.onlinewebfonts.com/svg/download_98761.png" alt="Fallo">
    </div>

        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>

        

        <footer>Copyright © 2021, Relojes Duarte</footer>
    </form>
    <script src="Script/Slider.js"></script>
</body>
</html>
