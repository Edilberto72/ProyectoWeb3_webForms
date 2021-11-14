<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PagePrincipal.aspx.cs" Inherits="Proyecto_RegistroVacunas.PagePrincipal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style type="text/css">
        *{
            margin: 0px;
            padding: 0px;
            border:none;
            box-sizing: border-box;
        }
        /*Header*/
        header{
            width:100%;
            background: #014663;
            color:white;
        }
        .navPrincipal{
            width:100%;
            max-width:1200px;
            margin:auto;
            padding:40px;
        }
        .nav{
            display:flex;
            justify-content:space-between;
            align-items:center;
        }
        header .title{
            font-size:30px;
        }
        .nav1{
            max-width:600px;
        }
        .nav2{
            max-width:600px;
            
            
        }
        .buttonNav{
            padding:10px;
            margin-left: 20px;
            border:none;
            background: #014663;
            color:white;
            font-size: 20px;
        }
        .buttonNav:hover{
            background: #000000;
            color:white;
            border-radius: 4px;
        }

        /*section*/
        section{
            width: 100%;
            background:#1f6b8a;
            color:white;
        }
        .containerSectionPrincipal{
            width: 100%;
            max-width: 1200px;
            margin:auto;
            padding:40px;
        }
        .containerSection{
            display:flex;
            justify-content:space-between;
        }
        .containerimage {
            max-width: 600px;
        }
        .containerimage .imageSection{
            width:500px;
            height:500px;
        }
        .containerDescription{
            max-width:600px;
        }
        .containerDescription h3{
            color:white;
            font-size: 40px;
        }
        .btnRegister{
            padding:10px;
            margin-left: 20px;
            border:none;
            background: #014663;
            color:white;
            font-size: 20px;
        }
        .btnRegister:hover{
            background: #000000;
            color:white;
            border-radius: 4px;
        }
            
        


        /*footer*/
        footer{
            width: 100%;
            background: #202020;
            color: white;
            
        }

        .containerPrincipal{
            width: 100%;
            max-width: 1200px;
            margin:auto;
            padding:40px;
        }

        .container{
            display:flex;
            justify-content:space-around;
        }

        .colum1{
            max-width: 400px;   

        }
        .colum2{
            max-width: 400px;
            align-items:center;
        }
        .colum2 h1{
            font-size: 22px;
            margin-top: 20px;
        }
        .row{
            margin-top:20px;
            display:flex;
        }
        .row .image{
            width:36px;
            height:36px;

        }
        .row .label{
            margin-top: 20px;
            margin-left:10px;
            color: #C7C7C7;
        }
        .colum3{
            max-width: 400px;
            align-items:center;
        }
        .colum3 h1{
            font-size: 22px;
            margin-top:20px;
        }
        .row2{
            margin-top:20px;
            display:flex;
            align-items:center;
        }
        .row2 .image{
            width:36px;
            height:36px;
        }
        .row2 .label{
            margin-top:5px;
            margin-left: 10px;
            color: #C7C7C7;
        }
        .cointainerFooter{
            width:100%;
            background: #101010;
            
        }
        .footer{
            max-width: 1200px;
            margin:auto;
            display:flex;
            justify-content:space-between;
            padding: 40px;
        }


        /*Responsive Header*/
        @media screen and (max-width: 1100px){
            .nav{
                flex-wrap:wrap;
            }
            .nav1,
            .nav2{
                margin-top: 40px;
            }
        }

        /*Responsive Section*/
        @media screen and (max-width: 1100px){
            .containerSection{
                flex-wrap:wrap;
            }
            .imageSection{
                max-width: 100%;
            }
            h3,
            .btnRegister{
                margin-top: 40px;
            }

        }
        /*Responsive Footer*/
        @media screen and (max-width: 1100px){
            .container{
                flex-wrap:wrap; 
            }

            .colum1{
                max-width:100%;
            }

            .colum2,
            .colum3{
                margin-top: 40px;

            }

        }
        /*agregar meta:vp*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        
        
        <header>
            <div class="navPrincipal">
                <div class="nav">
                    <div class="nav1">
                       <asp:Label ID="Label1" runat="server" Text="Hospital Centinela" CssClass="title"></asp:Label>
                    </div>

                    <div class="nav2">
                      <asp:Button ID="Button3" runat="server" Text="Inicio de Sesion Personal" OnClick="btnPersonalLogin_Click" CssClass="buttonNav" />
                      <asp:Button ID="btnVaccineRegistration" runat="server" Text="Registrar Vacunas" CssClass="buttonNav" OnClick="btnVaccineRegistration_Click" />
                        <asp:Button ID="btnAppointmentManager" runat="server" OnClick="btnAppointmentManager_Click" Text="Administrarcion de Citas" />
                    </div>
                </div>
            </div>                        
        </header>
       

        <section>
            <div class="containerSectionPrincipal">
                <div class="containerSection">
                    <div class="containerimage">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Diseño sin título (1).png" CssClass="imageSection" />
                    </div>

                    <div class="containerDescription">
                        <h3>Tus seres queridos te necesitan. <br /> Cuando llegue tu turno, vacunate contra el Covid-19,<br /> para que Puedas apoyarlos</h3>
                        <asp:Button ID="Button4" runat="server" Text="Registra tu Cita" OnClick="btnRegisterAppointment_Click" CssClass="btnRegister" />                
                    </div>
                </div>    
            </div>        
        </section>


        <footer>

            <div class="containerPrincipal">
                  
            <div class="container">
                <div class="colum1">
                    <asp:Image ID="Image3" runat="server" />
                </div>

                <div class="colum2">
                    <h1>Redes Sociales:</h1>

                    <div class="row">
                        <div class="FacebookPage">
                          <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/facebook.png" CssClass="image" />
                          <asp:Label CssClass="label" ID="Label7" runat="server" Text="Pagina de Facebook Ministerio de salud"></asp:Label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="MinistryPageContainer">
                         <asp:Label ID="Label6" runat="server" Text="Pagina del ministerio de Salud:"></asp:Label><br />
                         <asp:Button ID="Button2" runat="server" Text="Ministerio de Salud" OnClick="btnHealthMinistryPage_Click" />
                       </div>
                    </div>       
                </div>

                <div class="colum3">

                    <h1>Informacion:</h1>

                    <div class="row2">
                        <div class="LocationContainer">
                           <asp:Label ID="Label4" runat="server" Text="Nuestra Ubicacion:"></asp:Label><br />
                            <asp:Image ID="Image6" runat="server" CssClass="image" ImageUrl="~/Images/house.png" />
                           <asp:Button ID="Button1" runat="server" Text="Hospital Centinela - Cochabamba" OnClick="btnLocation_Click" Width="365px" />
                        </div>
                    </div>
                   
                    <div class="row2">
                        <div class="ContactNumberContainer">
                           <asp:Label ID="Label3" runat="server" Text="Nuestros Numeros de Contacto:"></asp:Label><br />
                            <asp:Image ID="Image5" runat="server" CssClass="image" ImageUrl="~/Images/smartphone.png" />
                           <asp:Label ID="Label5" runat="server" Text="4-4568342" CssClass="label"></asp:Label>
                        </div>
                    </div>
                   
                </div>
            </div>

            </div>

                <div class="cointainerFooter">
                    <div class="footer">
                         <div class="copy">
                            <asp:Label ID="Label8" runat="server" Text="© 2021 Todos los Derechos Reservados"></asp:Label>
                         </div>
                    </div>
                    
                </div>                     
        </footer>
    </form>
</asp:Content>
