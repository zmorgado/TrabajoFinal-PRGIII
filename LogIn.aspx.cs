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
    public partial class Nosotros : System.Web.UI.Page
    {

        NegocioUsuario negUS = new NegocioUsuario();
        NegocioAdmin negAD = new NegocioAdmin();
        Usuario user = new Usuario();
        Entidades.Admin admin = new Entidades.Admin();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Nombre"] != null)
                {
                    hpLog.Text = Session["Nombre"].ToString();
                    Response.Redirect("Favoritos.aspx");
                }            
                
            }
            if (Session["Admin"] == null)
            {
                hypAdmin.Visible = false;
            }
        }

        protected void btnRegistrarUsuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {

            user.NombreUsuario = txt_Usuario.Text.ToString();
            user.Contraseña = txtContraseña.Text.ToString();
            admin.Id = user.NombreUsuario.ToString();
            admin.Contraseña = user.Contraseña.ToString();

            if (negUS.verificarUsuario(user)){ 
                Session["Nombre"] = user.NombreUsuario.ToString();
                Session["Admin"] = null;
                Response.Redirect("Home.aspx");
            }
            else if (negAD.verificarAdmin(admin))
            {
                Session["Nombre"] = user.NombreUsuario.ToString();
                Session["Admin"] = "True";
                Response.Redirect("Home.aspx");
            }
            else {
                txt_Usuario.Text = "";
                lblVerificacion.Text = "Usuario o contraseña erroneo"; 
            }

            

        }
    }
}