<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cargar_Credito_Manual_Supervisor.aspx.cs" Inherits="Supervisor.Cargar_Credito_Manual_Supervisor" EnableEventValidation="false" UICulture="de" Culture="en-US" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/cargar_de_credito_manual_supervisor.css" rel="stylesheet"/>

    <title>Carga de Crédito Manual</title>

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
                <asp:Button ID="Boton_Excel_Supervisor" CssClass="btn btn-info " Width="100%" runat="server" Text="Excel" OnClick="Boton_Excel_Supervisor_Click" />
            </div>   
        </div>
            <div class="container" >
                <div class="row">
                    <div class="col-xs-12">       
                        <div class="panel panel-default">                             
                            <div class="encabezado_panel panel-heading fondo"><h2 class="datos_del_administrador">Carga Manual</h2>
                                <hr />
                                <div class="row">
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="DropDownList_Supervisor" Width="100%" Height="36px" runat="server">
                                            <asp:ListItem Value ="1">Elegir</asp:ListItem>
                                            <asp:ListItem Value ="2">Usuario</asp:ListItem>
                                            <asp:ListItem Value ="3">Correo</asp:ListItem>                            
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="Buscar_Supervisor" Width="100%" Height="36px" runat="server"></asp:TextBox>                                       
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:Button ID="Boton_Buscar_Supervisor" runat="server" CssClass="btn btn-primary" Width="100%" Text="Buscar" OnClick="Boton_Buscar_Supervisor_Click" />
                                    </div>                          
                                </div>
                            </div>   
                       
            
                            <div class="panel-body">                                                                              
                                <div class="row">  
                                    <div class="col-sm-12">
                                        <asp:GridView ID="GridView_Supervisor" Width="100%" GridLines="None" runat="server" OnSelectedIndexChanged="Identificador_Supervisor" DataKeyNames="ID_Usuario" AutoGenerateColumns="false" >
                                            <Columns>
                                                <asp:TemplateField HeaderText="Usuario">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="Seleccionar_Supervisor" CommandName="Select" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" runat="server"><%# Eval ("Usuario") %></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="Correo" HeaderText="Correo" />
                                                <asp:BoundField DataField="Credito_De_Usuario" HeaderText="Credito" />   
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
                <div class="container" id="Formulario_Supervisor" runat="server" visible="false">
                <div class="row">
                    <div class="col-xs-12"> 
                        <div class="panel panel-warning">
                            <div class="panel-heading" style="text-align:center"><h3>Formulario</h3></div>
                            <div class="panel-body">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label formulario">Usuario:</label>
                                        <div class="col-sm-8">
                                            <asp:Label ID="Usuario_Supervisor" Height="36px" Width="100%" MaxLength="10" runat="server"></asp:Label>                                              
                                        </div>
                                    </div>                                    
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label formulario">Correo Electrónico:</label>
                                        <div class="col-sm-8">
                                            <asp:Label MaxLength="30" ID="Correo_Supervisor" runat="server" Width="100%" Height="36px"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label formulario">Crédito en $:</label>
                                        <div class="col-sm-8">
                                            <asp:TextBox ID="Credito_Supervisor" Width="100%" Height="36px" runat="server"></asp:TextBox>
                                        
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label formulario">Tipo de Carga</label>
                                        <div class="col-sm-8">
                                             <asp:DropDownList ID="DropDownList_Carga" runat="server" Height="36px">                            
                                                <asp:ListItem Value ="13">No Resolucion</asp:ListItem>
                                                <asp:ListItem Value ="16">Rapipago</asp:ListItem>
                                                <asp:ListItem Value ="17">Cuenta Digital</asp:ListItem>   
                                                <asp:ListItem Value ="18">Mercado Pago</asp:ListItem>
                                                <asp:ListItem Value ="19">Transferencia Bancaria</asp:ListItem>        
                                                <asp:ListItem Value ="34">Carga de Creditouenta Digital</asp:ListItem>   
                                                <asp:ListItem Value ="35">Cobro por excedente</asp:ListItem>
                                                <asp:ListItem Value ="36">Nota debito</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>                                    
                                    
                                                 
                                </form>
                            </div>
                            
                            <div class="panel-footer pie_formulario" style="height:55px">
                                <asp:UpdatePanel ID="UpdatePanel_Botonera" runat="server">
                                    <ContentTemplate>
                                        <div class="col-xs-12 boton_formulario">
                                            <asp:Button ID="Boton_Actualizar_Supervisor" OnClientClick="return Confirmacion();" Width="100%" CssClass="btn btn-warning " runat="server" Text="Actualizar" OnClick="Boton_Actualizar_Supervisor_Click" />
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