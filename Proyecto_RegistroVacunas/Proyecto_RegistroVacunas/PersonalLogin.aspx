<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonalLogin.aspx.cs" Inherits="Proyecto_RegistroVacunas.PersonalLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style type="text/css">
        *{
         margin: 0;
         padding: 0%;
         box-sizing: border-box;
         }

         body{
         background: #014663;
         }

         header{
         text-align: center;
         top: 10px;
         color: white;
         }

         .form_register{
         width: 400px;
         background: #014663;
         padding: 30px;
         margin: auto;
         margin-top: 100px;
         border-radius: 4px;
         font-family: 'calibri';
         color: white;
         box-shadow: 7px 13px 37px #000;
         }

         .title{
         font-size: 22px;
         margin-bottom: 20px;
         color:white;
         }

         .controls{
         width: 100%;
         background: #014663;
         padding: 10px;
         border-radius: 4px;
         margin-bottom: 16px;
         border: 1px solid;
         font-family: 'calibri';
         font-size: 18px;
         color: white;
         }

         .button{
         width: 100%;
         background: #1f53c5;
         border: none;
         border-radius: 4px;
         flex-grow: initial;
         padding: 12px;
         color: white;
         margin: 16px 0;
         font-size: 16px;
         font-family: 'calibri';
         text-decoration: white;
         line-height: 40px;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <header>
            <asp:Label ID="Label2" runat="server" Text="Hospital Centinela"></asp:Label>
        </header>

        <section class="form-register">
             <asp:Label class="title" runat="server" Text="Inicio de Sesion Para Personal"></asp:Label>
            <div class="controls">
                <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label><br />
             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
             <asp:Label ID="Label4" runat="server" Text="Correo Electronico:"></asp:Label><br />
             <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
             <asp:Label ID="Label7" runat="server" Text="Contraseña:"></asp:Label><br />
             <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
            </div>
             
            <div class="button">
                <asp:Button ID="Button2" runat="server" Text="Registrar" OnClick="btnPersonalRecord_Click"/>
                <asp:Button ID="Button1" runat="server" Text="Iniciar Sesion" OnClick="btnPersonalLogin_Click"/><br />
            </div>
             
        </section>

       
       
    </form>
</asp:Content>
