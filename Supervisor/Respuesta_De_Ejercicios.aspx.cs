using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Supervisor
{
    public partial class Respuesta_De_Ejercicios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Administrador"] == null || Session["www"] == null)
            {
                Response.Redirect("sefue.aspx");
            }
            Etiqueta_Administrador.Text = "Administrador: " + ((string)Session["Administrador"]).ToUpper();
            Etiqueta_Hora.Text = "Hora de Conexión: " + DateTime.Now;
            Etiqueta_Localizador.Text = "Conectado desde: " + Request.UserHostAddress.ToString();

            Respuesta_Del_Ejercicio.ImageUrl = "http:\\www.colegioeba.com\respuesta_imprimible" + Request.QueryString["Ejercicio"] + ".png";
         
        }

        protected void Volver_A_Consola_Click(object sender, EventArgs e)
        {
            Response.Redirect((string)Session["URL"]);
        }
    }
}