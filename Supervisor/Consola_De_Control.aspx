﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consola_De_Control.aspx.cs" Inherits="Supervisor.Consola_De_Control" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/consola_de_control.css" rel="stylesheet"/>

    <title>Consola de Control</title>

</head>

<body>
    
    <form id="form1" runat="server">

        <div class="Container">
            
            <nav class="navbar navbar-fixed-top header fondo_encabezado">
                <div class="container">
                    <div class="row">   
                        <div class="col-xs-4 administrador">
                            <asp:Label ID="Etiqueta_Administrador" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="col-xs-4 consola_de_control">
                            <h1 class="titulo"> Consola de Control</h1>
                        </div> 
                        <div class="col-xs-4 cerrar_session">                             
                            <asp:LinkButton ID="Cerrar_Session" ToolTip="Cerrar Session" runat="server" OnClick="Cerrar_Session_Click">X</asp:LinkButton>
                        </div>                         
                    </div>                  
                    <div class="row">
                        <div class="col-xs-4 ip">
                            <asp:Label ID="Etiqueta_Localizador" runat="server" ></asp:Label>
                        </div>
                        <div class="col-xs-4"></div>
                        <div class="col-xs-4"></div>                                             
                    </div>
                    <div class="row">
                        <div class="col-xs-4 hora"><asp:Label ID="Etiqueta_Hora" runat="server" ></asp:Label></div>
                        <div class="col-xs-4"></div>
                        <div class="col-xs-4"></div>
                    </div>
                </div>
            </nav>
            <div class="navbar navbar-default" id="subnav">
                <div class="col-xs-12"></div>	
            </div>
            
            <div class="container" id="main">

                <div class="row">

                    <div class="col-xs-12 col-sm-6 col-md-4">

                        <div class="panel panel-default">
                            <div class="panel-heading"><h4>Área de Supervisores</h4></div>
   			                <div class="panel-body">
                                <div class="list-group">
                                    <asp:LinkButton ID="Panel_De_Control"  class="list-group-item" runat="server" OnClick="Panel_De_Control_Click">Panel de Control</asp:LinkButton>                          
                                    <asp:LinkButton ID="Comentario_Administrador" class="list-group-item" runat="server" OnClick="Comentario_Administrador_Click">Comentarios de los Administradores</asp:LinkButton>                                   
                                    <asp:LinkButton ID="Control_Administrador" class="list-group-item" runat="server" OnClick="Control_Administrador_Click">Control de Adminstradores</asp:LinkButton>                                 
                                </div>
                            </div>
   		                </div>

                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-4">

                        <div class="well"> 
                            <div class="panel-heading"><h4>Área de Clientes</h4></div> 
                            <div class="panel-body">          
                                <div class="list-group">
                                    <asp:LinkButton ID="Panel_De_Usuario" class="list-group-item" runat="server" OnClick="Panel_De_Usuario_Click">Panel de Usuarios</asp:LinkButton>
                                    <asp:LinkButton ID="Comentario_De_Usuario" class="list-group-item" runat="server" OnClick="Comentario_De_Usuario_Click">Comentario de los Clientes</asp:LinkButton>                     
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-4">

                        <div class="panel panel-default">
                            <div class="panel-heading"><h4>Área de Pedidos</h4></div>
   			                <div class="panel-body">
                                <div class="list-group">
                                    <asp:LinkButton ID="Pedido_De_Explicacion" class="list-group-item" runat="server" OnClick="Pedido_De_Explicacion_Click">Pedido de Explicación</asp:LinkButton>
                                    <asp:LinkButton ID="Pedido_De_Personalizado" class="list-group-item" runat="server" OnClick="Pedido_De_Personalizado_Click">Pedido Personalizado</asp:LinkButton> 
                                    <asp:LinkButton ID="Respuestas" class="list-group-item" runat="server" OnClick="Respuestas_Click">Ver Respuestas</asp:LinkButton>                
                                </div>
                            </div>
   		                </div>

                    </div>

                </div>

                <div class="row">

                    <div class="col-xs-12 col-sm-6 col-md-4">

                        <div class="well"> 
                            <div class="panel-heading"><h4>Área de Precios</h4></div> 
                            <div class="panel-body">          
                                <div class="list-group">
                                    <asp:LinkButton ID="Empresas" class="list-group-item" runat="server" OnClick="Empresas_Click">Empresa</asp:LinkButton>
                                    <asp:LinkButton ID="Precios" runat="server" class="list-group-item" OnClick="Precios_Click">Precios</asp:LinkButton>                                    
                                    <asp:LinkButton ID="Activar_Ofertas" runat="server" class="list-group-item" OnClick="Activar_Ofertas_Click">Activar Ofertas</asp:LinkButton>
                                    <asp:LinkButton ID="Cargar_Ofertas" runat="server" class="list-group-item" OnClick="Cargar_Ofertas_Click">Valor de Ofertas</asp:LinkButton>                                   
                                </div>
                            </div>
                        </div> 

                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-4">

                        <div class="panel panel-default"> 
                            <div class="panel-heading"><h4>Área de Ejercicios</h4></div> 
                            <div class="panel-body">          
                                <div class="list-group">
                                    <asp:LinkButton ID="Insertar_Ejercicio" class="list-group-item" runat="server" OnClick="Insertar_Ejercicio_Click">Insertar Ejercicio</asp:LinkButton>
                                    <asp:LinkButton ID="Actualizar_Ejercicio" class="list-group-item" runat="server" OnClick="Actualizar_Ejercicio_Click">Actualizar Ejercicio</asp:LinkButton>                                                  
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-4">

                        <div class="well" >
                            <div class="panel-heading"><h4>Área de Crédito</h4></div>
   			                <div class="panel-body">
                                <div class="list-group">
                                    <asp:LinkButton ID="Tarjeta_Prepaga" class="list-group-item" runat="server" OnClick="Tarjeta_Prepaga_Click">Tarjetas Prepagas</asp:LinkButton>
                                    <asp:LinkButton ID="Carga_Manual_De_Credito" class="list-group-item" runat="server" OnClick="Carga_Manual_De_Credito_Click">Carga Manual</asp:LinkButton>  
                                    <asp:LinkButton ID="Carga_Automatica_De_Credito" runat="server" class="list-group-item" OnClick="Carga_Automatica_De_Credito_Click">Cargar Automática</asp:LinkButton>
                                    
                                    <a href="#" class="list-group-item">Facturación</a>
                                </div>
                            </div>
   		                </div>

                    </div>

                </div>

                <div class="row">

                    <div class="col-xs-12 col-sm-6 col-md-4">

                        <div class="panel panel-default">
                            <div class="panel-heading"><h4>Área de Permisos</h4></div>
   			                <div class="panel-body">
                                <div class="list-group">
                                    <asp:LinkButton ID="Permisos_Administradores" class="list-group-item" runat="server" OnClick="Permisos_Administradores_Click">Permisos para Administradores</asp:LinkButton>                                    
                                                   
                                </div>
                            </div>
   		                </div> 

                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-4">

                        <div class="well">
                           <div class="panel-heading"> <h4>Área de Compra y Venta</h4></div>
                             <div class="panel-body">
   			                    <div class="list-group">
                                    <asp:LinkButton ID="Movimientos_De_Los_Usuarios" class="list-group-item" runat="server" OnClick="Movimientos_De_Los_Usuarios_Click">Movimientos de los Usuarios</asp:LinkButton>                                
                                    <asp:LinkButton ID="Compras_De_Ejercicios" class="list-group-item" runat="server" OnClick="Compras_De_Ejercicios_Click">Compras de Resoluciones</asp:LinkButton>
                                    <asp:LinkButton ID="Compras_De_Videos" class="list-group-item" runat="server" OnClick="Compras_De_Videos_Click">Compras de Explicaciones</asp:LinkButton>                                   
                                </div>
                             </div>
   		                </div>

                    </div>
                                        
  	                <div class="col-xs-12 col-sm-6 col-md-4">    
                            	 
                        <div class="panel panel-default">
                        <div class="panel-heading"><h4>Área de Consumo Interno</h4></div>
   			                <div class="panel-body">
                                <div class="list-group">   
                                    <asp:LinkButton ID="Consumo_De_Empresa" runat="server"  class="list-group-item" OnClick="Consumo_De_Empresa_Click">Consumo Interno</asp:LinkButton>  
                                </div>
                            </div>
   		                </div>

  	                </div>

                </div><!--/main-->
             
            </div>
            <hr />

            <footer>
                <div class=" container">
                    <div class="row">
                        <div class="col-xs-6">
                            <h6>Copyrigth®2015 - Webmaster Martina Ivana Romero</h6>
                        </div>
                        <div class="col-xs-6"></div>
                    </div>
                </div>
            </footer>

            <!-- script references -->
            <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/scripts.js"></script>

       

        </div>
    
    </form>

</body>
</html>

