    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarProducto.aspx.cs" Inherits="Presentacion.AgregarProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="CSS/Principal.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style12 {
            width: 350px;
            height: 54px;
        }
        .auto-style13 {
            height: 54px;
        }
        .auto-style5 {
            width: 350px;
            height: 44px;
        }
        .auto-style6 {
            height: 44px;
        }
        .auto-style14 {
            width: 350px;
            height: 61px;
        }
        .auto-style15 {
            height: 61px;
        }
        .auto-style16 {
            width: 350px;
            height: 51px;
        }
        .auto-style17 {
            height: 51px;
        }
        .auto-style2 {
            width: 350px;
        }
        .auto-style18 {
            width: 350px;
            height: 52px;
        }
        .auto-style19 {
            height: 52px;
        }
        .auto-style20 {
            width: 350px;
            height: 36px;
        }
        .auto-style21 {
            height: 36px;
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
                <center>
                    <div>
                        <div >
                            <br />
                <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="Large" Text="Complete los datos del nuevo producto para cargarlo al sistema:"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <table class="auto-style1">
                    <tr>
                        <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Código de producto:</td>
                        <td class="auto-style13">
                            <asp:TextBox ID="txtCodigoProd" runat="server"  Width="220px" MaxLength="5"></asp:TextBox>
                            
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="rfvCodigo" runat="server" ControlToValidate="txtCodigoProd" ErrorMessage="Codigo Vacio" ForeColor="Red" ViewStateMode="Enabled">*</asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Stock:&nbsp;</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtStockProd" runat="server"  Width="220px"></asp:TextBox>
                            
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="rfvStock" runat="server" ControlToValidate="txtStockProd" ErrorMessage="Stock Vacio" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regexStock" runat="server" ControlToValidate="txtStockProd" ErrorMessage="stock invalido" ForeColor="Red" ValidationExpression="^[1-9]\d*$">*</asp:RegularExpressionValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Categoría:</td>
                        <td class="auto-style15">
                            <asp:DropDownList ID="ddlCategoriaProd" runat="server" Height="20px" Width="220px">
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Precio:</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="txtPrecioProd" runat="server" Width="217px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="rfvPrecio" runat="server" ControlToValidate="txtPrecioProd" ErrorMessage="Precio Vacio" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regexPrecio" runat="server" ControlToValidate="txtPrecioProd" ErrorMessage="precio invalido" ForeColor="Red" ValidationExpression="^\d+(,\d{1,2})?$">*</asp:RegularExpressionValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Descripción:</td>
                        <td class="auto-style19">
                            <asp:TextBox ID="txtDescProd" runat="server" Height="64px"  Width="529px" MaxLength="50"></asp:TextBox>
                            
                            &nbsp;<asp:RequiredFieldValidator ID="rfvDesc" runat="server" ControlToValidate="txtDescProd" ErrorMessage="Descripcion Vacia" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Imagen:</td>
                        <td class="auto-style19">
                            <asp:TextBox ID="txtUrlImagen" runat="server" Width="217px" MaxLength="100"></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="rfvImagen" runat="server" ControlToValidate="txtUrlImagen" ErrorMessage="Imagen Vacia" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Button ID="btnAgregar" runat="server" Height="28px" OnClick="btnAceptar_Click" Text="AGREGAR PRODUCTO" Width="159px" />
                            
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="lblMensaje" runat="server" Font-Size="Large"></asp:Label>
                            
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style22" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20"></td>
                        <td class="auto-style21">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                    </tr>
                </table>
                <br />
                <br />
            <br />
            </div>
                    </center>
            <div class="Registrarse">

            </div>
        </div>

        <footer>Copyright © 2021, Relojes Duarte</footer>
        </div>
        
    </form>
</body>
</html>
