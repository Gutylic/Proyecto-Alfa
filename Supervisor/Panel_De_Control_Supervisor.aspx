<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panel_De_Control_Supervisor.aspx.cs" Inherits="Supervisor.Panel_De_Control_Supervisor" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/panel_de_control_supervisor.css" rel="stylesheet"/>
    
    <title>Panel de Control de Administradores</title>

    <script>
        function validar_numero(e) {
            tecla = (document.all) ? e.keyCode : e.which;

            //Tecla de retroceso para borrar, siempre la permite
            if (tecla == 8) {
                return true;
            }

            // Patron de entrada, en este caso solo acepta numeros
            patron = /[0-9]/;
            tecla_final = String.fromCharCode(tecla);
            return patron.test(tecla_final);
        }
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
                                <h1 class="titulo">Perfil Administrador</h1>
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
                <asp:Button ID="Boton_Excel_Supervisor" CssClass="btn btn-info " Width="100%" runat="server" Text="Excel" OnClick="Boton_Excel_Supervisor_Click" />
            </div>   
        </div>
        <div class="container">
            <div class="row">
                <div class="col-xs-12">       
                    <div class="panel panel-default">                             
                        <div class="encabezado_panel panel-heading fondo" style="text-align:center"><h2 class="datos_del_administrador">Datos del Administrador</h2>
                            <hr />
                            <div class="row">
                                <div class="col-xs-9">
                                    <asp:TextBox ID="Buscar_Supervisor" Width="100%" Height="36px" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Button ID="Boton_Buscar_Supervisor" runat="server" CssClass="btn btn-primary" Width="100%" Text="Buscar" OnClick="Boton_Buscar_Supervisor_Click" />
                                </div>
                            </div>
                        </div>   
                            <div class="panel-body">                
                                <div class="row">  
                                    <div class="col-sm-12">
                                        <asp:GridView ID="GridView_Supervisor" Width="100%" GridLines="None" runat="server" OnSelectedIndexChanged="Identificador_Supervisor" DataKeyNames="ID_Administrador" AutoGenerateColumns="false" >
                                            <Columns>
                                                <asp:TemplateField HeaderText="Administrador">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="Seleccionar_Supervisor" CommandName="Select" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" runat="server"><%# Eval ("Administrador") %></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="IP_Address" HeaderText="Direccion IP" />                  
                                                <asp:TemplateField HeaderText="Bloqueo">
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="CheckBox_Bloqueo_Supervisor" runat="server" Enabled="false" Checked='<%# Eval ("Administrador_Bloqueado") %>' />
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
                        <div class="panel panel-warning">
                            <div class="panel-heading" style="text-align:center"><h3>Formulario</h3></div>
                            <div class="panel-body">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label formulario">Administrador:</label>
                                        <div class="col-sm-11">
                                            <asp:TextBox ID="Administrador_Supervisor" Width="100%" Height="36px"  runat="server"></asp:TextBox>      
                                        </div>
                                    </div>                                    
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label formulario">Password:</label>
                                        <div class="col-sm-11">
                                            <asp:TextBox ID="Password_Supervisor" runat="server" Width="100%" Height="36px" MaxLength="10"></asp:TextBox>
                                        </div>
                                    </div>                                    
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label formulario">IP:</label>
                                        <div class="col-sm-11">
                                            <asp:Label ID="IP_Supervisor" runat="server" Width="100%" Height="36px"></asp:Label>                                            
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label formulario">Bloqueado</label>
                                        <asp:CheckBox class="col-sm-11 checkbox" ID="CheckBox_Bloqueo_Supervisor" runat="server" />                                            
                                    </div>                
                                </form>
                            </div>
                            <div class="panel-footer pie_formulario">
                                
                                        <div class="col-xs-4 boton_formulario">
                                            <asp:Button ID="Boton_Actualizar_Supervisor" OnClientClick="return Confirmacion();" CssClass="btn btn-warning " Width="100%" runat="server" Text="Actualizar" OnClick="Boton_Actualizar_Supervisor_Click" />
                                        </div>
                                        <div class="col-xs-4 boton_formulario">
                                            <asp:Button ID="Boton_Nuevo_Supervisor" CssClass="btn btn-default " OnClientClick="return Confirmacion();" Width="100%" runat="server" Text="Nuevo" OnClick="Boton_Nuevo_Supervisor_Click" />
                                        </div>
                                        <div class="col-xs-4 boton_formulario">
                                            <asp:Button ID="Boton_Borrar_Supervisor" CssClass="btn btn-danger" OnClientClick="return Confirmacion();" Width="100%" runat="server" Text="Borrar" OnClick="Boton_Borrar_Supervisor_Click" />
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

