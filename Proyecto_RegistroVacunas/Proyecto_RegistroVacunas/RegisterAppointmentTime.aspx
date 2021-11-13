<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterAppointmentTime.aspx.cs" Inherits="Proyecto_RegistroVacunas.ListVaccinationSchedules" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Apellido Paterno"></asp:Label>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Apellido Materno"></asp:Label>
                <asp:TextBox ID="txtSecondLastName" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </div>
            <section id="listVaccinationSchedule">
                <asp:DropDownList ID="cmbDate" runat="server" OnSelectedIndexChanged="cmbDate_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                <br />
                <asp:GridView ID="dataVaccinationSchedule" AllowPaging="true" PageSize="20" runat="server" OnSelectedIndexChanged="dataVaccinationSchedule_SelectedIndexChanged" OnPageIndexChanging="dataVaccinationSchedule_PageIndexChanging" >
                    <Columns>
                        <asp:CommandField  ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
            </section>
        </div>
        <br />
        <asp:Button ID="btnRegister" runat="server" Text="Registrar cita" OnClick="btnRegister_Click" />

        <asp:TextBox ID="txtPrueba" Text="" runat="server" />
    </form>
</asp:Content>
