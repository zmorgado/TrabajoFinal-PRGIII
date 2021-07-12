using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using System.Data;
namespace Presentacion
{
    public partial class Catalogo : System.Web.UI.Page
    {
        NegocioUsuario negUs = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Nombre"]!= null)
                {
                    hpLog.Text = Session["Nombre"].ToString();
                }

                /*ListView1.DataSource = negart.GetTabla();
                ListView1.DataBind();*/
                


            }
            if (Session["Admin"] == null)
            {
                hypAdmin.Visible = false;
            }
        }

        protected void btnSeleccion_Command(object sender, CommandEventArgs e)
        {
            if(e.CommandName == "AgregarFavoritos")
            {
                if (Session["Nombre"] != null)
                {
                    lblError.Visible = false;
                    if(!negUs.AgregarFavorito(e.CommandArgument.ToString(), Session["Nombre"].ToString()))
                    {                      
                        lblError.Text = "Ya existe este articulo en tu lista de favoritos.";
                        lblError.Visible = true;
                    }
                    else
                    {
                        lblError.Visible = false;
                    }
                    
                }
                else
                {
                    lblError.Visible = true;
                }
                
            }
        }

        protected void btnMostrar0_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT[CodArticulo_Art], [Descripcion_Art], [Precio_Art], [Imagen_Art] FROM[ARTICULOS] order by Precio_Art desc";

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            if (txtBusquedaCod.Text.Trim() != "")
            {
                SqlDataSource1.SelectCommand = "SELECT [CodArticulo_Art], [Descripcion_Art], [Precio_Art], [Imagen_Art] FROM [ARTICULOS] where CodArticulo_Art like '%" + txtBusquedaCod.Text.Trim() + "%'";
                txtBusquedaCod.Text = "";
            }
            else
            {
                SqlDataSource1.SelectCommand = "";
                SqlDataSource1.SelectCommand = "SELECT [CodArticulo_Art], [Descripcion_Art], [Precio_Art], [Imagen_Art] FROM [ARTICULOS]";
            }
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "";
            SqlDataSource1.SelectCommand = "SELECT [CodArticulo_Art], [Descripcion_Art], [Precio_Art], [Imagen_Art] FROM [ARTICULOS]";

        }

        protected void btnOrdenarMenAMay_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT[CodArticulo_Art], [Descripcion_Art], [Precio_Art], [Imagen_Art] FROM[ARTICULOS] order by Precio_Art asc";

        }

    }
}