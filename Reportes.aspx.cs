using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
namespace Presentacion
{
    public partial class Reportes : System.Web.UI.Page
    {
        NegocioArticulo neg = new NegocioArticulo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Nombre"] != null)
                {
                    hpLog.Text = Session["Nombre"].ToString();
                }
                cargarReportes();

            }
        }

        public void cargarReportes()
        {
            
            lblTotalStock.Text = neg.getTotalStock().ToString();
            lblTotalDineroStock.Text = neg.getTotaldineroStock().ToString();
            lblRelojBarato.Text = neg.getRelojBarato().ToString();
            lblRelojCaro.Text = neg.getRelojCaro().ToString();
            lblRelojBaratoPrecio.Text = neg.getPrecioRelojBarato().ToString();
            lblRelojCaroPrecio.Text = neg.getPrecioRelojCaro().ToString();


            lblCantUsuarios.Text = neg.getCantUsuarios().ToString();
            lblCantAdmins.Text = neg.getCantAdmins().ToString();

        }
    }
}