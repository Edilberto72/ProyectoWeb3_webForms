<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NursesPage.aspx.cs" Inherits="Proyecto_RegistroVacunas.NursesPage" %>
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
        .nav2{
            max-width:600px;
            
            
        }
        .buttonNav{
            padding:10px;
            margin-left: 20px;
            border:none;
            background: #014663;
            color:white;
            font-size: 20px;
        }
        .buttonNav:hover{
            background: #000000;
            color:white;
            border-radius: 4px;
        }

        /*Responsive Header*/
        @media screen and (max-width: 1100px){

            .nav{
                flex-wrap:wrap;
                align-items:center;
            }
            .nav1,
            .nav2{
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
                        <asp:Label ID="Label1" runat="server" Text="Hospital Centinela" CssClass="title"></asp:Label>
                    </div>

                    <div class="nav2">
                        <asp:Button ID="bynSignOff" runat="server" Text="Cerrar Sesion" CssClass="buttonNav" OnClick="btnSignOff_Click" />
                    </div>
                </div>
            </div>           
        </header>

        <section>

        </section>
        
        
        
        
    </form>
</asp:Content>
