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

        function checkGreatherThan(source, arguments) {

            let timeEnd = document.getElementById('<%= txtStartAttention.ClientID %>');
            
            if (arguments.Value < timeEnd) {
                arguments.IsValid = true;
            } else {
                arguments.IsValid = false;
            }
            
        }
    </script>
    <style type="text/css">
        .container {
            position: absolute;
            display: flex;
            flex-wrap: wrap-reverse;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            padding: 10px;
            border: 1px solid #000000;
        }

        .containerForm{
            display: flex;
            flex-wrap: wrap;
            flex-direction: column;
        }

        .row {
        }

        .txtForm {
            height: 30px;
        }

        #imgForm {
            width: 200px;
        }
        #formRegisterVaccinations {
            height: 538px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="formRegisterVaccinations" runat="server">
        <div class="container">
            <div class="containerForm">
                <div class="row">
                    <asp:Label Text="Cantidad de vacunas" runat="server" ></asp:Label>
                    <asp:TextBox CssClass="txtForm" ID="txtQuantityVaccionations" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Requiere el campo de cantidad de vacunas" ControlToValidate="txtQuantityVaccionations">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" BorderStyle="None" ErrorMessage="Debe ser un numero mayor a 0" ClientValidationFunction="checkPositiveNumbers" ControlToValidate="txtQuantityVaccionations">*</asp:CustomValidator>
                    <asp:Label ID="Label1" runat="server" Text="Tiempo requerido para aplicar la dosis"></asp:Label>
                    <asp:TextBox CssClass="txtForm" ID="txtDoseTime" runat="server" TextMode="Time"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDoseTime" ErrorMessage="Requiere el campo tiempo aplicar dosis">*</asp:RequiredFieldValidator>
                </div>
                <br />
                <div class="row">
                    <asp:Label ID="Label2" runat="server" Text="Cantidad de enfermeras disponibles"></asp:Label>
                    <asp:TextBox CssClass="txtForm" ID="txtQuantityNurses" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtQuantityNurses" ErrorMessage="Requiere el campo cantidad de enfermedas">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ClientValidationFunction="checkPositiveNumbers" ControlToValidate="txtQuantityNurses" ErrorMessage="Debe ser un numero mayor a 0">*</asp:CustomValidator>
                    <asp:Label ID="Label3" runat="server" Text="Fecha de inicio de vacunación"></asp:Label>
                    <asp:TextBox CssClass="txtForm" ID="txtStartVaccination" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtStartVaccination" ErrorMessage="Requiere que ingrese una fecha de inicio de vacunación">*</asp:RequiredFieldValidator>
                </div>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Horario de atención"></asp:Label>
                <br />
                <div class="row">
                    <asp:Label ID="Label5" runat="server" Text="Horario de Inicio"></asp:Label>
                    <asp:TextBox CssClass="txtForm" ID="txtStartAttention" runat="server" TextMode="Time"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtStartAttention" ErrorMessage="El campo horario de inicio es requerido">*</asp:RequiredFieldValidator>
                    <asp:Label ID="Label6" runat="server" Text="Horario de Fin"></asp:Label>
                    <asp:TextBox CssClass="txtForm" ID="txtEndAttention" runat="server" TextMode="Time"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEndAttention" ErrorMessage="El campo horario de Fin es requerido">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="txtStartAttention" ErrorMessage="El horario de Inicio es mayor al de Fin" ClientValidationFunction="checkGreatherThan">*</asp:CustomValidator>
                </div>
                <br />
                <asp:Button ID="btnRegister" runat="server" Text="Registrar" OnClick="btnRegister_Click" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </div>
            <div>
                <img ID="imgForm" src="https://img.medicalexpo.es/images_me/photo-g/68248-11136571.jpg" />
            </div>
        </div>
    </form>
</asp:Content>
