﻿<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Respuestas_Dios.aspx.cs" Inherits="Supervisor.Respuestas_Dios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    
    <link href="css/respuestas_dios.css" rel="stylesheet"/>
    
    <link href="css/encabezado.css" rel="stylesheet" />

    <script>

        function validar_numerico(evento) {

            var tecla = document.all ? tecla = evento.which : tecla = evento.keyCode;
            return (tecla > 47 && tecla < 58);

        };

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
    
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            
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
            <div class="row">
                <div class="col-xs-12">       
                    <div class="panel panel-default">                             
                        <div class="encabezado_panel panel-heading fondo"><h2 class="datos_del_administrador" style="text-align:center">Obtener Respuestas</h2></div>   
                        <div class="panel-body">                
                            <div class="row">
                                <div class="col-xs-6">
                                    <asp:TextBox ID="Numero_de_Ejercicio" Width="100%" Placeholder="Número" runat="server" onKeyPress="return validar_numerico(event)"></asp:TextBox></div>
                                <div class="col-xs-6">
                                    <asp:Button ID="Boton_Ejercicio" Width="100%" CssClass="btn btn-danger" runat="server" Text="Ejercicio" OnClick="Boton_Ejercicio_Click" />
                                </div>
                            </div>  
                        </div>
                    </div>
                    <div class="panel panel-default">                             
                        <div class="encabezado_panel panel-heading fondo"><h2 class="datos_del_administrador" style="text-align:center">Obtener Explicaciones</h2></div>   
                        <div class="panel-body">                
                            <div class="row">
                                <div class="col-xs-6">
                                    <asp:TextBox ID="Palabras_Claves" Width="100%" TextMode="MultiLine" Placeholder="Palabras" runat="server"></asp:TextBox></div>
                                <div class="col-xs-6">
                                    <asp:Button ID="Boton_Videos" Width="100%" CssClass="btn btn-warning" runat="server" Text="Vídeos" OnClick="Boton_Videos_Click" />
                                </div>
                            </div>  
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
                                <h6>Copyrigth®2015 - Webmaster Martina Ivana Romero</h6>
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

