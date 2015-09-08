﻿<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Control_Administradores_Dios.aspx.cs" Inherits="Supervisor.Control_Administradores_Dios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/control_administradores_dios.css" rel="stylesheet"/>

    <title>Control de Administradores</title>

    <script type="text/javascript">

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
    <div>
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
                                    <h1 class="titulo">Control Interno</h1>
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
                            <div class="encabezado_panel panel-heading fondo" style="text-align:center"><h2 class="datos_del_administrador">Control</h2>  
                                <hr />
                                <div class="row">
                                    <div class="col-xs-3">
                                        <asp:DropDownList ID="DropDownList_Dios" runat="server" Width="100%" Height="36px">
                                            <asp:ListItem Value ="1">Elija opcion</asp:ListItem>
                                            <asp:ListItem Value ="2">Administrador</asp:ListItem>
                                            <asp:ListItem Value ="3">Empresa</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-xs-7">
                                        <asp:TextBox ID="Buscar_Dios" Width="100%" Height="36px" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-2">
                                        <asp:Button ID="Boton_Buscar_Dios" runat="server" CssClass="btn btn-primary" Width="100%" Text="Buscar" OnClick="Boton_Buscar_Dios_Click" />
                                    </div>
                                </div>
                            </div>              
                            <div class="panel-body"> 
                                <div class="row">  
                                    <div class="col-sm-12">
                                        <asp:GridView ID="GridView_Dios" Width="100%" GridLines="None" runat="server" OnSelectedIndexChanged="Identificador_Dios" DataKeyNames="ID_Ingreso_Egreso" AutoGenerateColumns="false" >
                                            <Columns>
                                                <asp:TemplateField HeaderText="Administrador">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="Seleccionar_Dios" CommandName="Select" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" runat="server"><%# Eval ("Administrador") %></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="Fecha_de_Ingreso" HeaderText="Ingreso" />
                                                <asp:BoundField DataField="Fecha_de_Egreso" HeaderText ="Egreso" />  
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
            <div class="container" id="Formulario_Dios" runat="server" visible="false">
                <div class="row">
                    <div class="col-xs-12"> 
                        <div class="panel panel-warning">
                            <div class="panel-heading" style="text-align:center"><h3>Formulario</h3></div>
                            <div class="panel-body">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label formulario">Administrador:</label>
                                        <div class="col-sm-9">
                                            <asp:Label ID="Administrador_Dios" Width="100%" Height="36px"  runat="server"></asp:Label>      
                                        </div>
                                    
                                        <label class="col-sm-3 control-label formulario">Fecha de Ingreso:</label>
                                        <div class="col-sm-9">
                                            <asp:Label ID="Fecha_De_Ingreso_Dios" runat="server" Width="100%" Height="36px"></asp:Label>
                                        </div>
                                    
                                        <label class="col-sm-3 control-label formulario">Fecha de Egreso:</label>
                                        <div class="col-sm-9">
                                            <asp:Label ID="Fecha_De_Egreso_Dios" Width="100%" Height="36px" runat="server"></asp:Label>
                                        </div>
                                    </div>             
                                </form>
                            </div>
                            <div class="panel-footer pie_formulario" style="height:55px">
                                <asp:UpdatePanel ID="UpdatePanel_Botonera" runat="server">
                                    <ContentTemplate>                                      
                                        <div class="col-xs-12 boton_formulario">
                                            <asp:Button ID="Boton_Borrar_Dios" CssClass="btn btn-danger" OnClientClick="return Confirmacion();" runat="server" Width="100%" Text="Borrar" OnClick="Boton_Borrar_Dios_Click" />
                                        </div>                                        
                                    </ContentTemplate>
                                </asp:UpdatePanel>
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



