<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pedido_Explicacion_Supervisor.aspx.cs" Inherits="Supervisor.Pedido_Explicacion_Supervisor" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/pedido_explicacion_supervisor.css" rel="stylesheet"/>
    
    <title>Pedido de Explicación Ejercicio Realizado</title>

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
                                    <h1 class="titulo">Resoluciones</h1>
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
                            <div class="encabezado_panel panel-heading fondo" style="text-align:center"><h2 class="datos_del_administrador">Pedido Explicaciones</h2></div>           
                            <div class="panel-body"> 
                                <div class="row">  
                                    <div class="col-sm-12">
                                        <asp:GridView ID="GridView_Supervisor" Width="100%" GridLines="None" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="Identificador_Supervisor" DataKeyNames="ID_Consulta" >
                                            <Columns>
                                                <asp:TemplateField HeaderText="Número de Ejercicio">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="Seleccionar_Supervisor" CommandName="select" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" runat="server"><%# Eval ("ID_Ejercicio") %></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                    
                                                <asp:BoundField DataField="Usuario" HeaderText="Usuario" />      
                                                <asp:BoundField DataField="Fecha_De_Pedido" HeaderText="Pedido" />  
                                                <asp:BoundField DataField="Administrador" HeaderText="Supervisor" />         
                                                 <asp:TemplateField HeaderText="OK Realizado">
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="CheckBox_Supervisor" runat="server" Enabled="false" Checked='<%# Eval ("Realizado") %>' />
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

                <div class="container" id="Formulario_Supervisor" runat="server" visible="false" >
                <div class="row">
                    <div class="col-xs-12">
                        
                            <div class="panel panel-warning" >
                                <div class="panel-heading" style="text-align:center"><h3>Formulario</h3></div>
                                    <div class="panel-body">
                                        <form class="form-horizontal">                                                                                                        
                                            <div class="form-group" >
                                                <label class="col-sm-4 control-label formulario">Nro Ejercicio</label>
                                                <div class="col-sm-8" style="margin-bottom:5px">
                                                   <asp:Label ID="Etiqueta_Numero_De_Ejercicio_Supervisor" runat="server"></asp:Label>
                                                </div>
                                            </div>      
                                            <div class="form-group" >
                                                <label class="col-sm-4 control-label formulario">Usuario</label>
                                                <div class="col-sm-8" style="margin-bottom:5px">
                                                   <asp:Label ID="Etiqueta_Usuario_Supervisor" runat="server"></asp:Label>
                                                </div>
                                            </div>                                         
                                            <div class="form-group" >
                                                <label class="col-sm-4 control-label formulario">Fué Pedido el</label>
                                                <div class="col-sm-8" style="margin-bottom:5px">
                                                   <asp:Label ID="Etiqueta_Fecha_Supervisor" runat="server"></asp:Label>
                                                </div>
                                            </div>  
                                            <div class="form-group" >
                                                <label class="col-sm-4 control-label formulario">Resuelve el Administrador</label>
                                                <div class="col-sm-8" style="margin-bottom:5px">
                                                    <asp:TextBox ID="TextBox_Administrador_Supervisor" runat="server"></asp:TextBox>
                                                </div>
                                            </div>   
                                            <div class="form-group" style="margin-bottom:5px">
                                                <label class="col-sm-4 control-label formulario">Ejercicio Realizado</label>
                                                <div class="col-sm-8">
                                                    <asp:CheckBox ID="CheckBox_Realizado_Supervisor" runat="server" />
                                                </div>
                                            </div>  
                                        </form>
                                    </div>   
                                    <div class="panel-footer" style="height:55px">
                                        
                                            <div class="col-xs-3">
                                                <asp:Button ID="Boton_No_Resolver_Supervisor" CssClass="btn btn-warning" OnClientClick="return Confirmacion();" runat="server" Text="No Resolver" Width="100%" Height="36px" OnClick="Boton_No_Resolver_Supervisor_Click" />
                                            </div>
                                            <div class="col-xs-3">
                                                <asp:Button ID="Boton_Resolver_El_Ejercicio_Supervisor" CssClass="btn btn-primary" OnClientClick="return Confirmacion();" runat="server" Text="Resolviendo..." Width="100%" Height="36px" OnClick="Boton_Resolver_El_Ejercicio_Supervisor_Click" />
                                            </div>
                                            <div class="col-xs-3">
                                                <asp:Button ID="Boton_Resuelto_Supervisor" CssClass="btn btn-success" runat="server" OnClientClick="return Confirmacion();" Text="Resuelto" Width="100%" Height="36px" OnClick="Boton_Resuelto_Supervisor_Click" />
                                            </div>
                                            <div class="col-xs-3">
                                                <asp:Button ID="Boton_Borrar_Supervisor" runat="server"  CssClass="btn btn-danger" OnClientClick="return Confirmacion();" Text="Borrar" Width="100%" Height="36px" OnClick="Boton_Borrar_Supervisor_Click" />
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

