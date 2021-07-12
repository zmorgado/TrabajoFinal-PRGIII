using Entidades;
using Negocio;
using System;
using System.Web.UI.WebControls;


namespace Presentacion
{
    public partial class Admin : System.Web.UI.Page
    {
        bool modifico;
        NegocioArticulo neg = new NegocioArticulo();
        NegocioCategoria negcat = new NegocioCategoria();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarGridView();
                
                if (Session["Nombre"] != null)
                {
                    hpLog.Text = Session["Nombre"].ToString();
                }
                
            }
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            lblModifico.Text = "";
            if (txtBusquedaCod.Text.Trim() != "")
            {
                string consulta = "select codArticulo_Art, Descripcion_Art, Stock_Art, Precio_Art, Imagen_Art,Nombre_Cat, IDCategoria_Cat from ARTICULOS inner join CATEGORIAS on IDCategoria_Art = IDCategoria_Cat where CodArticulo_Art like '%" + txtBusquedaCod.Text.Trim() + "%'";
                grvProductos.DataSource = neg.GetTabla(consulta);
                grvProductos.DataBind();

                txtBusquedaCod.Text = "";
            }
            else
            {
                cargarGridView();
            }
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            lblModifico.Text = "";
            cargarGridView();
        }

        protected void grvProductos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grvProductos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            lblModifico.Text = "";
            grvProductos.EditIndex = e.NewEditIndex;
            cargarGridView();
        }

        protected void grvProductos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grvProductos.EditIndex = -1;
            cargarGridView();
        }

        protected void grvProductos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvProductos.PageIndex = e.NewPageIndex;
            cargarGridView();
        }

        private void cargarGridView()
        {
            string consulta = "select codArticulo_Art, Descripcion_Art, Stock_Art, Precio_Art, Imagen_Art,Nombre_Cat, IDCategoria_Cat from ARTICULOS inner join CATEGORIAS on IDCategoria_Art = IDCategoria_Cat";
            grvProductos.DataSource = neg.GetTabla(consulta);
            grvProductos.DataBind();
        }

        protected void grvProductos_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                DropDownList ddl = (DropDownList)e.Row.FindControl("ddl_eit_categoriaArt");
                
                if (ddl != null)
                {
                    NegocioCategoria nC = new NegocioCategoria();
                    ddl.DataSource = nC.obtenerCategorias();
                    ddl.DataTextField = "Nombre_Cat";
                    ddl.DataValueField = "IDCategoria_Cat";

                    ddl.DataBind();
                }

            }
        }

        protected void grvProductos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            //art.Nroarticulo = Convert.ToString(((Label)grvProductos.Rows[e.RowIndex].FindControl("lbl_codArt")).Text);

            String s_Nroarticulo = ((Label)grvProductos.Rows[e.RowIndex].FindControl("eit_lbl_codArt")).Text;
            String s_Descripcion = ((TextBox)grvProductos.Rows[e.RowIndex].FindControl("eit_txt_descripcionArt")).Text;
            String s_Stock = ((TextBox)grvProductos.Rows[e.RowIndex].FindControl("eit_txt_stockArt")).Text;
            
            String s_imagen = ((TextBox)grvProductos.Rows[e.RowIndex].FindControl("eit_txt_urlfoto")).Text;

            DropDownList ddl = (DropDownList)grvProductos.Rows[e.RowIndex].FindControl("ddl_eit_categoriaArt");
            String s_categoria = ddl.SelectedValue;

            String s_Precio = ((TextBox)grvProductos.Rows[e.RowIndex].FindControl("eit_txt_precioArt")).Text;

            Articulo art = new Articulo();
            art.Nroarticulo = s_Nroarticulo;
            art.Stock = Convert.ToInt32(s_Stock);
            art.Descripcion = s_Descripcion;
            art.Imagen = s_imagen;
            art.Precio = Convert.ToDecimal(s_Precio);
            art.Idcategoria = s_categoria;

            modifico = neg.UpdateArticulo(art);

            if (modifico == true)
            {
                lblModifico.Text = "Operacion realizada con exito";
            }
            else
            {
                lblModifico.Text = "Operacion interrumpida";
            }

            grvProductos.EditIndex = -1;
            cargarGridView();
        }

        protected void grvProductos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            lblConfirmacion.Visible = true;
            btnAceptar.Visible = true;
            btnCancelar.Visible = true;

            Session["Eliminar"] = e.RowIndex;
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Articulo art = new Articulo();
            art.Nroarticulo = Convert.ToString(((Label)grvProductos.Rows[int.Parse(Session["Eliminar"].ToString())].FindControl("lbl_codArt")).Text);


            lblModifico.Text = art.Nroarticulo;

            modifico = neg.DeleteArticulo(art);

            if (modifico == true)
            {
                lblModifico.Text = "Operacion realizada con exito";
            }
            else
            {
                lblModifico.Text = "Operacion interrumpida";
            }

            grvProductos.EditIndex = -1;
            cargarGridView();
            lblConfirmacion.Visible = false;
            btnAceptar.Visible = false;
            btnCancelar.Visible = false;
            Session["Eliminar"] = null;
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            lblConfirmacion.Visible = false;
            btnAceptar.Visible = false;
            btnCancelar.Visible = false;
            Session["Eliminar"] = null;
        }
    }
}