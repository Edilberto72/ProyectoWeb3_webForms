<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VaccineConfirmation.aspx.cs" Inherits="Proyecto_RegistroVacunas.VaccineConfirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:DropDownList ID="cmbVaccinationDay" runat="server" OnSelectedIndexChanged="cmbVaccinationDay_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
        <br />
        <asp:GridView ID="dataVaccineConfirmation" runat="server" OnSelectedIndexChanged="dataVaccineConfirmation_SelectedIndexChanged">
            <columns>
                <asp:CommandField ButtonType="Button" HeaderText="Seleccionar" ShowHeader="True" ShowSelectButton="True" />
            </columns>
        </asp:GridView>
        <asp:Button ID="btnVaccinationRegister" runat="server" Text="Confirmar vacunacion" OnClick="btnVaccinationRegister_Click" />
        <asp:TextBox ID="txtPrueba" runat="server"></asp:TextBox>
    </form>
</asp:Content>
