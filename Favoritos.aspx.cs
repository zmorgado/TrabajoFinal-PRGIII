using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;

namespace Presentacion
{
    public partial class Favoritos : System.Web.UI.Page
    {
        NegocioUsuario negUs = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Nombre"] != null)
                {
                    hpLog.Text = Session["Nombre"].ToString();
                }

            }
            if (Session["Admin"] == null)
            {
                hypAdmin.Visible = false;
            }
            
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["Nombre"] = null;
            Response.Redirect("Home.aspx");
        }

        protected void btnSeleccion_Command(object sender, CommandEventArgs e)
        {
            if(e.CommandName == "EventoEliminar")
            {
                negUs.EliminarFavorito(e.CommandArgument.ToString(), Session["Nombre"].ToString());
                Response.Redirect("Favoritos.aspx");
            }
        }
    }
}

