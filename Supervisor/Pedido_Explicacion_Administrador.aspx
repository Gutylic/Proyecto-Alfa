<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pedido_Explicacion_Administrador.aspx.cs" Inherits="Supervisor.Pedido_Explicacion_Administrador" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/pedido_explicacion_administrador.css" rel="stylesheet"/>

    <title>Pedido de Explicación Ejercicio ya Realizado</title>

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
                                        <asp:GridView ID="GridView_Administrador" Width="100%" GridLines="None" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="Identificador_Administrador" DataKeyNames="ID_Consulta" >
                                            <Columns>
                                                <asp:TemplateField HeaderText="Número de Ejercicio">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="Seleccionar_Administrador" CommandName="select" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" runat="server"><%# Eval ("ID_Ejercicio") %></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>                    
                                                <asp:BoundField DataField="Usuario" HeaderText="Usuario" />      
                                                <asp:BoundField DataField="Fecha_De_Pedido" HeaderText="Pedido" />  
                                                <asp:BoundField DataField="Administrador" HeaderText="Administrador" />         
                                                 <asp:TemplateField HeaderText="OK Realizado">
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="CheckBox_Administrador" runat="server" Enabled="false" Checked='<%# Eval ("Realizado") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>                                           
                                            </Columns>
                                        </asp:GridView>
                                    </div>                                        
                                </div>
                            </div>
                                <div class="panel-footer" style="text-align:center">
                                    <div class="row">
                                        <div id="Extremo_Administrador" runat ="server">
                                            <asp:LinkButton ID="Anterior_Administrador_Ultimo" runat="server" OnClick="Anterior_Administrador_Click"><< Anterior&nbsp;</asp:LinkButton>
                                            <asp:LinkButton ID="Siguiente_Administrador_Primero" runat="server" OnClick="Siguiente_Administrador_Click">&nbsp;Siguiente >></asp:LinkButton>                                            
                                        </div>

                                        <div id="Interno_Administrador" runat ="server">                                            
                                            <asp:LinkButton ID="Anterior_Administrador_Medio" runat="server" OnClick="Anterior_Administrador_Click"><< Anterior&nbsp;</asp:LinkButton>
                                            <asp:LinkButton ID="Siguiente_Administrador_Medio" runat="server" OnClick="Siguiente_Administrador_Click">&nbsp;Siguiente >></asp:LinkButton>
                                        </div>
                                    </div>
                                </div>   

                             
                        </div>
                    </div>
                </div>
            </div>
        <asp:UpdatePanel ID="UpdatePanel_Botonera" runat="server">
            <ContentTemplate>

            
            <div class="container" id="Formulario_Administrador" runat="server" visible="false">
                <div class="row">
                    <div class="col-xs-12"> 
                        <div class="panel panel-warning">
                            <div class="panel-heading" style="text-align:center"><h3>Formulario</h3></div>
                            <div class="panel-body">
                                <form class="form-horizontal">                                                                                                        
                                    <div class="form-group" >
                                        <label class="col-sm-4 control-label formulario">Nro Ejercicio</label>
                                        <div class="col-sm-8" style="margin-bottom:5px">
                                           <asp:Label ID="Etiqueta_Numero_De_Ejercicio_Administrador" runat="server"></asp:Label>
                                        </div>
                                    </div>      
                                    <div class="form-group" >
                                        <label class="col-sm-4 control-label formulario">Usuario</label>
                                        <div class="col-sm-8" style="margin-bottom:5px">
                                           <asp:Label ID="Etiqueta_Usuario_Administrador" runat="server"></asp:Label>
                                        </div>
                                    </div>                                         
                                    <div class="form-group" >
                                        <label class="col-sm-4 control-label formulario">Fué Pedido el</label>
                                        <div class="col-sm-8" style="margin-bottom:5px">
                                           <asp:Label ID="Etiqueta_Fecha_Administrador" runat="server"></asp:Label>
                                        </div>
                                    </div>  
                                    <div class="form-group" >
                                        <label class="col-sm-4 control-label formulario">Resuelve el Administrador</label>
                                        <div class="col-sm-8" style="margin-bottom:5px">
                                            <asp:TextBox ID="TextBox_Administrador_Administrador" runat="server"></asp:TextBox>
                                        </div>
                                    </div>   
                                    <div class="form-group" style="margin-bottom:5px">
                                        <label class="col-sm-4 control-label formulario">Ejercicio Realizado</label>
                                        <div class="col-sm-8">
                                            <asp:CheckBox ID="CheckBox_Realizado_Administrador" runat="server" />
                                        </div>
                                    </div>  
                                </form>
                            </div>    
                            <div class="panel-footer" style="height:55px">
                                <div class="col-xs-4">
                                    <asp:Button ID="Boton_No_Resolver_Administrador" runat="server" Text="No Resolver" OnClientClick="return Confirmacion();" CssClass="btn btn-warning" Width="100%" Height="36px" OnClick="Boton_No_Resolver_Administrador_Click" />
                                </div>
                                <div class="col-xs-4">
                                    <asp:Button ID="Boton_Resolver_El_Ejercicio_Administrador" OnClientClick="return Confirmacion();" runat="server" CssClass="btn btn-primary" Height="36px" Width="100%" Text="Resolviendo..." OnClick="Boton_Resolver_El_Ejercicio_Administrador_Click" />
                                </div>
                                <div class="col-xs-4">
                                    <asp:Button ID="Boton_Resuelto_Administrador" OnClientClick="return Confirmacion();" runat="server" Text="Resuelto" CssClass="btn btn-success" Width="100%" Height="36px" OnClick="Boton_Resuelto_Administrador_Click" />
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




