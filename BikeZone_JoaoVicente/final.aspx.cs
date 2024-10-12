using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BikeZone_JoaoVicente
{
    public partial class final : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["utilizador"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            lbl_nome.Text = Session["nome"].ToString();
            lbl_morada.Text = Session["morada"].ToString();
            lbl_email.Text = Session["email"].ToString();
            lbl_codPost.Text = Session["codigo postal"].ToString();
            lbl_dtNasc.Text = Session["dtNasc"].ToString();
            lbl_gender.Text = Session["genero"].ToString();
            lbl_produtos.Text = Session["produtos"].ToString();
        }

        protected void btn_pdf_Click(object sender, ImageClickEventArgs e)
        {
            string caminhoTemplate = "C:\\Users\\joaov\\Desktop\\Atec\\5420\\BikeZone_JoaoVicente\\BikeZone_JoaoVicente\\PDF\\BikeZone_Template.pdf";
            
            string nomePDF = "Encomenda "+ Session["nome"] + "-" + EncryptString(DateTime.Now.ToString()) + ".pdf";

            string newFile = $"C:\\Users\\joaov\\Desktop\\Atec\\5420\\BikeZone_JoaoVicente\\BikeZone_JoaoVicente\\PDF\\{nomePDF}";


            PdfReader pdfReader = new PdfReader(caminhoTemplate);

            PdfStamper stamper = new PdfStamper(pdfReader, new FileStream(newFile, FileMode.Create));

            AcroFields campos = stamper.AcroFields;

            campos.SetField("nome", Session["nome"].ToString());
            campos.SetField("morada", Session["morada"].ToString());
            campos.SetField("email", Session["email"].ToString());
            campos.SetField("codPost", Session["codigo postal"].ToString());
            campos.SetField("dtNasc", Session["dtNasc"].ToString());
            campos.SetField("gender", Session["genero"].ToString());
            campos.SetField("produtos", Session["produtos"].ToString());


            stamper.Close();
        }

        protected void btn_excel_Click(object sender, ImageClickEventArgs e)
        {
            Response.Clear();
            Response.AddHeader("Content-Disposition", "attachment; filename=BikeZone - Produtos.xls");
            Response.ContentType = "application/vnd.ms-excel";
            Response.BinaryWrite(System.Text.Encoding.UTF8.GetPreamble());

            StringWriter sw = new StringWriter();
            HtmlTextWriter writer = new HtmlTextWriter(sw);

            writer.Write($"<table><tr>" +
                $"<tr><td><b>Nome:</b></td><td>{Session["nome"]}</td></tr>" +
                $"<tr><td><b>Morada:</b></td><td>{Session["morada"]}</td></tr>" +
                $"<tr><td><b>Email:</b></td><td>{Session["email"]}</td></tr>" +
                $"<tr><td><b>Código Postal:</b></td><td>{Session["codigo postal"]}</td></tr>" +
                $"<tr><td><b>Data de Nascimento:</b></td><td>{Session["dtNasc"]}</td></tr>" +
                $"<tr><td><b>Género:</b></td><td>{Session["genero"]}</td></tr>" +
                $"<tr><td><b>Produtos:</b></td><td>{Session["produtos"]}</td>" +
                $"</tr></table>");

            Response.Write(sw.ToString());
            Response.End();
        }


        public static string EncryptString(string Message)
        {
            string Passphrase = "atec";
            byte[] Results;
            System.Text.UTF8Encoding UTF8 = new System.Text.UTF8Encoding();

            // Step 1. We hash the passphrase using MD5
            // We use the MD5 hash generator as the result is a 128 bit byte array
            // which is a valid length for the TripleDES encoder we use below

            MD5CryptoServiceProvider HashProvider = new MD5CryptoServiceProvider();
            byte[] TDESKey = HashProvider.ComputeHash(UTF8.GetBytes(Passphrase));

            // Step 2. Create a new TripleDESCryptoServiceProvider object
            TripleDESCryptoServiceProvider TDESAlgorithm = new TripleDESCryptoServiceProvider();

            // Step 3. Setup the encoder
            TDESAlgorithm.Key = TDESKey;
            TDESAlgorithm.Mode = CipherMode.ECB;
            TDESAlgorithm.Padding = PaddingMode.PKCS7;

            // Step 4. Convert the input string to a byte[]
            byte[] DataToEncrypt = UTF8.GetBytes(Message);

            // Step 5. Attempt to encrypt the string
            try
            {
                ICryptoTransform Encryptor = TDESAlgorithm.CreateEncryptor();
                Results = Encryptor.TransformFinalBlock(DataToEncrypt, 0, DataToEncrypt.Length);
            }
            finally
            {
                // Clear the TripleDes and Hashprovider services of any sensitive information
                TDESAlgorithm.Clear();
                HashProvider.Clear();
            }

            // Step 6. Return the encrypted string as a base64 encoded string

            string enc = Convert.ToBase64String(Results);
            enc = enc.Replace("+", "KKK");
            enc = enc.Replace("/", "JJJ");
            enc = enc.Replace("\\", "III");
            return enc;
        }
    }
}