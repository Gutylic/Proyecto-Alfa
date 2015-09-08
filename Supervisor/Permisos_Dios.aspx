<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Permisos_Dios.aspx.cs" Inherits="Supervisor.Permisos_Dios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/permisos_dios.css" rel="stylesheet"/>

    <title>Permisos Administrativos</title>

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
    
    <div class="Container">
            
            <nav class="navbar navbar-fixed-top header fondo_encabezado">
                <div class="container">
                    <div class="row">   
                        <div class="col-xs-4 administrador">
                            <asp:Label ID="Etiqueta_Administrador" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="col-xs-4 consola_de_control">
                            <h1 class="titulo">Permisos</h1>
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
                        <div class="col-xs-4 hora"><asp:Label ID="Etiqueta_Hora" runat="server" ></asp:Label></div>
                        <div class="col-xs-4"></div>
                        <div class="col-xs-4"></div>
                    </div>
                </div>
            </nav>
            <div class="navbar navbar-default" id="subnav">
                <div class="col-xs-12"></div>	
            </div>
            </div>
    
        <div class="container" id="main">


                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading"><h4>Administrador</h4></div>
   			                <div class="panel-body">                           
                                <div class="col-xs-6 col-sm-6 col-md-6">                         
                                    <asp:TextBox ID="Nik_Del_Administrador" placeholder="Ingrese el Nick del Administrador" style="padding-left:3px" runat="server" Height="36px" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <asp:Button ID="Boton_De_Buscar" OnClientClick="return Confirmacion();" runat="server" Width="100%" Text="Permisos Dios" CssClass="btn btn-success" OnClick="Boton_De_Buscar_Click" />
                                </div>  
                                                          
                            </div>
                        </div>
                    </div>
            </div>
        
        
     </form>
</body>
</html>
