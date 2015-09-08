<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tarjeta_Prepaga_Administrador.aspx.cs" UICulture="de" Culture="en-US" EnableEventValidation="false" Inherits="Supervisor.Tarjeta_Prepaga_Administrador" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/tarjeta_prepaga_administrador.css" rel="stylesheet"/>
    
    <title>Tarjeta Prepaga</title>

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
                            <div class="col-xs-4 consola_de_control">
                                <h1 class="titulo">Tarjeta Prepaga</h1>
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
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">   
                        <ContentTemplate>   
                            <div class="panel panel-default">                                                            
                                <div class="encabezado_panel panel-heading fondo" style="height:150px; text-align:center">
                                    <h2 class="datos_del_administrador">Control Tarjetas Prepagas</h2>
                                    <hr />
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="Buscar_Administrador" Width="100%" Height="36px" runat="server"></asp:TextBox>
                                        <cc1:FilteredTextBoxExtender ID="Buscar_Administrador_FilteredTextBoxExtender" FilterType="Numbers" runat="server" BehaviorID="Buscar_Administrador_FilteredTextBoxExtender" TargetControlID="Buscar_Administrador">
                                        </cc1:FilteredTextBoxExtender>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:Button ID="Boton_Buscar_Administrador" runat="server" CssClass="btn btn-primary" Width="100%" Text="Buscar" OnClick="Boton_Buscar_Administrador_Click" />
                                    </div>
                                </div>
                                <div class="panel-body" visible="false" runat="server" id="Formulario">
                                    <div class="row">
                                        <div class="col-xs-3"><h4>Código de la Tarjeta:</h4></div>
                                        <div class="col-xs-9"><asp:Label ID="Codigo_Administrador" Width="100%" Height="36px"  runat="server"></asp:Label></div>
                                    </div>  
                                    <div class="row">
                                        <div class="col-xs-3"><h4>Crédito de la Tarjeta en $:</h4></div>
                                        <div class="col-xs-9"><asp:Label ID="Credito_Administrador" runat="server" Width="100%" Height="36px" ></asp:Label></div>
                                    </div>  
                                    <div class="row">
                                        <div class="col-xs-3"><h4>Vencimiento</h4></div>
                                        <div class="col-xs-9"><asp:Label ID="Vencimiento_Administrador" runat="server" Width="100%" Height="36px" ></asp:Label></div>
                                    </div>  
                                    <div class="row">
                                        <div class="col-xs-3"><h4>Activación de la Tarjeta:</h4></div>
                                        <div class="col-xs-9"><asp:CheckBox class="col-sm-9 checkbox" ID="CheckBox_Activacion_Administrador" runat="server" Enabled="false" /> </div>
                                    </div>                                                                   
                                 </div>  
                             </div>                 
                        </ContentTemplate>
                    </asp:UpdatePanel> 
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

