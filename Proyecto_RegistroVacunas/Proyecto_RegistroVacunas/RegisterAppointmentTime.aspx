<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterAppointmentTime.aspx.cs" Inherits="Proyecto_RegistroVacunas.ListVaccinationSchedules" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        :root {
         --colorTextos: #49454567;
        }


        *,
        ::before,
        ::after {
        margin: 0;
        padding: 0;
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
        
       

         #form1{
          background: #b92b27;  /* fallback for old browsers */
          background: -webkit-linear-gradient(to right, #1565C0, #b92b27);  /* Chrome 10-25, Safari 5.1-6 */
          background: linear-gradient(to right, #1565C0, #b92b27); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
         }
         .section{
             height:650px;
             display:flex;
             justify-content: center;
             align-items:center;
         }
         .regular{
             
         }

         .containerTitle2{
             text-align: center;
             font-weight: 700;
         }

         .login{
         background:#fff;
         width:auto;
         box-shadow: 0 0 6px 0 rgba(255, 255, 255, 0.8);
         border-radius: 10px;
         }

        .login .group{
        position: relative;
        margin: 35px ;
        }

        input{
        background: none;
        color: #c6c6c6;
        font-size: 18px;
        padding: 10px 10px 10px 5px;
        display: block;
        width: 100%;
        border: none;
        border-bottom: 1px solid var(--colorTextos);
        }

        input:focus{ 
        outline: none;
        color: #5e5d5d;
        }
        .label{
        color: var(--colorTextos);
        font-size: 16px;
        position: relative;
        left: 5px;
        top: 10px;
        transition: 0.5s ease all;
        pointer-events: none;
        }

        input:focus + label,
        input:valid + label{
            top: -14px;
            font-size: 12px;
            color: #2196f3;
        }

        .barra{
        position: relative;
        display: block;
        width: 100%;
        }

        .barra::before{
        content: "";
        height: 2px;
        width: 0%;
        bottom: 0;
        position: absolute;
        background: linear-gradient(to right, #B06AB3, #4568DC);
        transition: 0.3s ease width;
        left: 0;
        }

        input:focus~.barra ::before{
        width: 100%;
        }


        .button .btn1{
        background: #4568DC;
        /* fallback for old browsers */
        background: -webkit-linear-gradient(to right, #B06AB3, #4568DC);
        /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(to right, #B06AB3, #4568DC);
        /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        border: none;
        display: block;
        width: 80%;
        margin: auto;
        height: 40px;
        width:130px;
        font-size: 16px;
        cursor: pointer;
        margin-top: 20px ;
        border-radius:6px;
        }
        .btn1{
            color:white;
        }

        .button .btn2{
        background: #4568DC;
        /* fallback for old browsers */
        background: -webkit-linear-gradient(to right, #B06AB3, #4568DC);
        /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(to right, #B06AB3, #4568DC);
        /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        border: none;
        display: block;
        width: 80%;
        margin: 10px auto;
        height: 40px;
        width:150px;
        font-size: 16px;
        cursor: pointer;
        margin-top: 20px ;
        border-radius:6px;
        }
        .grid{
            max-width:1200px;
        }
        #listVaccinationSchedule{
            display:flex;
            
        }

        @media screen and (max-width:500px){
        .login{
        width: 80%;
        }

        .btn1,
        .btn2{
            margin-top: 20px;
        }
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
    <form id="form1" runat="server">

        <header>
        <div class="navPrincipal">
            <div class="nav">
                <div class="nav1">
                    <asp:Label ID="Label7" runat="server" Text="Hospital Centinela" CssClass="title"></asp:Label>
                </div>
            </div>
        </div>
    </header>
        <div class="section">
            <div class="login">
                <div class="regular">

                        <div class="containerTitle">
                            <div class="containertitle2">
                                <asp:Label class="title" runat="server" Text="Registrar Cita"></asp:Label>
                            </div>
                            
                        </div>

                        <div class="group">
                            <asp:Label CssClass="label" ID="Label1" runat="server" Text="Nombre"></asp:Label>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        </div>

                        <div class="group">
                            <asp:Label CssClass="label" ID="Label2" runat="server" Text="Apellido Paterno"></asp:Label>
                            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        </div>

                        <div class="group">
                            <asp:Label CssClass="label" ID="Label5" runat="server" Text="Apellido Materno"></asp:Label>
                            <asp:TextBox ID="txtSecondLastName" runat="server"></asp:TextBox>
                        </div>

                        <div class="group">
                            <asp:Label CssClass="label" ID="Label3" runat="server" Text="Email"></asp:Label>
                             <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </div>
                </div>
                
                
            </div>
            <div class="grid">
                <section id="listVaccinationSchedule">
                <asp:DropDownList ID="cmbDate" runat="server" OnSelectedIndexChanged="cmbDate_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                <br />
                <asp:GridView ID="dataVaccinationSchedule" AllowPaging="True" PageSize="20" runat="server" OnSelectedIndexChanged="dataVaccinationSchedule_SelectedIndexChanged" OnPageIndexChanging="dataVaccinationSchedule_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None" >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField  ShowSelectButton="True" />
                    </Columns>
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
            </section>
            </div>
            
        </div>
        <br />
        <div class="button">
            <div class="btn1">
                <asp:Button ID="btnRegister" runat="server" Text="Registrar cita" OnClick="btnRegister_Click" />
            </div>
            <div class="btn2">
                <asp:Button ID="Button1" runat="server" Text="Volver a la pagina principal" OnClick="btnToPagePrincipal_Click" />
            </div>
        </div>
        
        <asp:TextBox ID="txtPrueba" Text="" runat="server" />
    </form>
</asp:Content>
