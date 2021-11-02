<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterVaccinations.aspx.cs" Inherits="Proyecto_RegistroVacunas.RegisterVaccinations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="formRegisterVaccinations" runat="server">
        <div class="container">
            <div class="containerForm">
                <div class="row">
                    <asp:Label Text="Cantidad de vacunas" runat="server" ></asp:Label>
                    <asp:TextBox CssClass="txtForm" ID="txtQuantityVaccionations" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Text="Tiempo requerido para aplicar la dosis"></asp:Label>
                    <asp:TextBox CssClass="txtForm" ID="txtDoseTime" runat="server" TextMode="Time"></asp:TextBox>
                </div>
                <br />
                <div class="row">
                    <asp:Label ID="Label2" runat="server" Text="Cantidad de enfermeras disponibles"></asp:Label>
                    <asp:TextBox CssClass="txtForm" ID="txtQuantityNurses" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" Text="Fecha de inicio de vacunación"></asp:Label>
                    <asp:TextBox CssClass="txtForm" ID="txtStartVaccination" runat="server" TextMode="Date"></asp:TextBox>
                </div>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Horario de atención"></asp:Label>
                <br />
                <div class="row">
                    <asp:Label ID="Label5" runat="server" Text="Horario de Inicio"></asp:Label>
                    <asp:TextBox CssClass="txtForm" ID="txtStartAttention" runat="server" TextMode="Time"></asp:TextBox>
                    <asp:Label ID="Label6" runat="server" Text="Horario de Fin"></asp:Label>
                    <asp:TextBox CssClass="txtForm" ID="txtEndAttention" runat="server" TextMode="Time"></asp:TextBox>
                </div>
                <br />
                <asp:Button ID="btnRegister" runat="server" Text="Registrar" OnClick="btnRegister_Click" />
            </div>
            <div>
                <img ID="imgForm" src="https://img.medicalexpo.es/images_me/photo-g/68248-11136571.jpg" />
            </div>
        </div>
    </form>
</asp:Content>
