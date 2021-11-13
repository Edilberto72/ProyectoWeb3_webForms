using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;
using PdfSharp;
using PdfSharp.Pdf;
using PdfSharp.Drawing;
using PdfSharp.Drawing.Layout;
using Proyecto_RegistroVacunas.Models;
using iTextSharp.text.pdf;

namespace Proyecto_RegistroVacunas.Services
{
    public class EmailSender
    {
        public User Addressee { get; set; }
        private string SenderEmail { get; set; }
        public string SenderPassword { get; set; }

        public EmailSender(User addressee)
        {
            Addressee = addressee; // usuario al que se enviará el correo
            SenderEmail = ""; // correo que hará el envío, el correo debe tener habilitado el uso para aplicaciones no seguras
            SenderPassword = ""; // contraseña del correo que hacer el envío
        }

        public void SendAppointmentConfirmationEmail()
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(SenderEmail);
            msg.To.Add(new MailAddress(Addressee.email));
            msg.Subject = "Cita para vacunación confirmada";
            msg.Body = "La cita para su vacuna se ha registrado exitosamente.";

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new NetworkCredential(SenderEmail, SenderPassword);
            smtp.EnableSsl = true;

            smtp.Send(msg);
        }

        public void SendCertificateEmail(string path)
        {
            //string path = Server.MapPath("~/Certificate.pdf");
            // el path tiene que ser relativo a la carpeta del proyecto,
            // se lo obtiene con Server.MapPath y colocando el nombre del archivo entr los parentesis
            // pero solo se puede usar ese metodo desde un .aspx.cs
            // por lo que el path se recibira como argumento

            PdfDocument document = new PdfDocument();
            PdfPage page = document.AddPage();
            page.Size = PageSize.A4;
            page.Orientation = PageOrientation.Landscape;
            XFont xfont = new XFont("Arial", 14, XFontStyle.Regular);
            XGraphics gfx = XGraphics.FromPdfPage(page);

            XRect rect = new XRect(35, 35, 585, 20);
            gfx.DrawString("Certificado de vacunacion", xfont, XBrushes.Black, rect, XStringFormats.TopLeft);

            String text = "Nombre: " + Addressee.name +
                "\nApellidos: " + Addressee.lastName + " " + Addressee.secondLastName +
                "\nRecibió la primera dosis de vacunacion";

            XTextFormatter formatter = new XTextFormatter(gfx);
            formatter.Alignment = XParagraphAlignment.Justify;
            rect = new XRect(35, 60, 600, 60);
            formatter.DrawString(text, xfont, XBrushes.Black, rect);
            document.Save(path);


            MailMessage msg = new MailMessage();
            msg.Attachments.Add(new Attachment(path));
            msg.From = new MailAddress(SenderEmail, "Centro de vacunacion");
            msg.To.Add(new MailAddress(Addressee.email));
            msg.Subject = "Certificado de vacunacion";
            msg.Body = "Se adjunta el certificado";

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new NetworkCredential(SenderEmail, SenderPassword);
            smtp.EnableSsl = true;
            smtp.Send(msg);
        }
    }
}