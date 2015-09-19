﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Permisos_Dios.aspx.cs" Inherits="Supervisor.Permisos_Dios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <link href="css/permisos_dios.css" rel="stylesheet"/>

    <link href="css/encabezado.css" rel="stylesheet" />

    <title>Permisos Administrativos</title>

    <script>

        function Confirmacion() {

            var seleccion = confirm("¿Está seguro de realizar la acción requerida?");

            if (!seleccion) {
                alert("NO acepto la aplicar la opcion requerida");
                location.reload(true);
            }

            return seleccion;

        }
    </script>

</head>

<body>
    
    <form id="form1" runat="server">
    
        <div class="container">
               
               <nav class="navbar navbar-fixed-top header fondo_encabezado">
 	                <div class="container"> 
                                         
                        <div class="row">
                            <div class="col-xs-12 visible-xs administrador" >
                                <asp:Label ID="Administrador_chico" runat="server" Text="">Adm:</asp:Label>
                                <asp:Label ID="Etiqueta_Administrador_Chico" CssClass ="etiqueta_administrador_chico" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="col-xs-12 hidden-xs administrador">
                                <asp:Label ID="Administrador_grande" runat="server" Text="">Administrador:</asp:Label>
                                <asp:Label ID="Etiqueta_Administrador_Grande" CssClass ="etiqueta_administrador_grande" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-4 visible-xs ip chico">
                                <asp:Label ID="Localizador_chico" runat="server">Conectado:</asp:Label>
                                <asp:Label ID="Etiqueta_Localizador_Chico" CssClass ="etiqueta_administrador_chico" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="col-xs-4 hidden-xs ip chico">
                                <asp:Label ID="Localizador_Grande" runat="server">Conectado:</asp:Label>
                                <asp:Label ID="Etiqueta_Localizador_Grande" CssClass ="etiqueta_administrador_chico" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="col-xs-4 consola_de_control" style="text-align:center; ">
                                <h1 class="titulo">Permisos</h1>
                            </div>
                            <div class="col-xs-4 cerrar_session">                             
                                <asp:LinkButton ID="Volver_A_Consola" ToolTip="Volver a Consola de Control" runat="server" OnClick="Volver_A_Consola_Click"><< Volver</asp:LinkButton>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 visible-xs hora_chica_num" >
                                <asp:Label ID="Hora_chico" runat="server" >Hora:</asp:Label>
                                <asp:Label ID="Etiqueta_Hora_Chica" runat="server" ></asp:Label>
                            </div>
                            <div class="col-xs-12 hidden-xs hora_grande" >
                                <asp:Label ID="Hora_grande" runat="server" >Hora de Conexión:</asp:Label>
                                <asp:Label ID="Etiqueta_Hora_Grande" runat="server" ></asp:Label>
                            </div>
                        </div>
                    </div>
                 </nav> 
        
            </div>  

        <div class="navbar navbar-default" id="subnav">
            <div class="col-md-12"></div>	
        </div>
    
        <div class="container" id="main">        
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading" style="text-align:center"><h4 class="datos_del_administrador">Administrador</h4></div>
   			        <div class="panel-body">                           
                        <div class="col-xs-6 col-sm-6 col-md-6">                         
                            <asp:TextBox ID="Nik_Del_Administrador" placeholder="Nick" style="padding-left:3px" runat="server"  Width="100%"></asp:TextBox>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <asp:Button ID="Boton_De_Buscar" OnClientClick="return Confirmacion();" runat="server" Width="100%" Text="Permisos Dios" CssClass="btn btn-success" OnClick="Boton_De_Buscar_Click" />
                        </div>  
                                                          
                    </div>
                </div>
            </div>
        </div>        
        <hr />

        <footer>
            <div class=" container">
                <div class="row">
                    <div class="col-xs-12">
                        <h6 class="pie">Copyrigth®2015 - Webmaster Martina Ivana Romero</h6>
                    </div>
                        
                </div>
            </div>
        </footer>

        <!-- script references -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>

       

     </form>
</body>
</html>
