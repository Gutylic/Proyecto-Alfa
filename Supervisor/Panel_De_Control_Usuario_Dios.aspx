<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panel_De_Control_Usuario_Dios.aspx.cs" Inherits="Supervisor.Panel_De_Control_Usuario_Dios" UICulture="de" Culture="en-US" EnableEventValidation="false" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/panel_de_control_dios.css" rel="stylesheet"/>

    <title>Panel de Usuarios</title>

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
                                <h1 class="titulo">Perfil Usuario</h1>
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
                <asp:Button ID="Boton_Excel_Dios" CssClass="btn btn-info " Width="100%" runat="server" Text="Excel" OnClick="Boton_Excel_Dios_Click" />
            </div>   
        </div>         
        <div class="container">
                <div class="row">
                    <div class="col-xs-12"> 
                           
                            <div class="panel panel-default">                             
                                <div class="encabezado_panel panel-heading fondo" style="height:150px; text-align:center">
                                    <h2 class="datos_del_administrador">Panel De Usuarios</h2>
                                <hr />
                               
                                    <div class="col-xs-3">
                                        <asp:DropDownList ID="DropDownList_Dios" Width="100%" Height="36px" runat="server" AutoPostBack="true">                            
                                            <asp:ListItem Value ="1">Elija una opción</asp:ListItem>
                                            <asp:ListItem Value ="2">Usuario</asp:ListItem> 
                                            <asp:ListItem Value ="3">Correo</asp:ListItem>
                                            <asp:ListItem Value ="4">Activación</asp:ListItem>   
                                            <asp:ListItem Value ="5">Fecha</asp:ListItem>   
                                            <asp:ListItem Value ="6">Empresa</asp:ListItem>                      
                                        </asp:DropDownList>
                                    </div>                                    
                                    <div class="col-xs-7">                                        
                                        <asp:TextBox Visible="false" ID="Buscar_Dios_Fecha" Width="100%" Height="36px" runat="server" TextMode="Date"></asp:TextBox>
                                        
                                        <cc1:CalendarExtender ID="Buscar_Dios_Fecha_CalendarExtender" runat="server" BehaviorID="Buscar_Dios_Fecha_CalendarExtender" TargetControlID="Buscar_Dios_Fecha">
                                        </cc1:CalendarExtender>
                                        
                                        <asp:DropDownList ID="DropDownList_Buscar_Dios" Visible="false" runat="server" Width="100%" Height="36px">
                                            <asp:ListItem Value ="false">Falso</asp:ListItem>
                                            <asp:ListItem Value ="true">Verdadero</asp:ListItem> 
                                        </asp:DropDownList>             
                                        <asp:TextBox Visible="true" ID="Buscar_Dios" Width="100%" Height="36px" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-2">
                                        <asp:Button ID="Boton_Buscar_Dios" runat="server" CssClass="btn btn-primary" Width="100%" Text="Buscar" OnClick="Boton_Buscar_Dios_Click" />
                                    </div>                                   
                                </div>
                                          
                            <div class="panel-body"> 
                                <div class="row">  
                                    <div class="col-sm-12">
                                        <asp:GridView ID="GridView_Dios" Width="100%" GridLines="None" runat="server" OnSelectedIndexChanged="Identificador_Dios" DataKeyNames="ID_Usuario" AutoGenerateColumns="false" >
                                            <Columns>
                                                <asp:TemplateField HeaderText="Administrador">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="Seleccionar_Dios" CommandName="Select" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" runat="server"><%# Eval ("Usuario") %></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="Correo" HeaderText="Correo" />    
                                                <asp:BoundField DataField="Usuario_De_Skype" HeaderText="Skype" /> 
                                                <asp:BoundField DataField="Numero_De_Celular" HeaderText="Celular" />  
                                                <asp:BoundField DataField="Modelo_De_Celular" HeaderText="Modelo" />    
                                                <asp:BoundField DataField="Credito_De_Usuario" HeaderText="Credito" DataFormatString="{0:c}" />  
                                                <asp:BoundField DataField="Empresa" HeaderText="Empresa" />
                                                <asp:TemplateField HeaderText="Activado">
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="CheckBox_Activacion_Dios" runat="server" Enabled="false" Checked='<%# Eval ("Activacion_De_Usuarios") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>                                        
                                </div>
                            </div>
                                <div class="panel-footer" style="text-align:center">
                                <div class="row">
                                    <div id="Extremo_Dios" runat ="server">
                                        <asp:LinkButton ID="Anterior_Dios_Ultimo" runat="server" OnClick="Anterior_Dios_Click"><< Anterior&nbsp;</asp:LinkButton>
                                        <asp:LinkButton ID="Siguiente_Dios_Primero" runat="server" OnClick="Siguiente_Dios_Click">&nbsp;Siguiente >></asp:LinkButton>
                                        
                                    </div>

                                    <div id="Interno_Dios" runat ="server">
                                        <asp:LinkButton ID="Anterior_Dios_Medio" runat="server" OnClick="Anterior_Dios_Click"><< Anterior&nbsp;</asp:LinkButton>
                                        <asp:LinkButton ID="Siguiente_Dios_Medio" runat="server" OnClick="Siguiente_Dios_Click">&nbsp;Siguiente >></asp:LinkButton>
                                        
                                    </div>
                                </div>
                            </div>   
                        </div>
                    </div>
                </div>
            </div>         
        <asp:UpdatePanel ID="UpdatePanel_Botonera" runat="server">
            <ContentTemplate>

            
            <div class="container" id="Formulario_Dios" runat="server" visible="false">
                <div class="row">
                    <div class="col-xs-12"> 
                        <div class="panel panel-warning">
                            <div class="panel-heading" style="text-align:center"><h3>Formulario</h3></div>
                            <div class="panel-body">

                                <div class="row">
                                        <div class="col-sm-3">
                                            <label class=" control-label formulario">Usuario</label>
                                        </div>
                                        <div class="col-sm-9">
                                            <asp:Label ID="Usuario_Dios" Height="36px" Width="100%" MaxLength="10" runat="server"></asp:Label>                                              
                                        </div>
                                    </div>   
                                
                                    <div class="row">                            
                                        <div class="col-sm-3">
                                            <label class="control-label formulario">Correo</label>
                                        </div>
                                        <div class="col-sm-9">
                                            <asp:Label MaxLength="30" ID="Correo_Dios" runat="server" Width="100%" Height="36px"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <label class="col-sm-3 control-label formulario">Password:</label>
                                        </div>
                                        <div class="col-sm-9">
                                            <asp:Label ID="Password_Dios" Width="100%" Height="36px"  runat="server"></asp:Label>      
                                        </div>
                                    </div>    
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <label class=" control-label formulario">Skype</label>
                                        </div>
                                        <div class="col-sm-9">
                                            <asp:Label ID="Skype_Dios" Width="100%" Height="36px" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <label class="col-sm-3 control-label formulario">Celular</label>
                                        </div>
                                        <div class="col-sm-9">
                                            <asp:Label ID="Celular_Dios" Width="100%" Height="36px"  runat="server"></asp:Label>        
                                        </div>
                                    </div>                                    
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <label class="control-label formulario">Modelo</label>
                                        </div>
                                        <div class="col-sm-9">
                                            <asp:Label ID="Modelo_Dios" runat="server" Width="100%" Height="36px"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <label class="control-label formulario">Empresa:</label>
                                        </div>
                                        <div class="col-sm-9">
                                            <asp:Label ID="Empresa_Dios" runat="server" Width="100%" Height="36px"></asp:Label>
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="col-sm-3">
                                            <label class="control-label formulario">Credito</label>
                                        </div>
                                        <div class="col-sm-9">
                                            <asp:Label ID="Credito_Dios" Width="100%" Height="36px" runat="server"></asp:Label>
                                        </div>
                                    </div>                                                                      
                                    <div class="row">
                                        <div class="col-sm-3">                                        
                                            <label class="control-label formulario">Pedido SOS</label>
                                        </div>
                                        <asp:CheckBox class="col-sm-9 checkbox" ID="CheckBox_Pedido_Dios" runat="server" Enabled="false" /> 
                                                                          
                                    </div>    
                                    <div class="row">
                                        <div class="col-sm-3">                                        
                                            <label class="control-label formulario">Activacion</label>
                                        </div>
                                        <asp:CheckBox class="col-sm-9 checkbox" ID="CheckBox_Activacion_Dios" runat="server" Enabled="false" />                                            
                                    </div>  
                                     
                            </div>
                            
                            <div class="panel-footer pie_formulario">
                                
                                        <div class="col-xs-12 boton_formulario">
                                            <asp:Button ID="Boton_Borrar_Dios" OnClientClick="return Confirmacion();" CssClass="btn btn-danger" Width="100%" runat="server" Text="Borrar" OnClick="Boton_Borrar_Dios_Click" />
                                        </div>
                                        
                            </div>
                        </div>
                    </div>
                </div>
            </div></ContentTemplate>

        </asp:UpdatePanel>
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