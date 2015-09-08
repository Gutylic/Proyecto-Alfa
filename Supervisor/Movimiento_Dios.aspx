<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Movimiento_Dios.aspx.cs" EnableEventValidation="false" UICulture="de" Culture="en-US" Inherits="Supervisor.Movimiento_Dios" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/movimiento_dios.css" rel="stylesheet"/>

    <title>Movimiento de Usuarios</title>

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
                            <div class="col-xs-4 consola_de_control" style="text-align:center">
                                <h1 class="titulo">Movimientos</h1>
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
                <asp:Button ID="Boton_Excel_Dios" Width="100%" CssClass="btn btn-info" runat="server" Text="Excel" OnClick="Boton_Excel_Dios_Click" />
            </div>   
        </div>   
             <div class="container">
                <div class="row">
                    <div class="col-xs-12">       
                        <div class="panel panel-default">                             
                             <div class="encabezado_panel panel-heading fondo"><h2 class="datos_del_administrador">Movimientos Realizados</h2>
                                <hr />
                                <div class="row">
                                    <div class="col-xs-3">
                                        <asp:DropDownList ID="DropDownList_Dios" Width="100%" Height="36px" runat="server" AutoPostBack="true">                            
                                            <asp:ListItem Value ="1">Elegir una opción</asp:ListItem>
                                            <asp:ListItem Value ="2">Usuario</asp:ListItem>   
                                            <asp:ListItem Value ="3">Fecha de Vencimiento</asp:ListItem> 
                                            <asp:ListItem Value ="4">Descripción</asp:ListItem>   
                                            <asp:ListItem Value ="5">Empresa</asp:ListItem>                   
                                        </asp:DropDownList>
                                    </div>                                    
                                    <div class="col-xs-7">                                        
                                        <asp:TextBox Visible="false" ID="Buscar_Dios_Fecha" Width="100%" Height="36px" runat="server" TextMode="Date"></asp:TextBox>
                                            
                                        <cc1:CalendarExtender ID="Buscar_Dios_Fecha_CalendarExtender" runat="server" BehaviorID="Buscar_Dios_Fecha_CalendarExtender" TargetControlID="Buscar_Dios_Fecha">
                                        </cc1:CalendarExtender>
                                        <asp:DropDownList ID="DropDownList_Buscar_Dios" Visible="false" runat="server" Width="100%" Height="36px">
                                            <asp:ListItem Value ="1">Préstamo SOS</asp:ListItem>
                                            <asp:ListItem Value ="2">Carga de Crédito (Tarjeta Prepaga)</asp:ListItem> 
                                            <asp:ListItem Value ="3">Devolución Parcial del Préstamo</asp:ListItem>
                                            <asp:ListItem Value ="4">Devolución Total del Préstamo</asp:ListItem> 
                                            <asp:ListItem Value ="5">Compra del Ejercicio</asp:ListItem>
                                            <asp:ListItem Value ="6">Compra de la Explicación</asp:ListItem> 
                                            <asp:ListItem Value ="7">Compra de Vídeo</asp:ListItem>
                                            <asp:ListItem Value ="8">Compra de Pack de Vídeo</asp:ListItem> 
                                            <asp:ListItem Value ="9">Compra Ejercicio Personalizado </asp:ListItem>
                                            <asp:ListItem Value ="10">Comprar Explicación Personalizada</asp:ListItem> 
                                            <asp:ListItem Value ="11">Compra del Vídeo Personalizado</asp:ListItem>
                                            <asp:ListItem Value ="12">Compra de la Impresión</asp:ListItem> 
                                            <asp:ListItem Value ="13">Devolución de Crédito</asp:ListItem>                                           
                                            <asp:ListItem Value ="16">Carga de Crédito (Rapipago/PagoFacil)</asp:ListItem> 
                                            <asp:ListItem Value ="17">Carga de Crédito (Cuenta Digital)</asp:ListItem>
                                            <asp:ListItem Value ="18">Carga de Crédito (Mercado Pago)</asp:ListItem> 
                                            <asp:ListItem Value ="19">Carga de Crédito (Tranferencia)</asp:ListItem>
                                            <asp:ListItem Value ="20">Bonificación por Registrarse</asp:ListItem> 
                                            <asp:ListItem Value ="21">Bonificación por Recarga Anterior</asp:ListItem>
                                            <asp:ListItem Value ="22">Bonificación de Crédito por Carga</asp:ListItem> 
                                            <asp:ListItem Value ="23">Segundo producto con Descuento</asp:ListItem>
                                            <asp:ListItem Value ="24">Costo del Producto Bonificado</asp:ListItem> 
                                            <asp:ListItem Value ="25">2 X 1</asp:ListItem>                                           
                                            <asp:ListItem Value ="26">Bonificación por Cualquier Compra</asp:ListItem> 
                                            <asp:ListItem Value ="27">Bonidicación por habitué</asp:ListItem>
                                            <asp:ListItem Value ="28">Costo Bonificado del Segundo Producto</asp:ListItem> 
                                            <asp:ListItem Value ="29">2 X 1 Vídeos</asp:ListItem>
                                            <asp:ListItem Value ="30">2 X 1 Ejercicios</asp:ListItem> 
                                            <asp:ListItem Value ="31">Duración de Todas las Compras</asp:ListItem>
                                            <asp:ListItem Value ="32">Duración de la Compra</asp:ListItem> 
                                            <asp:ListItem Value ="33">2 x 1 Impresiones</asp:ListItem>
                                            <asp:ListItem Value ="34">Carga de Crédito</asp:ListItem> 
                                            <asp:ListItem Value ="35">Cobro Éxtra por Excedente</asp:ListItem>                                           
                                            <asp:ListItem Value ="36">Nota de Débito</asp:ListItem> 
                                            <asp:ListItem Value ="37">2 X 1 Explicaciones</asp:ListItem>
                                        </asp:DropDownList>         
                                            
                                        <asp:TextBox Visible="true" ID="Buscar_Dios" Width="100%" Height="36px" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-2">
                                        <asp:Button ID="Boton_Buscar_Dios" runat="server" CssClass="btn btn-primary" Width="100%" Text="Buscar" OnClick="Boton_Buscar_Dios_Click" />
                                    </div>                                   
                                </div>
                            </div>                 
                            <div class="panel-body">                                                                              
                                <div class="row">  
                                    <div class="col-sm-12">
                                        <asp:GridView ID="GridView_Dios" Width="100%" GridLines="None" runat="server" OnSelectedIndexChanged="Identificador_Dios" DataKeyNames="ID_Movimiento" AutoGenerateColumns="false" >
                                            <Columns>
                                                <asp:TemplateField HeaderText="Usuario">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="Seleccionar_Dios" CommandName="Select" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" runat="server"><%# Eval ("Usuario") %></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="Fecha_Del_Movimiento" HeaderText="Fecha del Movimiento" />
                                                <asp:BoundField DataField="Descripcion_De_Movimiento" HeaderText="Movimiento" />                  
                                                <asp:BoundField DataField="Plata_Debe" HeaderText="Debe" DataFormatString="{0:c}"/>  
                                                <asp:BoundField DataField="Plata_Haber" HeaderText="Haber" DataFormatString="{0:c}"/>                  
                                                
                                            </Columns>
                                        </asp:GridView>
                                    </div>                                        
                                </div>
                            </div>
                            <div class="panel-footer" style="text-align:center">
                                <div class="row">
                                    <div id="Extremo_Dios" runat ="server">
                                        <asp:LinkButton ID="Anterior_Dios_Ultimo" runat="server" OnClick="Anterior_Dios_Click"><< Anterior&nbsp</asp:LinkButton>
                                        <asp:LinkButton ID="Siguiente_Dios_Primero" runat="server" OnClick="Siguiente_Dios_Click">&nbsp;Siguiente >></asp:LinkButton>
                                        
                                    </div>

                                    <div id="Interno_Dios" runat ="server">
                                        <asp:LinkButton ID="Anterior_Dios_Medio" runat="server" OnClick="Anterior_Dios_Click"><< Anterior&nbsp</asp:LinkButton>
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
                                    <div class="col-xs-3">
                                        <label class="control-label formulario">Usuario</label>
                                    </div>
                                    <div class="col-sm-9">
                                        <asp:Label ID="Usuario_Dios" Width="100%" Height="36px"  runat="server"></asp:Label>      
                                    </div>
                                </div> 
                                 
                                <div class="row">
                                    <div class="col-xs-3">
                                        <label class="control-label formulario">Fecha Del Movimiento</label>
                                    </div>
                                    <div class="col-sm-9">
                                        <asp:Label ID="Fecha_Dios" runat="server" Width="100%" Height="36px" ></asp:Label>
                                    </div>
                                </div> 
                                
                                <div class="row">
                                    <div class="col-xs-3">
                                        <label class=" control-label formulario">Movimiento</label>
                                    </div>
                                    <div class="col-sm-9">
                                        <asp:Label ID="Descripcion_Dios" runat="server" Width="100%" Height="36px"></asp:Label>
                                    </div>
                                </div>    
                                                                    
                               <div class="row">
                                    <div class="col-xs-3">
                                        <label class=" control-label formulario">Debe</label>
                                    </div>
                                    <div class="col-sm-9">
                                        <asp:Label ID="Debe_Dios" runat="server" Width="100%" Height="36px" ></asp:Label>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-xs-3">
                                        <label class=" control-label formulario">Haber</label>
                                    </div>
                                    <div class="col-sm-9">
                                        <asp:Label ID="Haber_Dios" runat="server" Width="100%" Height="36px"></asp:Label>
                                    </div>
                                </div> 
                                
                                 <div class="row">
                                    <div class="col-xs-3">
                                        <label class=" control-label formulario">Empresa</label>
                                    </div>
                                    <div class="col-sm-9">
                                        <asp:Label ID="Empresa_Dios" runat="server" Width="100%" Height="36px"></asp:Label>
                                    </div>
                                </div>  
                                 
                            </div>
                             <div class="panel-footer pie_formulario" style="height:55px">
                                                                       
                                        <div class="col-xs-12">
                                            <asp:Button ID="Boton_Borrar_Dios" Width="100%" CssClass="btn btn-danger" OnClientClick="return Confirmadion();" runat="server" Text="Borrar" OnClick="Boton_Borrar_Dios_Click" />
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


