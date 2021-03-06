﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Activar_Oferta_Administrador.aspx.cs" Inherits="Supervisor.Activar_Oferta_Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/activar_oferta_administrador.css" rel="stylesheet"/>

    <title>Activar Ofertas</title>

</head>

<body>
    
    <form id="form1" runat="server">
    
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            
        <div class="container">

            <nav class="navbar navbar-fixed-top header fondo_encabezado">
 	            <div class="container"> 
                    <div class="col-md-12">                       
                        <div class="row">
                            <div class="col-xs-4 administrador">
                                <asp:Label ID="Etiqueta_Administrador" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="col-xs-4 consola_de_control" style="text-align:center">
                                <h1 class="titulo">Activar Ofertas</h1>
                            </div> 
                            <div class="col-xs-4 cerrar_session">                             
                                <asp:LinkButton ID="Volver_A_Consola" ToolTip="Volver a Consola de Control" runat="server" OnClick="Volver_A_Consola_Click"><< Volver</asp:LinkButton>
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
                            <div class="col-xs-4 hora">                         
                                <asp:Label ID="Etiqueta_Hora" runat="server" ></asp:Label>
                            </div>
                            <div class="col-xs-4"></div>
                            <div class="col-xs-4"></div>
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
                        <div class="encabezado_panel panel-heading fondo" style="text-align:center"><h2 class="datos_del_administrador">Ofertas</h2></div>   
                        <div class="panel-body">                
                            <div class="form-group">                            
                                <asp:RadioButtonList CellSpacing="5" ID="RadioButtonList_Ofertas_Administrador" runat="server">
                                    <asp:ListItem Text="&nbsp;&nbsp;&nbsp;&nbsp;Bonificación por Carga" Value="2" Enabled="false" ></asp:ListItem>
                                    <asp:ListItem Text="&nbsp;&nbsp;&nbsp;&nbsp;Descuento en la Segunda Compra" Value="3" Enabled="false"></asp:ListItem>
                                    <asp:ListItem Text="&nbsp;&nbsp;&nbsp;&nbsp;Descuento en la Compra" Value = "5" Enabled="false"></asp:ListItem>
                                    <asp:ListItem Text="&nbsp;&nbsp;&nbsp;&nbsp;Bonificación en la Próxima Carga" Value ="7" Enabled="false"></asp:ListItem>
                                    <asp:ListItem Text="&nbsp;&nbsp;&nbsp;&nbsp;Hoy Gratis" Value="8" Enabled="false"></asp:ListItem>
                                    <asp:ListItem Text="&nbsp;&nbsp;&nbsp;&nbsp;2 x 1" Value="9" Enabled="false"></asp:ListItem>
                                    <asp:ListItem Text="&nbsp;&nbsp;&nbsp;&nbsp;2 x 1 en Vídeos" Value="10" Enabled="false"></asp:ListItem>
                                    <asp:ListItem Text="&nbsp;&nbsp;&nbsp;&nbsp;2 x 1 en Ejercicios" Value = "11" Enabled="false"></asp:ListItem>
                                    <asp:ListItem Text="&nbsp;&nbsp;&nbsp;&nbsp;Aumento en Duración de Todas las Compras" Value ="12" Enabled="false"></asp:ListItem>
                                    <asp:ListItem Text="&nbsp;&nbsp;&nbsp;&nbsp;Aumento en la Duración de la Compra" Value="13" Enabled="false"></asp:ListItem>
                                    <asp:ListItem Text="&nbsp;&nbsp;&nbsp;&nbsp;2 x 1 en Impresiones" Value="14" Enabled="false" ></asp:ListItem>
                                    <asp:ListItem Text="&nbsp;&nbsp;&nbsp;&nbsp;2 x 1 en Explicaciones" Value = "15" Enabled="false"></asp:ListItem>
                                </asp:RadioButtonList>                                                                                                 
                            </div>
                            <div class="form-group">
                                <asp:RadioButton ID="Bonificacion_Registro" Enabled="false" Text="&nbsp;&nbsp;&nbsp;&nbsp;Bonificación por Registrarse" runat="server" />                                                   
                            </div>
                            <div class="form-group">
                                <asp:RadioButton ID="Bonificacion_Por_Cantidad" Text="&nbsp;&nbsp;&nbsp;&nbsp;Bonificación por Ser Cliente Habitué" Enabled="false" runat="server" />                                                  
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

           
        
    </form>
</body>
    
</html>

