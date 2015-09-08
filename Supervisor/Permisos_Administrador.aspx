﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Permisos_Administrador.aspx.cs" EnableEventValidation="false" Inherits="Supervisor.Permisos_Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/permisos_administrador.css" rel="stylesheet"/>

    <title>Permisos Administrativos</title>

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
                            <h1 class="titulo">Permisos</h1>
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
                        <div class="col-xs-4 hora"><asp:Label ID="Etiqueta_Hora" runat="server" ></asp:Label></div>
                        <div class="col-xs-4"></div>
                        <div class="col-xs-4"></div>
                    </div>
                </div>
            </nav>
            <div class="navbar navbar-default" id="subnav">
                <div class="col-xs-12"></div>	
            </div>
            </div>
    
        <div class="container" id="main">
            <div class="row">
                <div class="col-xs-12">       
                    <div class="panel panel-default">                             
                        <div class="encabezado_panel panel-heading fondo" style="text-align:center"><h2 class="datos_del_administrador">Empresas</h2></div>                 
                        <div class="panel-body">          
                            <form class="form-horizontal">
                                <div class="row">
                                    <div class="form-group" style="text-align:center">
                                        <h3 class="col-sm-12 control-label clases" style="color:red">No tiene los suficientes permisos para acceder</h3>                                            
                                    </div>
                                </div>                                    
                            </form>
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