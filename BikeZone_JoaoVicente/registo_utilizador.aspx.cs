using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BikeZone_JoaoVicente
{
    public partial class registo_utilizador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void btn_registo_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["BikeZoneConnectionString3"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();
            myCommand.Parameters.AddWithValue("@util", tb_email.Text);
            myCommand.Parameters.AddWithValue("@pw", EncryptString(tb_pass.Text));

            SqlParameter devolucao = new SqlParameter();

            devolucao.ParameterName = "@retorno";
            devolucao.Direction = System.Data.ParameterDirection.Output;
            devolucao.SqlDbType = System.Data.SqlDbType.Int;
            myCommand.Parameters.Add(devolucao);


            myCommand.CommandType = System.Data.CommandType.StoredProcedure;
            myCommand.CommandText = "inserir_user";

            myCommand.Connection = myConn;
            myConn.Open();
            myCommand.ExecuteNonQuery();
            int valor = Convert.ToInt32(myCommand.Parameters["@retorno"].Value);
            myConn.Close();

            if (valor == 1)
            {
                lbl_msg.Text = "Criado com sucesso!";
                Response.Redirect("login.aspx");
            }
            else
            {
                lbl_msg.Text = "Utilizador já existe!";
                
            }
        }
    }
}