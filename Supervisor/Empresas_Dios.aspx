<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empresas_Dios.aspx.cs" Inherits="Supervisor.Empresas_Dios" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/empresas_dios.css" rel="stylesheet"/>

    <title>Empresas</title>

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
                                    <h1 class="titulo">Crear Empresas</h1>
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
            <div class="container" >
                <div class="row">
                    <div class="col-xs-12">       
                        <div class="panel panel-default">                             
                            <div class="encabezado_panel panel-heading fondo"><h2 class="datos_del_administrador">Empresas</h2></div>                 
                            <div class="panel-body">          
                                <div class="row">  
                                    <div class="col-sm-12">
                                        <asp:GridView ID="GridView_Dios" Width="100%" GridLines="None" runat="server" OnSelectedIndexChanged="Identificador_Dios" DataKeyNames="ID_Empresa" AutoGenerateColumns="false" >
                                            <Columns>                                                
                                                <asp:BoundField DataField="ID_Empresa" HeaderText="Número de Empresa" />    
                                                <asp:TemplateField HeaderText="Empresa">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="Seleccionar_Dios" CommandName="Select" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" runat="server"><%# Eval ("Empresa") %></asp:LinkButton>
                                                    </ItemTemplate>  
                                                        
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="Consultas_Permitidas_Ejercicios" HeaderText="Consultas de Ejercicios" />
                                                        <asp:BoundField DataField="Consultas_Permitidas_Videos" HeaderText ="Consultas de Videos" />

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
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label formulario">Empresa:</label>
                                        <div class="col-sm-11">
                                            <asp:TextBox ID="Empresa_Dios" Height="36px" Width="100%" MaxLength="10" runat="server"></asp:TextBox> 
                                        </div>
                                        <label class="col-sm-3 control-label formulario">Cantidad de Ejercicios Permitidos:</label>
                                        <div class="col-sm-8">
                                           <asp:TextBox ID="Consultas_Ejercicios" runat="server" onkeypress="return validar_numero(event)"></asp:TextBox>
                                        </div>
                                        <label class="col-sm-3 control-label formulario">Cantidad de Consultas Videos:</label>
                                        <div class="col-sm-8">
                                           <asp:TextBox ID="Consultas_Videos" runat="server" onkeypress="return validar_numero(event)"></asp:TextBox>
                                        </div>
                                    </div>                                   
                                   
                                </form>
                            </div>
                            
                            <div class="panel-footer pie_formulario" style="height:55px">
                                                                     
                                        <div class="col-xs-6 boton_formulario">
                                            <asp:Button ID="Boton_Nuevo_Dios" Width="100%" CssClass="btn btn-success " OnClientClick="return Confirmacion();" runat="server" Text="Nuevo" OnClick="Boton_Nuevo_Dios_Click" />
                                        </div>
                                        <div class="col-xs-6 boton_formulario">
                                            <asp:Button ID="Boton_Borrar_Dios" OnClientClick="return Confirmacion();" Width="100%"  CssClass="btn btn-danger" runat="server" Text="Borrar" OnClick="Boton_Borrar_Dios_Click" />
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


    
