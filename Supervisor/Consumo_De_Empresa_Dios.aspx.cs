﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;
using Logica;
using System.Web.UI.WebControls.WebParts;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Text;

namespace Supervisor
{
    public partial class Consumo_De_Empresa_Dios : System.Web.UI.Page
    {
        Logica_Bloque_Consumo_De_La_Empresa LBCDLE = new Logica_Bloque_Consumo_De_La_Empresa();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Administrador"] == null || Session["www"] == null)
            {
                Response.Redirect("sefue.aspx");
            }

            if (!Page.IsPostBack) // se carga la primera vez al abrir la pagina
            {
                Etiqueta_Administrador.Text = "Administrador: " + ((string)Session["Administrador"]).ToUpper();
                Etiqueta_Hora.Text = "Hora de Conexión: " + DateTime.Now;
                Etiqueta_Localizador.Text = "Conectado desde: " + Request.UserHostAddress.ToString();
            }

            Session["Buscar"] = string.Empty;

            if (DropDownList_Dios.SelectedValue == "4")
            {
                DropDownList_Buscar_Dios.Visible = true;
                Buscar_Dios.Visible = false;
            }
            if (DropDownList_Dios.SelectedValue != "4")
            {
                DropDownList_Buscar_Dios.Visible = false;
                Buscar_Dios.Visible = true;
            }

            if (LBCDLE.Logica_Contar_Consumo_De_Supervisores(string.Empty, 1) == 0) 
            {
                Extremo_Dios.Visible = false;
                Interno_Dios.Visible = false;
                return;
            
            }


            
                Session["Opcion"] = 1;
                Condiciones_Paginacion_Dios(string.Empty);
                Mostrar_Datos_Dios(string.Empty, 0);
            
        }

        protected void Volver_A_Consola_Click(object sender, EventArgs e)
        {
            Response.Redirect((string)Session["URL"]);
        }


        #region Paginacion_Dios
        public void Condiciones_Paginacion_Dios(string Datos) // pregunta en que momento tomo las condiciones del paginado si cuando arranca la pagina o cuando presiono el boton de buscar
        {

            ViewState["Pagina"] = 0; // posiciono por las dudas la pagina en cero siempre
            Interno_Dios.Visible = false; // contiene siguiente y anterior de las paginaciones centrales
            Siguiente_Dios_Primero.Visible = true; // siguiente de la primera pagina
            Anterior_Dios_Ultimo.Visible = false; // anterior de la ultima pagina
            ViewState["Cantidad_De_Datos"] = LBCDLE.Logica_Contar_Consumo_De_Supervisores(Datos, (int)Session["Opcion"]); // cuenta la cantidad de datos
            ViewState["Cantidad_De_Paginas"] = (int)ViewState["Cantidad_De_Datos"] / 20; // cantidad de paginas segun la cantidad de datos            
            ViewState["Resto"] = (int)ViewState["Cantidad_De_Datos"] % 20; // me dice cuantos datos faltan para completar una pagina completa
            if ((int)ViewState["Resto"] == 0) // sin resto hay una cantidad de paginas completas y le debo restar uno para asegurarme que como inicio de cero la ultima pagina no se encuentre vacia
            {
                ViewState["Cantidad_De_Paginas"] = (int)ViewState["Cantidad_De_Paginas"] - 1;
            }
            if ((int)ViewState["Cantidad_De_Datos"] <= 20) // para saber si hay menos de 20 datos no aparezca el boton de siguiente
            {
                Siguiente_Dios_Primero.Visible = false;
            }
        }

        protected void Siguiente_Dios_Click(object sender, EventArgs e)
        {
            Formulario_Dios.Visible = false;
            ViewState["Pagina"] = (int)ViewState["Pagina"] + 1;// sumo una pagina
            if ((int)ViewState["Pagina"] == (int)ViewState["Cantidad_De_Paginas"]) // mira si la pagina en la que estoy es igual a la pagina final (estoy en la ultima pagina)
            {
                Mostrar_Datos_Dios((string)Session["Buscar"], (int)ViewState["Pagina"]); // carga cada presion el gridview
                Interno_Dios.Visible = false; // como estoy en la ultima pagina solo debe mostrar el anterior ultimo 
                Extremo_Dios.Visible = true; // como estoy en la ultima pagina solo debe mostrar el anterior ultimo (contiene anterior ultimo y siguiente primero)
                Siguiente_Dios_Primero.Visible = false; // como estoy en la ultima pagina solo debe mostrar el anterior ultimo 
                Anterior_Dios_Ultimo.Visible = true; // como estoy en la ultima pagina solo debe mostrar el anterior ultimo 
            }
            else // sin no estoy en la ultima pagina
            {
                Mostrar_Datos_Dios((string)Session["Buscar"], (int)ViewState["Pagina"]); // carga cada presion el gridview
                Interno_Dios.Visible = true; // estoy en las paginas del centro
                Extremo_Dios.Visible = false; // no muestra ni siguiente ni anterior de las paginas ultima e inicial
            }
        }

