<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Compra_Videos_Dios.aspx.cs" Inherits="Supervisor.Compra_Videos_Dios" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/comprar_ejercicios_dios.css" rel="stylesheet"/>

    <title>Compra de Videos</title>

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
                            <div class="col-xs-4 consola_de_control" style="text-align:center">
                                <h1 class="titulo">Compras</h1>
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
                             <div class="encabezado_panel panel-heading fondo" style="text-align:center"><h2 class="datos_del_administrador">Vídeos</h2>
                            <hr />
                                <div class="row">
                                    <div class="col-xs-3">
                                        <asp:DropDownList ID="DropDownList_Dios" Width="100%" Height="36px" runat="server" AutoPostBack="true">                            
                                            <asp:ListItem Value ="1">Elegir una opción</asp:ListItem>
                                            <asp:ListItem Value ="2">Usuario</asp:ListItem>   
                                            <asp:ListItem Value ="3">Correo Electrónico</asp:ListItem>
                                            <asp:ListItem Value ="4">Empresa</asp:ListItem>                                                              
                                        </asp:DropDownList>
                                    </div>                                    
                                    <div class="col-xs-7"> 
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
                                        <asp:GridView ID="GridView_Dios" Width="100%" GridLines="None" runat="server" OnSelectedIndexChanged="Identificador_Dios" DataKeyNames="ID_Compra" AutoGenerateColumns="false" >
                                            <Columns>
                                                <asp:TemplateField HeaderText="Usuario">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="Seleccionar_Dios" CommandName="Select" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" runat="server"><%# Eval ("Usuario") %></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>                                                
                                                <asp:BoundField DataField="Correo" HeaderText="Correo" />
                                                <asp:BoundField DataField="Titulo" HeaderText="Titulo" />
                                                <asp:BoundField DataField="Fecha_De_Vencimiento" HeaderText="Vencimiento" DataFormatString="{0:d}"/>  
                                            </Columns>
                                        </asp:GridView>
                                    </div>                                        
                                </div>
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
            <div class="container" id="Formulario_Dios" runat="server" visible="false" >
                <div class="row">
                    <div class="col-xs-12"> 
                        <div class="panel panel-warning">
                            <div class="panel-heading" style="text-align:center"><h3>Formulario</h3></div>
                            <div class="panel-body"  >
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
                                            <label class=" control-label formulario">Correo</label>
                                        </div>
                                        <div class="col-sm-9">
                                            <asp:Label ID="Correo_Dios" runat="server" Width="100%" Height="36px" ></asp:Label>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-xs-3">
                                            <label class="col-sm-1 control-label formulario">Titulo</label>
                                        </div>
                                        <div class="col-sm-9">
                                            <asp:Label ID="Titulo_Dios" runat="server" Width="100%" Height="36px"></asp:Label>
                                        </div>
                                    </div>
                                  
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <label class="col-sm-1 control-label formulario">Duracion</label>
                                        </div>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="Duracion_Dios" runat="server" Width="100%" Height="36px" ></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-xs-3">
                                            <label class="col-sm-1 control-label formulario">Empresa</label>
                                        </div>
                                        <div class="col-sm-9">
                                            <asp:Label ID="Empresa_Dios" runat="server" Width="100%" Height="36px" ></asp:Label>
                                        </div>
                                    </div>


                               
                            </div> 
                            
                             <div class="panel-footer pie_formulario">
                                                                       
                                          
                                         <div class="col-xs-12">
                                            <asp:Button ID="Boton_Borrar_Dios" OnClientClick="return Confirmacion();" Width="100%" CssClass="btn btn-danger" runat="server" Text="Borrar" OnClick="Boton_Borrar_Dios_Click" />
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


