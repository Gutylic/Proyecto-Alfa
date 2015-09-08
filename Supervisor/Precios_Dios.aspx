<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Precios_Dios.aspx.cs" UICulture="de" Culture="en-US" Inherits="Supervisor.Precios_Dios" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/precios_dios.css" rel="stylesheet"/>

    <title>Precios</title>

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
                                <h1 class="titulo">Precios</h1>
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
                            <div class="encabezado_panel panel-heading fondo" style="text-align:center"><h2 class="datos_del_administrador">Precios De Los Productos</h2></div>                 
                            <div class="panel-body"> 
                                <div class="row">  
                                    <div class="col-sm-12">
                                        <asp:GridView ID="GridView_Dios" Width="100%" GridLines="None" runat="server" AutoGenerateColumns="false" >
                                            <Columns>
                                                <asp:BoundField DataField="Valor_Ejercicio" HeaderText="Ejercicio" DataFormatString="{0:c}" />    
                                                <asp:BoundField DataField="Valor_Explicacion" HeaderText="Explicacion" DataFormatString="{0:c}" /> 
                                                <asp:BoundField DataField="Valor_Video" HeaderText="Video" DataFormatString="{0:c}" />  
                                                <asp:BoundField DataField="Valor_Conjunto_De_Videos" HeaderText="Conjunto de Videos" DataFormatString="{0:c}" />    
                                                <asp:BoundField DataField="Valor_Explicacion_Personalizada" HeaderText="Explicacion Personalizada" DataFormatString="{0:c}" />  
                                                <asp:BoundField DataField="Valor_Ejercicio_Personalizado" HeaderText="Ejercicio Personalizado" DataFormatString="{0:c}" />
                                                <asp:BoundField DataField="Valor_Video_Personalizado" HeaderText="Video Personalizado" DataFormatString="{0:c}"/>    
                                                <asp:BoundField DataField="Valor_Impresion" HeaderText="Impresion" DataFormatString="{0:c}" /> 
                                                <asp:BoundField DataField="Valor_Prestamo_SOS" HeaderText="Prestamo" DataFormatString="{0:c}" />  
                                                <asp:BoundField DataField="Duracion_De_Los_Videos" HeaderText="Duracion Videos" />    
                                                <asp:BoundField DataField="Duracion_De_Los_Ejercicios_Y_Las_Explicaciones" HeaderText="Duracion Ejercicios" />  
                                                <asp:BoundField DataField="Empresa" HeaderText="Empresa" />                                              
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