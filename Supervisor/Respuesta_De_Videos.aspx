<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Respuesta_De_Videos.aspx.cs" Inherits="Supervisor.Respuesta_De_Videos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/respuesta_de_ejercicios.css" rel="stylesheet"/>

    <title>Mostrar Videos</title>

</head>

<body>
    <form id="form1" runat="server">
    
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            
        <div>

            <nav class="navbar navbar-fixed-top header fondo_encabezado">
 	            <div class="col-md-12">
                    <div class="Container">
                        <div class="row">
                            <div class="col-xs-4 administrador">
                                <asp:Label ID="Etiqueta_Administrador" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="col-xs-4 consola_de_control">
                                <h1 class="titulo">Panel de Control</h1>
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

            <div class="navbar navbar-default" id="subnav">
                <div class="col-md-12"></div>	
            </div>

            <div class="container" id="main">
                <div class="row">
                    <div class="col-xs-12">       
                        <div class="well" id="Lista" runat="server" style="margin-top:120px;">
                        <div class="panel-heading"><h4>Listado de Videos</h4></div> 
                        <asp:DataList ID="Resultado_DataList" runat="server" Width="90%">

                            <ItemTemplate>

                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width:70%; text-align:center"><asp:Label ID="Etiqueta_Video" runat="server" Text='<%# Eval("Ubicacion_Videos_Y_Explicaciones") %>'></asp:Label></td>
                                        <td style="width:30%; text-align:center"><iframe runat="server" frameborder="0" scrolling="no" width="100" src ='<%# "http://www.colegioeba.com/enunciado/Enunciado" + Eval("ID_Ejercicio") + ".png" %>' /></td>
                                        
                                    </tr>
                                </table>
                                
                                
                                
                           </ItemTemplate>
                            
                        </asp:DataList>
                    
                        <hr />

                      <div id="Centros_Paginados" style="text-align:center" runat="server" visible="false">
                            <asp:LinkButton ID="Anterior" runat="server" OnClick="Anterior_Click" style="margin-right:10px;"><< Anterior&nbsp;</asp:LinkButton>
                            <asp:LinkButton ID="Siguiente" runat="server" OnClick="Siguiente_Click" style="margin-left:10px;">&nbsp;Siguiente >></asp:LinkButton>
                            
                            
                        </div>
                        <div id="Extremos_Paginados" runat="server" style="text-align:center">
                            <asp:LinkButton ID="Anterior_Ultimo" runat="server" style="margin-right:10px;" visible="false" OnClick="Anterior_Click"><< Anterior&nbsp;</asp:LinkButton>
                            <asp:LinkButton ID="Siguiente_Primero" runat="server" style="margin-left:10px;" OnClick="Siguiente_Click">&nbsp;Siguiente >></asp:LinkButton>
                            
                            
                            
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


        </div>
    </form>
</body>
</html>


