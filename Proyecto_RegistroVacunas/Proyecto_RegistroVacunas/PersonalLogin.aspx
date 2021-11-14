<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonalLogin.aspx.cs" Inherits="Proyecto_RegistroVacunas.PersonalLogin" %>
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
       

         .body{
          background: #b92b27;  /* fallback for old browsers */
          background: -webkit-linear-gradient(to right, #1565C0, #b92b27);  /* Chrome 10-25, Safari 5.1-6 */
          background: linear-gradient(to right, #1565C0, #b92b27); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

         height:650px;
         display:flex;
         justify-content: center;
         align-items:center;
         }

         .containerTitle{
             text-align: center;
             font-weight: 700;
         }

         .form{
         background: #fff;
         padding:20px 0;
         box-shadow: 0 0 6px 0 rgba(255, 255, 255, 0.8);
         border-radius: 10px;
         }

        .form{
        width: 100%;
        margin: auto;
        }

        .form .group{
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
        position: absolute;
        left: 5px;
        top: 10px;
        transition: 0.5s ease all;
        pointer-events: none;
        }

        input:focus~label,
        input:valid~label{
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
        margin: 10px auto;
        height: 40px;
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
        font-size: 16px;
        cursor: pointer;
        margin-top: 20px ;
        border-radius:6px;
        }

        @media screen and (max-width:500px){
        form{
        width: 80%;
        }

        .btn1,
        .btn2{
            margin-top: 20px;
        }
        }


       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section Class="body">
      <form id="form1" runat="server">


        
            
            <div Class="form">
                <div class="containerTitle">
                    <asp:Label class="title" runat="server" Text="Inicio de Sesion Para Personal"></asp:Label>
                </div>
      

                <div class="group">
                    <asp:Label class="label" runat="server" Text="Correo Electronico:"><span class="barra"></span></asp:Label>
                    <asp:TextBox ID="txbEmailPersonal" runat="server"></asp:TextBox>
                </div>

                <div class="group">
                    <asp:Label class="label" runat="server" Text="Contraseña:"><span class="barra"></span></asp:Label>
                    <asp:TextBox ID="txbPasswordPersonal" runat="server"></asp:TextBox>
                </div>
                      
                <div class="button">
                    <div class="btn1">
                        <asp:Button ID="btnPersonalLogin" runat="server" Text="Iniciar Sesion" OnClick="btnPersonalLogin_Click"/>                      
                    </div>

                    <div class="btn2">
                        <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="btnPersonalRecord_Click"/>
                    </div>                    
                </div>
                
            </div>
                                
       
                    
             </form>
         </section>
</asp:Content>
