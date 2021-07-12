using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;


namespace Presentacion
{
    public partial class AgregarProducto : System.Web.UI.Page
    {
        NegocioArticulo neg = new NegocioArticulo();
        NegocioCategoria negcat = new NegocioCategoria();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlCategoriaProd.DataSource = negcat.obtenerCategorias();
                ddlCategoriaProd.DataTextField = "Nombre_Cat";
                ddlCategoriaProd.DataValueField = "IDCategoria_Cat";
                ddlCategoriaProd.DataBind();
                
                if (Session["Nombre"] != null)
                {
                    hpLog.Text = Session["Nombre"].ToString();
                }
                
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Articulo art = new Articulo();
            art.Nroarticulo = txtCodigoProd.Text.Trim();
            art.Idcategoria = ddlCategoriaProd.SelectedValue;
            art.Descripcion = txtDescProd.Text;
            art.Stock = Convert.ToInt32(txtStockProd.Text);
            art.Precio = Convert.ToDecimal(txtPrecioProd.Text);
            art.Imagen = txtUrlImagen.Text;

            int resultado = neg.AgregarArticulo(art);

            switch (resultado)
            {
                case 1:
                    lblMensaje.Text = "Articulo agregado correctamente";
                    break;
                case 0:
                    lblMensaje.Text = "Numero de articulo existente";
                    break;
                case -1:
                    lblMensaje.Text = "Error";
                    break;
            }

            limpiar();
        }

        protected void limpiar()
        {
            txtCodigoProd.Text = "";
            txtStockProd.Text = "";
            txtDescProd.Text = "";
            txtPrecioProd.Text = "";
            txtUrlImagen.Text = "";
         
        }




    }

    
}