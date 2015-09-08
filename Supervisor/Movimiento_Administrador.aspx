<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" UICulture="de" Culture="en-US" CodeBehind="Movimiento_Administrador.aspx.cs" Inherits="Supervisor.Movimiento_Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/movimiento_administrador.css" rel="stylesheet"/>
    
    <title>Movimientos de Usuarios</title>

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
                                <h1 class="titulo">Empresa</h1>
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
                    <asp:UpdatePanel ID="UpdatePanel_Botonera" runat="server">   
                        <ContentTemplate>   
                            <div class="panel panel-default">                                                            
                                <div class="encabezado_panel panel-heading fondo" style="height:150px; text-align:center">
                                    <h2 class="datos_del_administrador">Movimientos Realizados</h2>
                                    <hr />
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="Buscar_Administrador" Width="100%" Height="36px" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:Button ID="Boton_Buscar_Administrador" runat="server" CssClass="btn btn-primary" Width="100%" Text="Buscar" OnClick="Boton_Buscar_Administrador_Click" />
                                    </div>
                                </div>
                                <div class="panel-body" runat="server" id="Formulario">
                                    
                                    <div class="row">
                                        <div class="col-xs-12">
                                            
                                            <asp:GridView ID="GridView_Administrador" Width="100%" GridLines="None" runat="server" AutoGenerateColumns="false" >
                                                <Columns>
                                                
                                                    <asp:BoundField DataField="Usuario" HeaderText="Usuario" />
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
                            </ContentTemplate>
                        </asp:UpdatePanel> 
                    </div>
                </div>
            </div>
        
        
                <hr />
                <footer>
                   <div class="container">            
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