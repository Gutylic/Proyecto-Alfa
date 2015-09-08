using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;
using Logica;

namespace Supervisor
{
    public partial class Activar_Oferta_Administrador : System.Web.UI.Page
    {

        Logica_Bloque_Activar_Oferta_Administrador LBAOA = new Logica_Bloque_Activar_Oferta_Administrador();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["Administrador"] == null || Session["www"] == null)
            {
                Response.Redirect("sefue.aspx");
            }
            Etiqueta_Administrador.Text = "Administrador: " + ((string)Session["Administrador"]).ToUpper();
            Etiqueta_Hora.Text = "Hora de Conexión: " + DateTime.Now;
            Etiqueta_Localizador.Text = "Conectado desde: " + Request.UserHostAddress.ToString();

            
            if (!Page.IsPostBack) // se carga la primera vez al abrir la pagina
            {
                List<Mostrar_Activar_Oferta_AdministracionResult> Datos = LBAOA.Logica_Mostrar_Activar_Ofertas((int)Session["Variable_ID_Empresa"]); // carga los datos del administrador elegido por el supervisor

                if (Datos[0].Oferta_2) 
                {
                    RadioButtonList_Ofertas_Administrador.SelectedValue = "2";
                }
                if (Datos[0].Oferta_3)
                {
                    RadioButtonList_Ofertas_Administrador.SelectedValue = "3";
                }
                if (Datos[0].Oferta_5)
                {
                    RadioButtonList_Ofertas_Administrador.SelectedValue = "5";
                }
                if (Datos[0].Oferta_7)
                {
                    RadioButtonList_Ofertas_Administrador.SelectedValue = "7";
                }
                if (Datos[0].Oferta_8)
                {
                    RadioButtonList_Ofertas_Administrador.SelectedValue = "8";
                }
                if (Datos[0].Oferta_9)
                {
                    RadioButtonList_Ofertas_Administrador.SelectedValue = "9";
                }
                if (Datos[0].Oferta_10)
                {
                    RadioButtonList_Ofertas_Administrador.SelectedValue = "10";
                }
                if (Datos[0].Oferta_11)
                {
                    RadioButtonList_Ofertas_Administrador.SelectedValue = "11";
                }
                if (Datos[0].Oferta_12)
                {
                    RadioButtonList_Ofertas_Administrador.SelectedValue = "12";
                }
                if (Datos[0].Oferta_13)
                {
                    RadioButtonList_Ofertas_Administrador.SelectedValue = "13";
                }
                if (Datos[0].Oferta_14)
                {
                    RadioButtonList_Ofertas_Administrador.SelectedValue = "14";
                }
                if (Datos[0].Oferta_15)
                {
                    RadioButtonList_Ofertas_Administrador.SelectedValue = "15";
                }
                if (Datos[0].Oferta_1)
                {
                    Bonificacion_Registro.Checked = true;
                }
                if (Datos[0].Oferta_4)
                {
                    Bonificacion_Por_Cantidad.Checked = true;
                }
                
            }
        }

        protected void Volver_A_Consola_Click(object sender, EventArgs e)
        {
            Response.Redirect((string)Session["URL"]);
        }
    }
}