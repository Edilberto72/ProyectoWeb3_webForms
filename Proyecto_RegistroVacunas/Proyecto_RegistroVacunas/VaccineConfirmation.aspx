<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VaccineConfirmation.aspx.cs" Inherits="Proyecto_RegistroVacunas.VaccineConfirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .containerPrincipal{
            width:100%;
            max-width:1200px;
            margin:auto;
            padding:40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <form id="form1" runat="server">

         <div class="containerPrincipal">
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="cmbVaccinationDay_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                <br />
                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="dataVaccineConfirmation_SelectedIndexChanged">
                    <columns>
                        <asp:CommandField ButtonType="Button" HeaderText="Seleccionar" ShowHeader="True" ShowSelectButton="True" />
                    </columns>
                </asp:GridView>
                <asp:Button ID="Button1" runat="server" Text="Confirmar vacunacion" OnClick="btnVaccinationRegister_Click" />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         </div>

        </form>
    </section>
</asp:Content>
