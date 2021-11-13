<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NursesPage.aspx.cs" Inherits="Proyecto_RegistroVacunas.NursesPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <header>
            <asp:Label ID="Label1" runat="server" Text="Hospital Centinela"></asp:Label>
            <asp:Button ID="bynSignOff" runat="server" Text="Cerrar Sesion" OnClick="btnSignOff_Click" />
            <asp:Button ID="btnVaccineRegister" runat="server" Text="Registrar Vacunas" OnClick="btnVaccineRegister_Click" />
        </header>

        <section>

        </section>
        
        <footer>
            <asp:Image ID="Image1" runat="server" />

            <div class="LocationContainer">
                <asp:Label ID="Label2" runat="server" Text="Nuestra Ubicacion"></asp:Label><br />
                <asp:Button ID="btnLocation" runat="server" Text="Hospital Centinela - Cochabamba" OnClick="btnLocation_Click" />
            </div>
            
            <div class="ContactNumberContainer">
                <asp:Label ID="ContactNumber" runat="server" Text="Nuestros Numeros de Contacto"></asp:Label><br />
                <asp:Label ID="Label4" runat="server" Text="4-4568342"></asp:Label>
            </div>
            
            <div class="MinistryPageContainer">
                <asp:Label ID="Label3" runat="server" Text="Pagina del ministerio de Salud"></asp:Label><br />
                <asp:Button ID="btnHealthMinistryPage" runat="server" Text="Ministerio de Salud" OnClick="btnHealthMinistryPage_Click" />
            </div>
            
            

        </footer>
        
        
    </form>
</asp:Content>
