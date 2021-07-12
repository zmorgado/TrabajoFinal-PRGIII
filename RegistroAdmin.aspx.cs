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
    public partial class RegistroAdmin : System.Web.UI.Page
    {
        NegocioAdmin neg = new NegocioAdmin();
        Entidades.Admin admin = new Entidades.Admin();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Nombre"] != null)
                {
                    hpLog.Text = Session["Nombre"].ToString();
                }
            }

        }
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            int c = 2;
            admin.Nombre = txtNombre.Text.Trim();
            admin.Apellido = txtApellido.Text.Trim();
            admin.Contraseña = txtPass.Text.Trim();
            admin.Id = txtIdAdmin.Text.Trim();

            if (txtPass.Text.Trim() == txtRepetirPass.Text.Trim())
            {
                admin.Contraseña = txtPass.Text;
            }
            else
            {
                /*mensaje de error*/
                lblMensaje.Text = "Las contraseñas no son iguales";
                lblMensaje.Visible = true;
            }
            c = neg.agregarAdmin(admin);
            if (c == 1)
            {
                lblMensaje.Text = "Administrador agregado con exito";
                lblMensaje.Visible = true;
            }
            else if (c == -1)

            {
                lblMensaje.Text = "Error";
                lblMensaje.Visible = true;
            }

            else if (c == 0) {
                lblMensaje.Text = "ID DE ADMIN EXISTENTE";
                lblMensaje.Visible = true;
            }

            LimpiarCampos();
            
        }

        private void LimpiarCampos()
        {
            txtApellido.Text = "";
            txtIdAdmin.Text = "";
            txtNombre.Text = "";
        }

        protected void btnRegistrar_Click1(object sender, EventArgs e)
        {

        }
    }
}