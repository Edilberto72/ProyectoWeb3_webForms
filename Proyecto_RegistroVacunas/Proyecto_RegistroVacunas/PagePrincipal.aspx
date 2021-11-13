<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PagePrincipal.aspx.cs" Inherits="Proyecto_RegistroVacunas.PagePrincipal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        
        
        <header>
            <asp:Label ID="Label1" runat="server" Text="Hospital Centinela"></asp:Label>
            <asp:Button ID="btnPersonalLogin" runat="server" Text="Inicio de Sesion Personal" OnClick="btnPersonalLogin_Click" />
        </header>

        <section>
            <asp:Button ID="btnRegisterAppointment" runat="server" Text="Registra tu Cita" OnClick="btnRegisterAppointment_Click" />
            <asp:Image ID="Image1" runat="server" />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </section>

        <footer>
            <asp:Image ID="Image2" runat="server" />

            <div class="LocationContainer">
                <asp:Label ID="Label3" runat="server" Text="Nuestra Ubicacion"></asp:Label><br />
                <asp:Button ID="btnLocation" runat="server" Text="Hospital Centinela - Cochabamba" OnClick="btnLocation_Click" />
            </div>
            
            <div class="ContactNumberContainer">
                <asp:Label ID="ContactNumber" runat="server" Text="Nuestros Numeros de Contacto"></asp:Label><br />
                <asp:Label ID="Label7" runat="server" Text="4-4568342"></asp:Label>
            </div>
            
            <div class="MinistryPageContainer">
                <asp:Label ID="Label8" runat="server" Text="Pagina del ministerio de Salud"></asp:Label><br />
                <asp:Button ID="Button3" runat="server" Text="Ministerio de Salud" OnClick="btnHealthMinistryPage_Click" />
            </div>
        </footer>
    </form>
</asp:Content>
