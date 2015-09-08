using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using Datos;

namespace Supervisor
{
    public partial class Comentario_Administrador : System.Web.UI.Page
    {
        Logica_Bloque_Comentario_Administrador LBCA = new Logica_Bloque_Comentario_Administrador();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Administrador"] == null || Session["www"] == null)
            {
                Response.Redirect("sefue.aspx");
            }
            Etiqueta_Administrador.Text = "Administrador: " + ((string)Session["Administrador"]).ToUpper();
            Etiqueta_Hora.Text = "Hora de Conexión: " + DateTime.Now;
            Etiqueta_Localizador.Text = "Conectado desde: " + Request.UserHostAddress.ToString();
        }

        protected void Volver_A_Consola_Click(object sender, EventArgs e)
        {
            Response.Redirect((string)Session["URL"]);
        }

        protected void Boton_Enviar_Comentario_Click(object sender, EventArgs e)
        {
            int Valor = LBCA.Logica_Insertar_Comentario((int)Session["Variable_ID_Administrador"], Comentario.Text);
            if (Valor == 1) // todo ok
            {
                string alerta = @"alert('El comentario fué correctamente enviado'); 

                window.location.reload();";

                ScriptManager.RegisterStartupScript(this, typeof(Page), "", alerta, true);
                return;
            }
        }
    }
}