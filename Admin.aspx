<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Presentacion.Admin" %>

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
        .auto-style3 {
            width: 60px;
        }
        .auto-style4 {
            width: 28px;
        }
        .auto-style5 {
            width: 333px;
        }
        .auto-style6 {
            width: 179px;
        }
    </style>
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
        <div>
            <br />
            <div class="div-contenedor">
                <div class="div-class-1">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="X-Large" Text="GESTION PRODUCTOS"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hlVerReportes" runat="server" NavigateUrl="Reportes.aspx" BorderColor="#999966" BorderStyle="None" Font-Underline="True" ForeColor="#000099">VER REPORTES</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hlAgregar" runat="server" NavigateUrl="AgregarProducto.aspx" BorderColor="Black" Font-Underline="True" ForeColor="#000099">AGREGAR PRODUCTO</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hlAgregarAdmin" runat="server" NavigateUrl="~/RegistroAdmin.aspx" BorderColor="Black" Font-Underline="True" ForeColor="#000099">AGREGAR ADMINISTRADOR</asp:HyperLink>                    
                </div>
            </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <div class="div-contenedor">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ingrese el código de producto para buscar:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtBusquedaCod" runat="server" Width="307px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btnFiltrar" runat="server" OnClick="btnFiltrar_Click" Text="Filtrar" Width="72px" />
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="btnMostrar" runat="server" Height="26px" OnClick="btnMostrar_Click" Text="Mostrar todos" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            </div>
            <br />
            <asp:Label ID="lblConfirmacion" runat="server" Text="¿Desea Eliminar este registro?" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAceptar" runat="server" Height="20px" OnClick="btnAceptar_Click" Text="Aceptar" Visible="False" Width="71px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCancelar" runat="server" Height="20px" OnClick="btnCancelar_Click" Text="Cancelar" Visible="False" Width="80px" />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblModifico" runat="server"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="grvProductos" runat="server" Width="789px" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateEditButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="5px" CellPadding="3" HorizontalAlign="Center" OnPageIndexChanging="grvProductos_PageIndexChanging" OnRowCancelingEdit="grvProductos_RowCancelingEdit" OnRowEditing="grvProductos_RowEditing" OnSelectedIndexChanged="grvProductos_SelectedIndexChanged" AutoGenerateDeleteButton="True" OnRowDataBound="grvProductos_RowDataBound" OnRowDeleting="grvProductos_RowDeleting" OnRowUpdating="grvProductos_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="Cod. Artículo">
                        <EditItemTemplate>
                            <asp:Label ID="eit_lbl_codArt" runat="server" Text='<%# Bind("CodArticulo_Art") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_codArt" runat="server" Text='<%# Bind("CodArticulo_Art") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Categoría">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddl_eit_categoriaArt" runat="server">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_categoriaArt" runat="server" Text='<%# Bind("Nombre_Cat") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Descripción">
                        <EditItemTemplate>
                            <asp:TextBox ID="eit_txt_descripcionArt" runat="server" Text='<%# Bind("Descripcion_Art") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="eit_txt_descripcionArt" ErrorMessage="Descripcion Requerida" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_descripcionArt" runat="server" Text='<%# Bind("Descripcion_Art") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Stock">
                        <EditItemTemplate>
                            <asp:TextBox ID="eit_txt_stockArt" runat="server" Text='<%# Bind("Stock_Art") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvStock" runat="server" ControlToValidate="eit_txt_stockArt" ErrorMessage="Stock Vacio" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regexStock" runat="server" ControlToValidate="eit_txt_stockArt" ErrorMessage="stock invalido" ForeColor="Red" ValidationExpression="^[1-9]\d*$">*</asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_stockArt" runat="server" Text='<%# Bind("Stock_Art") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Precio">
                        <EditItemTemplate>
                            <asp:TextBox ID="eit_txt_precioArt" runat="server" Text='<%# Bind("Precio_Art") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPrecio" runat="server" ControlToValidate="eit_txt_precioArt" ErrorMessage="Precio Vacio" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regexPrecio" runat="server" ControlToValidate="eit_txt_precioArt" ErrorMessage="precio invalido" ForeColor="Red" ValidationExpression="^\d+(,\d{1,4})?$">*</asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_precioArt" runat="server" Text='<%# Bind("Precio_Art") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Url de Imagen">
                        <EditItemTemplate>
                            <asp:TextBox ID="eit_txt_urlfoto" runat="server" Text='<%# Bind("Imagen_Art") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvImagen" runat="server" ControlToValidate="eit_txt_urlfoto" ErrorMessage="Imagen Vacia" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_urlImagenArt" runat="server" Text='<%# Bind("Imagen_Art") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#D3D3D3" Font-Bold="True" ForeColor="Black" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <br />
        </div>
        <footer>Copyright © 2021, Relojes Duartee</footer>
    </form>
</body>
</html>
