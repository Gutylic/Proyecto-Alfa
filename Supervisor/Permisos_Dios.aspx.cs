﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace Supervisor
{
    public partial class Permisos_Dios : System.Web.UI.Page
    {
        Logica_Bloque_Permiso_Dios LBPD = new Logica_Bloque_Permiso_Dios();
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

        protected void Boton_De_Buscar_Click(object sender, EventArgs e)
        {
            int Valor = LBPD.Logica_Insertar_Permisos_Dios(Nik_Del_Administrador.Text);

            if (Valor == 1)
            {
                string alerta = @"alert('Fué creado un administrador tipo dios');";
             
                ScriptManager.RegisterStartupScript(this, typeof(Page), "", alerta, true);
                return;
            }
            else
            {
                string error = @"alert('No pudo crear un administrador tipo dios, intentelo más tarde');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "", error, true);
                return;
            }
        }
    }
}