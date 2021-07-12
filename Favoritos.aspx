<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Favoritos.aspx.cs" Inherits="Presentacion.Favoritos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="CSS/Principal.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">

        .auto-style13 {
            width: 324px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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

        <footer>Copyright © 2021, Relojes Duarte</footer>
        </div>
        <asp:ListView ID="ListView1" class="lv" runat="server" DataKeyNames="CodArticulo_Art"  GroupItemCount="3" DataSourceID="SqlDataSource1" >
            
           
            
            <EditItemTemplate>
                <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">CodArticulo_Art:
                    <asp:Label ID="CodArticulo_ArtLabel1" runat="server" Text='<%# Eval("CodArticulo_Art") %>' />
                    <br />Descripcion_Art:
                    <asp:TextBox ID="Descripcion_ArtTextBox" runat="server" Text='<%# Bind("Descripcion_Art") %>' />
                    <br />Precio_Art:
                    <asp:TextBox ID="Precio_ArtTextBox" runat="server" Text='<%# Bind("Precio_Art") %>' />
                    <br />Imagen_Art:
                    <asp:TextBox ID="Imagen_ArtTextBox" runat="server" Text='<%# Bind("Imagen_Art") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No se han devuelto datos.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">CodArticulo_Art:
                    <asp:TextBox ID="CodArticulo_ArtTextBox" runat="server" Text='<%# Bind("CodArticulo_Art") %>' />
                    <br />Descripcion_Art:
                    <asp:TextBox ID="Descripcion_ArtTextBox0" runat="server" Text='<%# Bind("Descripcion_Art") %>' />
                    <br />Precio_Art:
                    <asp:TextBox ID="Precio_ArtTextBox0" runat="server" Text='<%# Bind("Precio_Art") %>' />
                    <br />Imagen_Art:
                    <asp:TextBox ID="Imagen_ArtTextBox0" runat="server" Text='<%# Bind("Imagen_Art") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                    <br />
                    <asp:Button ID="CancelButton0" runat="server" CommandName="Cancel" Text="Borrar" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color:#DCDCDC;color: #000000;" class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="CodArticulo_ArtLabel" runat="server" Text='<%# Eval("CodArticulo_Art") %>' Font-Bold="True" />
                    <br />
                    <br />
                    &nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="134px" ImageUrl='<%# Eval("Imagen_Art") %>' Width="287px" />
                    <br />&nbsp;&nbsp;&nbsp;<asp:Label ID="Descripcion_ArtLabel" runat="server" Text='<%# Eval("Descripcion_Art") %>' Width="284px" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $<asp:Label ID="Precio_ArtLabel" runat="server" Text='<%# Eval("Precio_Art") %>' Font-Bold="True" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnSeleccion" runat="server" Text="Eliminar" Width="99px" CommandArgument='<%# Eval("CodArticulo_Art") %>' CommandName="EventoEliminar" OnCommand="btnSeleccion_Command" />
                    <br />
                    &nbsp;<br /></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">CodArticulo_Art:
                    <asp:Label ID="CodArticulo_ArtLabel2" runat="server" Text='<%# Eval("CodArticulo_Art") %>' />
                    <br />Descripcion_Art:
                    <asp:Label ID="Descripcion_ArtLabel0" runat="server" Text='<%# Eval("Descripcion_Art") %>' />
                    <br />Precio_Art:
                    <asp:Label ID="Precio_ArtLabel0" runat="server" Text='<%# Eval("Precio_Art") %>' />
                    <br />Imagen_Art:
                    <asp:Label ID="Imagen_ArtLabel" runat="server" Text='<%# Eval("Imagen_Art") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        <br />
        <asp:Button ID="btnCerrarSesion" runat="server" OnClick="btnCerrarSesion_Click" Text="Cerrar Sesion" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RELOJESDUARTEConnectionString %>" SelectCommand="SP_ConseguirFavoritos" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="User" SessionField="Nombre" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
