<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterVaccinations.aspx.cs" Inherits="Proyecto_RegistroVacunas.RegisterVaccinations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function checkPositiveNumbers(source, arguments) {
            if (arguments.Value > 0) {
                arguments.IsValid = true;
            } else {
                arguments.IsValid = false;
            }
        }
        
    </script>
    <style type="text/css">
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

        /*Section*/
        .container {
            max-width:1200px;
            
        }
        section{
            background: #014663;
        }
        .containerForm{
            width:100%;
            max-width:1200px;
            margin:auto;
            padding:40px;
            
        }
        .containerAll{
            display:flex;
            justify-content:space-between;
            flex-direction:column;
            
        }
        .row{
            
            
            
        }
        .row2{
            width:100%;
            color: white;
            margin-left:auto;
            display:flex;
            padding: 40px;
            align-items:center;
            margin:auto;
        }
        
        .title{
            color:white;
            font-size: 40px;
            margin:auto;
            

        }
        
        #imgForm{
            width:300px;
            margin:auto;
        }
        .button{
            margin:auto;
            padding:10px;
            margin-left: auto;
            border:none;
            background: #014663;
            color:white;
            font-size: 20px;
        }
        .button:hover{
            background: #000000;
            color:white;
            border-radius: 4px;
        }

        /*Responsive Header*/
        
        @media screen and (max-width: 1100px){
            .nav{
                flex-wrap:wrap;
            }
            .nav1{
                margin-top: 40px;
            }
        }

        @media screen and (max-width: 1100px){
            .containerForm{
                flex-wrap:wrap;
            }
        }

        @media screen and (max-width: 1100px){
            .containerForm{
                flex-wrap: wrap;
            }
            .row, 
            .row2{
                margin-top: 20px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <header>
        <div class="navPrincipal">
            <div class="nav">
                <div class="nav1">
                    <asp:Label ID="Label7" runat="server" Text="Hospital Centinela" CssClass="title"></asp:Label>
                </div>
            </div>
        </div>
    </header>

    <section>
    <form id="formRegisterVaccinations" runat="server">
        
         <div class="container">
            <div class="containerForm">
                <div class="containerAll">
                    <div class="row">

                        <div class="row2">
                            <asp:Label Text="Cantidad de vacunas:" runat="server" ></asp:Label>
                            <asp:TextBox CssClass="txtForm" ID="txtQuantityVaccionations" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Requiere el campo de cantidad de vacunas" ControlToValidate="txtQuantityVaccionations">*</asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="CustomValidator1" runat="server" BorderStyle="None" ErrorMessage="Debe ser un numero mayor a 0" ClientValidationFunction="checkPositiveNumbers" ControlToValidate="txtQuantityVaccionations">*</asp:CustomValidator>
                        </div>
                        
                        <div class="row2">
                            <asp:Label ID="Label1" runat="server" Text="Tiempo requerido para aplicar la dosis (minutos):"></asp:Label>
                            <asp:TextBox CssClass="txtForm" ID="txtDoseTime" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDoseTime" ErrorMessage="Requiere el campo tiempo aplicar dosis">*</asp:RequiredFieldValidator>
                        </div>    
                        
                    </div>
                <br />
                    <div class="row">

                        <div class="row2">
                            <asp:Label ID="Label2" runat="server" Text="Cantidad de enfermeras disponibles:"></asp:Label>
                            <asp:TextBox CssClass="txtForm" ID="txtQuantityNurses" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtQuantityNurses" ErrorMessage="Requiere el campo cantidad de enfermeras disponibles">*</asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="CustomValidator2" runat="server" ClientValidationFunction="checkPositiveNumbers" ControlToValidate="txtQuantityNurses" ErrorMessage="Debe ser un numero mayor a 0">*</asp:CustomValidator>
                        </div>
                        
                        <div class="row2">
                            <asp:Label ID="Label3" runat="server" Text="Fecha de inicio de vacunación:"></asp:Label>
                            <asp:TextBox CssClass="txtForm" ID="txtStartVaccination" runat="server" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtStartVaccination" ErrorMessage="Requiere el campo inicio de vacunación">*</asp:RequiredFieldValidator>
                        </div>
                        
                    </div>

                <br />
                    <div class="title">
                        <asp:Label ID="Label4" runat="server" Text="Horario de atención" CssClass="title"></asp:Label>
                    </div>
                <br />

                    <div class="row">
                    <div class="row2">
                        <asp:Label ID="Label5" runat="server" Text="Horario de Inicio:"></asp:Label>
                        <asp:TextBox CssClass="txtForm" ID="txtStartAttention" runat="server" TextMode="Time"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtStartAttention" ErrorMessage="El campo horario de inicio es requerido">*</asp:RequiredFieldValidator>
                    </div>
                    
                    <div class="row2">
                        <asp:Label ID="Label6" runat="server" Text="Horario de Fin:"></asp:Label>
                        <asp:TextBox CssClass="txtForm" ID="txtEndAttention" runat="server" TextMode="Time"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEndAttention" ErrorMessage="El campo horario de Fin es requerido">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtStartAttention" ControlToValidate="txtEndAttention" ErrorMessage="Horario de Inicio debe ser menor al horario de Fin" Operator="GreaterThan">*</asp:CompareValidator>
                    </div>             
                </div>
                <br />
                    <div class="button">
                        <asp:Button ID="btnRegister" runat="server" Text="Registrar" OnClick="btnRegister_Click" CssClass="button" />
                        <asp:Label runat="server" ID="PRUEBAS"></asp:Label>
                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" style="margin-bottom: 0px" />
                    </div>
                
            </div>
            </div>
                
            
         </div>
    </form>
        </section>
</asp:Content>
