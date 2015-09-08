<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Tarjeta_Prepaga_Supervisor.aspx.cs" UICulture="de" Culture="en-US" Inherits="Supervisor.Tarjeta_Prepaga_Supervisor" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/tarjeta_prepaga_supervisor.css" rel="stylesheet"/>

    <title>Tarjeta Prepaga</title>

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
            <div class="well">
                 <div class="row">
                    <div class="col-xs-6">                      
                        <asp:Button ID="Boton_Insertar_Supervisor" OnClientClick="return Confirmacion();" CssClass="btn btn-success " Width="100%" runat="server" Text="Insertar Tarjeta" OnClick="Boton_Insertar_Supervisor_Click" />            
                    </div>
                     <div class="col-xs-6"> 
                        <asp:Button ID="Boton_Excel_Supervisor" CssClass="btn btn-info" Width="100%" runat="server" Text="Excel" OnClick="Boton_Excel_Supervisor_Click"  />
                    </div>
                </div>
            </div>
        </div> 

            

            <div class="container" style="margin-top:10px" >
                <div class="row">
                    <div class="col-xs-12">       
                        <div class="panel panel-default">                             
                            <div class="encabezado_panel panel-heading fondo"><h2 class="datos_del_administrador">Control Tarjetas Prepagas</h2>  
                                <hr />
                                <div class="row">
                                    <div class="col-xs-3">
                                        <asp:DropDownList ID="DropDownList_Supervisor" Width="100%" Height="36px" runat="server" AutoPostBack="true">                            
                                            <asp:ListItem Value ="1">Elegir una opción</asp:ListItem>
                                            <asp:ListItem Value ="4">Codigo</asp:ListItem>   
                                            <asp:ListItem Value ="2">Fecha de Vencimiento</asp:ListItem> 
                                            <asp:ListItem Value ="3">Activacion de la Tarjeta</asp:ListItem>                   
                                        </asp:DropDownList>
                                    </div>                                    
                                    <div class="col-xs-7">                                        
                                        <asp:TextBox Visible="false" ID="Buscar_Supervisor_Fecha" Width="100%" Height="36px" runat="server" TextMode="Date"></asp:TextBox>
                                        
                                        <cc1:CalendarExtender ID="Buscar_Supervisor_Fecha_CalendarExtender" runat="server" BehaviorID="Buscar_Supervisor_Fecha_CalendarExtender" TargetControlID="Buscar_Supervisor_Fecha">
                                        </cc1:CalendarExtender>
                                        
                                        <asp:DropDownList ID="DropDownList_Buscar_Supervisor" Visible="false" runat="server" Width="100%" Height="36px">
                                            <asp:ListItem Value ="false">Falso</asp:ListItem>
                                            <asp:ListItem Value ="true">Verdadero</asp:ListItem> 
                                        </asp:DropDownList>         
                                            
                                        <asp:TextBox Visible="true" ID="Buscar_Supervisor" Width="100%" Height="36px" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-2">
                                        <asp:Button ID="Boton_Buscar_Supervisor" runat="server" CssClass="btn btn-primary" Width="100%" Text="Buscar" OnClick="Boton_Buscar_Supervisor_Click" />
                                    </div>                                   
                                </div>
                            </div>              
                            <div class="panel-body"> 
                                <div class="row">  
                                    <div class="col-sm-12">
                                        <asp:GridView ID="GridView_Supervisor" Width="100%" GridLines="None" runat="server" OnSelectedIndexChanged="Identificador_Supervisor" DataKeyNames="ID_Tarjeta" AutoGenerateColumns="false" >
                                            <Columns>
                                                <asp:TemplateField HeaderText="Codigo">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="Seleccionar_Supervisor" CommandName="Select" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" runat="server"><%# Eval ("Codigo") %></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="Credito" HeaderText="Credito" DataFormatString="{0:c}"/>    
                                                <asp:BoundField DataField="Fecha_De_Vencimiento" HeaderText="Fecha de Vencimiento" DataFormatString="{0:d}" />                                                  
                                                <asp:TemplateField HeaderText="Activacion">
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="CheckBox_Activacion_Supervisor" runat="server" Enabled="false" Checked='<%# Eval ("Activacion_De_La_Tarjeta") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>                                        
                                </div>
                            </div>
                                <div class="panel-footer" style="text-align:center">
                                    <div class="row">
                                        <div id="Extremo_Supervisor" runat ="server">
                                            <asp:LinkButton ID="Anterior_Supervisor_Ultimo" runat="server" OnClick="Anterior_Supervisor_Click"><< Anterior&nbsp;</asp:LinkButton>
                                            <asp:LinkButton ID="Siguiente_Supervisor_Primero" runat="server" OnClick="Siguiente_Supervisor_Click">&nbsp;Siguiente >></asp:LinkButton>                                            
                                        </div>

                                        <div id="Interno_Supervisor" runat ="server">                                            
                                            <asp:LinkButton ID="Anterior_Supervisor_Medio" runat="server" OnClick="Anterior_Supervisor_Click"><< Anterior&nbsp;</asp:LinkButton>
                                            <asp:LinkButton ID="Siguiente_Supervisor_Medio" runat="server" OnClick="Siguiente_Supervisor_Click">&nbsp;Siguiente >></asp:LinkButton>
                                        </div>
                                    </div>
                                </div>     
                        </div>   
                        </div>
                    </div>
                
            </div>       
        
          <asp:UpdatePanel ID="UpdatePanel_Botonera" runat="server">
                                    <ContentTemplate>
            <div class="container" id="Formulario_Supervisor" runat="server" visible="false">
                <div class="row">
                    <div class="col-xs-12"> 
                        <div class="panel panel-warning">
                            <div class="panel-heading" style="text-align:center"><h3>Formulario</h3></div>
                            <div class="panel-body">

                                <form class="form-horizontal">                                                                                                        
                                            <div class="form-group" >
                                                <label class="col-sm-4 control-label formulario">Código</label>
                                                <div class="col-sm-8" style="margin-bottom:5px">
                                                   <asp:Label ID="Codigo_Supervisor" Height="36px" Width="100%" runat="server"></asp:Label> 
                                                </div>
                                            </div>      
                                            <div class="form-group" >
                                                <label class="col-sm-4 control-label formulario">Crédito</label>
                                                <div class="col-sm-8" style="margin-bottom:5px">
                                                   <asp:Label ID="Credito_Supervisor" Height="36px" Width="100%" runat="server"></asp:Label> 
                                                </div>
                                            </div>                                         
                                            <div class="form-group" >
                                                <label class="col-sm-4 control-label formulario">Fecha de Vencimiento</label>
                                                <div class="col-sm-8" style="margin-bottom:5px">
                                                   <asp:TextBox ID="Vencimiento_Supervisor" runat="server" Width="100%" Height="36px"></asp:TextBox>
                                                    <cc1:CalendarExtender ID="Vencimiento_Supervisor_CalendarExtender" runat="server" BehaviorID="Vencimiento_Supervisor_CalendarExtender" TargetControlID="Vencimiento_Supervisor">
                                                    </cc1:CalendarExtender>
                                                </div>
                                            </div>  
                                            
                                            <div class="form-group">
                                                <label class="col-sm-4 control-label formulario">Activación</label>
                                                <div class="col-sm-8">
                                                    <asp:CheckBox class="col-sm-11 checkbox" ID="CheckBox_Activacion_Supervisor" runat="server" />
                                                </div>
                                            </div>  
                                        </form>
                            </div>
                            
                            <div class="panel-footer pie_formulario" style="height:55px">
                                
                                        <div class="col-xs-6 boton_formulario">
                                            <asp:Button ID="Boton_Actualizar_Supervisor" OnClientClick="return Confirmacion();" CssClass="btn btn-warning" Width="100%" runat="server" Text="Actualizar" OnClick="Boton_Actualizar_Supervisor_Click" />
                                        </div>                                        
                                        <div class="col-xs-6 boton_formulario">
                                            <asp:Button ID="Boton_Borrar_Supervisor" CssClass="btn btn-danger" OnClientClick="return Confirmacion();" Width="100%" runat="server" Text="Borrar" OnClick="Boton_Borrar_Supervisor_Click" />
                                        </div>
                                      
                                    <%--</ContentTemplate>
                                </asp:UpdatePanel>--%>
                            </div>
                       </div>
                    </div>
                </div>
            </div>
            
            <div class="container" >
                <div class="row">
                    <div class="col-xs-12"> 
                        <div class="panel panel-danger" id="Formulario_Para_Crear_Tarjeta" runat="server" visible="false">
                            <div class="panel-heading" style="text-align:center"><h3>Tarjetas Prepagas</h3></div>
                            <div class="panel-body">
                                <form class="form-horizontal">                                                                                                        
                                            

                                    <div class="form-group">
                                        <label class="col-sm-4 control-label formulario">¿Cantidad de Tarjetas a Crear?</label>
                                        <div class="col-sm-8">
                                            <asp:TextBox ID="Cantidad_Tarjeta" Height="36px" Width="100%" runat="server"></asp:TextBox> 
                                            <cc1:FilteredTextBoxExtender ID="Cantidad_Solo_Numeros" runat="server" FilterType="Numbers" TargetControlID="Cantidad_Tarjeta" />                
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label formulario">Credito de las Tarjetas</label>
                                        <div class="col-sm-8">
                                            <asp:TextBox ID="Credito_Tarjeta" Height="36px" Width="100%" runat="server"></asp:TextBox>   
                                            <cc1:FilteredTextBoxExtender ID="Credito_Solo_Numeros" runat="server" FilterType="Numbers" TargetControlID="Credito_Tarjeta" />                                             
                                        </div>
                                    </div>                                      
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label formulario">Fecha De Vencimiento</label>
                                        <div class="col-sm-8">
                                            <asp:TextBox ID="Caducidad_Tarjeta" runat="server" Width="100%" Height="36px" ></asp:TextBox>
                                           
                                            <cc1:CalendarExtender ID="Caducidad_Tarjeta_CalendarExtender" runat="server" BehaviorID="Caducidad_Tarjeta_CalendarExtender" TargetControlID="Caducidad_Tarjeta">
                                            </cc1:CalendarExtender>
                                            
                                        </div>
                                    </div>                                    
                                </form> 
                                                 
                            </div>
                            
                            <div class="panel-footer pie_formulario" style="height:55px">
                                <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>--%>
                                        
                                        <div class="col-xs-12 boton_formulario">
                                            <asp:Button ID="Boton_Crear_Supervisor" Width="100%" CssClass="btn btn-danger " runat="server" Text="Crear Tarjetas" OnClick="Boton_Crear_Supervisor_Click" />
                                        </div>
                                        
                                   
                            </div>
                       </div>
                    </div>
                </div>
            </div>
            </ContentTemplate>
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


    