<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonalRecord.aspx.cs" Inherits="Proyecto_RegistroVacunas.PersonalRecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="form1" runat="server">
        <header>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </header>

        <section>
            <asp:Label ID="Label2" runat="server" Text="Registro Para Personal"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="Nombre:"></asp:Label><br />
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label4" runat="server" Text="Apellidos;"></asp:Label><br />
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label5" runat="server" Text="Correo Electronico:"></asp:Label><br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label6" runat="server" Text="Contraseña:"></asp:Label><br />
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnPersonal" runat="server" Text="Registrar" OnClick="btnPersonal_Click"/>
        </section>
        

    </form>


</asp:Content>
