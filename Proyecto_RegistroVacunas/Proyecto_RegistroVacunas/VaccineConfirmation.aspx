<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VaccineConfirmation.aspx.cs" Inherits="Proyecto_RegistroVacunas.VaccineConfirmation" %>
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


        section{
            width:100%;
            max-width:1200px;
            margin:auto;
            padding:40px;
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
        <form id="form1" runat="server">
            <asp:DropDownList ID="cmbVaccinationDay" runat="server" OnSelectedIndexChanged="cmbVaccinationDay_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
            <br />
            <asp:GridView ID="dataVaccineConfirmation" runat="server" OnSelectedIndexChanged="dataVaccineConfirmation_SelectedIndexChanged" AllowPaging="True" OnPageIndexChanging="dataVaccineConfirmation_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <columns>
                    <asp:CommandField ButtonType="Button" HeaderText="Seleccionar" ShowHeader="True" ShowSelectButton="True" />
                </columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:Button ID="btnVaccinationRegister" runat="server" Text="Confirmar vacunacion" OnClick="btnVaccinationRegister_Click" />
            <asp:TextBox ID="txtPrueba" runat="server"></asp:TextBox>
        </form>
    </section>

</asp:Content>
