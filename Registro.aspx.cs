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
    public partial class Registro : System.Web.UI.Page
    {
        NegocioUsuario neg = new NegocioUsuario();
        Usuario usuario = new Usuario();
        
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

        protected void btnAceptar_Click1(object sender, EventArgs e)
        {
            usuario.Nombre = txtNombre.Text;
            usuario.Apellido = txtApellido.Text;
            usuario.NombreUsuario = txtUsuario.Text;
            usuario.Email = txtMail.Text;
            usuario.Telefono = txtTelefono.Text;            
            usuario.Contraseña = txtPass.Text;

            int c = neg.agregarUsuario(usuario);
            if (c==1){
                lblMensaje.Text = "Usuario agregado con exito";
                lblMensaje.Visible = true;
                txtApellido.Text = "";
                txtMail.Text = "";
                txtNombre.Text = "";
                txtPass.Text = "";
                txtRepetirPass.Text = "";
                txtTelefono.Text = "";
                txtUsuario.Text = "";
            }
            else if (c==-1)
            {
                lblMensaje.Text = "Error al agregar usuario";
                lblMensaje.Visible = true;
            }
            else if (c == 0)
            {
                lblMensaje.Text = "Nombre de usuario existente";
                lblMensaje.Visible = true;
            }
           
        }
    }
}