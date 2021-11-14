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
                      <asp:Button ID="btnVaccineRegistration" runat="server" Text="Registrar Vacunas" CssClass="buttonNav" OnClick="btnVaccineRegistration_Click" />
                      <asp:Button ID="btnVaccineConfirmation" runat="server" CssClass="buttonNav" Text="Administrarcion de Citas" OnClick="btnVaccineConfirmation_Click" />
                      <asp:Button ID="btnLogin" runat="server" Text="Inicio de Sesion Personal" OnClick="btnPersonalLogin_Click" CssClass="buttonNav" />
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
    </form>
</asp:Content>
