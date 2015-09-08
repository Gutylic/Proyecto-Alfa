<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cargar_Credito_Automatico_Supervisor.aspx.cs" Inherits="Supervisor.Cargar_Credito_Automatico_Supervisor" EnableEventValidation="false" UICulture="de" Culture="en-US" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/cargar_de_credito_automatico_supervisor.css" rel="stylesheet"/>
    
    <title>Carga de Crédito Automatico</title>

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
                                <h1 class="titulo">Crédito Manual</h1>
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
                <div class="well">  
                <div class="row">
                    <div class="col-xs-12" style="text-align:center"> 
                        <h2>Cargar por CuentaDigital</h2>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-xs-4"> 
                        <h3>Insertar la fecha:</h3>
                    </div>
                    <div class="col-xs-8"> 
                        <asp:TextBox ID="Cuenta_Digital_Supervisor" runat="server"></asp:TextBox>

                        <cc1:CalendarExtender ID="Cuenta_Digital_Supervisor_CalendarExtender" runat="server" BehaviorID="Cuenta_Digital_Supervisor_CalendarExtender" TargetControlID="Cuenta_Digital_Supervisor">
                        </cc1:CalendarExtender>

                    </div>
                </div>
                <hr />
                <div class="row">
                    <asp:UpdatePanel ID="UpdatePanel_Cuenta_Digital" runat="server">
                        <ContentTemplate>
 <div class="col-xs-12"> 
                        <asp:Button ID="Boton_Cuenta_Digital_Supervisor" Width="100%" CssClass="btn btn-success" runat="server" Text="Cargar Cuenta Digital" OnClick="Boton_Cuenta_Digital_Supervisor_Click" />
                    </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                   
                </div>
            </div>
                </div>

        <div class="container">
                <div class="well" style="text-align:center">
                    <div class="row">
                        <div class="col-xs-12"> 
                            <h2>Cargar por PayPal</h2>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-xs-4"> 
                            <h3>Insertar el código:</h3>
                        </div>
                        <div class="col-xs-8"> 
                            <asp:TextBox ID="PayPal_Supervisor" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-4"> 
                            <h3>Conversion de U$S a $:</h3>
                        </div>
                        <div class="col-xs-8"> 
                            <asp:TextBox ID="Conversion_Dolares_A_Pesos" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <asp:UpdatePanel ID="UpdatePanel_PayPal" runat="server">
                            <ContentTemplate>
<div class="col-xs-12"> 
                            <asp:Button ID="Boton_PayPal_Supervisor" runat="server" Text="Cargar PayPal" OnClick="Boton_PayPal_Supervisor_Click" CssClass="btn btn-warning" Width="100%" />
                        </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        
                    </div>
                </div>
         </div>  
        
        <div class="container">        
                <div class="well">  
                    <div class="row">
                        <div class="col-xs-12" style="text-align:center"> 
                            <h2>Cargar por MercadoPago</h2>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-xs-4"> 
                            <h3>Insertar el Código:</h3>
                        </div>
                        <div class="col-xs-8"> 
                            <asp:TextBox ID="MercadoPago_Supervisor" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <asp:UpdatePanel ID="UpdatePanel_Mercado_Pago" runat="server">
                            <ContentTemplate>
 <div class="col-xs-12"> 
                            <asp:Button ID="Button_MercadoPago_Supervisor" runat="server" Text="Cargar MercadoPago" OnClick="Button_MercadoPago_Supervisor_Click" CssClass="btn btn-danger" Width="100%" />
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