        protected void Anterior_Dios_Click(object sender, EventArgs e)
        {
            Formulario_Dios.Visible = false;
            ViewState["Pagina"] = (int)ViewState["Pagina"] - 1; // resto una pagina
            if ((int)ViewState["Pagina"] == 0) // mira si esta en la primera pagina
            {
                Mostrar_Datos_Dios((string)Session["Buscar"], (int)ViewState["Pagina"]); // carga cada presion el gridview
                Interno_Dios.Visible = false;// como estoy en la primera pagina solo debe mostrar el siguiente primero 
                Extremo_Dios.Visible = true;// como estoy en la primera pagina solo debe mostrar el siguiente primero (contiene anterior ultimo y siguiente primero)
                Siguiente_Dios_Primero.Visible = true;// como estoy en la primera pagina solo debe mostrar el siguiente primero
                Anterior_Dios_Ultimo.Visible = false;// como estoy en la primera pagina solo debe mostrar el siguiente primero
            }
            else// sin no estoy en la primera pagina
            {
                Mostrar_Datos_Dios((string)Session["Buscar"], (int)ViewState["Pagina"]); // carga cada presion el gridview
                Interno_Dios.Visible = true; // estoy en las paginas del centro
                Extremo_Dios.Visible = false;// no muestra ni siguiente ni anterior de las paginas ultima e inicial
            }
        }

        #endregion

        #region GridView_Dios
        public void Mostrar_Datos_Dios(string Datos, int Pagina)
        {
            GridView_Dios.DataSource = LBCDLE.Logica_Mostrar_Consumo_De_Supervisores(Datos, (int)Session["Opcion"]).Skip(Pagina * 20).Take(20);
            GridView_Dios.DataBind();
        }
        #endregion

        #region Buscar_Dios
        protected void Boton_Buscar_Dios_Click(object sender, EventArgs e)
        {
            Formulario_Dios.Visible = false;
            Session["Opcion"] = int.Parse(DropDownList_Dios.SelectedValue);
            //Session["Buscar"] = Buscar_Dios.Text;

            if (DropDownList_Dios.SelectedValue != "4")
            {
                Session["Buscar"] = Buscar_Dios.Text;
            }
            if (DropDownList_Dios.SelectedValue == "4")
            {
                Session["Buscar"] = DropDownList_Buscar_Dios.SelectedValue;
            }

            Condiciones_Paginacion_Dios((string)Session["Buscar"]);
            Mostrar_Datos_Dios((string)Session["Buscar"], 0);
        }

        protected void Identificador_Dios(object sender, EventArgs e) // convierto al datalist en editable 
        {

            if (LBCDLE.Logica_Contar_Consumo_De_Supervisores(string.Empty, 1) == 0)
            {
                Formulario_Dios.Visible = false;
                 Mostrar_Datos_Dios(string.Empty, 0);
                return;

            }

            
            Formulario_Dios.Visible = true;
            GridViewRow row = GridView_Dios.SelectedRow; // declaro una variable del tipo de gridview
            Session["ID_Consulta"] = GridView_Dios.DataKeys[row.RowIndex].Value; // capturo el identificador del dato presionado
            List<Seleccionar_Consumo_SupervisoresResult> Datos = LBCDLE.Logica_Seleccionar_Consumo_De_Supervisores((int)Session["ID_Consulta"]);
            Administrador_Dios.Text = Datos[0].Administrador;
            Fecha_Dios.Text = Datos[0].Fecha_De_Consulta.ToString();
            Descripcion_Dios.Text = Datos[0].Tipo_De_Consulta;
            Empresa_Dios.Text = Datos[0].Empresa;

        }


        #endregion

        #region Botonera_De_Dios




        protected void Boton_Borrar_Dios_Click(object sender, EventArgs e)
        {
            if (LBCDLE.Logica_Borrar_Consumo_De_Supervisores((int)Session["ID_Consulta"]) == 1) // Borrar el administrador               
            {
                string alerta = @"alert('Dato borado correctamente'); 

                window.location.reload();";

                ScriptManager.RegisterStartupScript(this, typeof(Page), "", alerta, true);
                return;
            }
        }

        protected void Boton_Excel_Dios_Click(object sender, EventArgs e)
        {

            StringBuilder sb = new StringBuilder();
            StringWriter sw = new StringWriter(sb);
            HtmlTextWriter htw = new HtmlTextWriter(sw);

            Page page = new Page();
            HtmlForm form = new HtmlForm();
            GridView_Dios.DataSourceID = string.Empty;
            GridView_Dios.EnableViewState = false;
            GridView_Dios.AllowPaging = false;
            GridView_Dios.DataSource = LBCDLE.Logica_Mostrar_Consumo_De_Supervisores((string)Session["Buscar"], (int)Session["Opcion"]);
            GridView_Dios.DataBind();
            page.EnableEventValidation = false;
            page.DesignerInitialize();
            page.Controls.Add(form);
            form.Controls.Add(GridView_Dios);
            page.RenderControl(htw);
            Response.Clear();
            Response.Buffer = true;
            Response.ContentType = "applicattion/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=data.xls");
            Response.Charset = "UTF-8";
            Response.ContentEncoding = Encoding.Default;
            Response.Write(sb.ToString());
            Response.End();
        }

        #endregion





    }
}