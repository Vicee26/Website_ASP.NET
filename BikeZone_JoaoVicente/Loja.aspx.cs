using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BikeZone_JoaoVicente
{
    public partial class LojaTeste : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["utilizador"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            Session["produtos"] = Session["produtos"];
        }

        protected void ddl_tipo_SelectedIndexChanged1(object sender, EventArgs e)
        {
            ddl_marca.Items.Clear();
            ddl_marca.Items.Add(new ListItem("---", ""));
            ddl_modelo.Items.Clear();
            

            if (ddl_tipo.SelectedItem.ToString() == "BTT")
            {
                ddl_marca.Items.Add("CANNONDALE");
                ddl_marca.Items.Add("SCOTT");
                ddl_marca.Items.Add("GIANT");
            }
            else if (ddl_tipo.SelectedItem.ToString() == "BMX")
            {
                ddl_marca.Items.Add("CANNONDALE");
                ddl_marca.Items.Add("SCOTT");
                ddl_marca.Items.Add("COLEUR");
            }
            else if (ddl_tipo.SelectedItem.ToString() == "Elétricas")
            {
                ddl_marca.Items.Add("RIVERSIDE");
                ddl_marca.Items.Add("ROCKRIDER");
                ddl_marca.Items.Add("BTWIN");
            }
            else if (ddl_tipo.SelectedItem.ToString() == "Trotinetes")
            {
                ddl_marca.Items.Add("XIAOMI");
                ddl_marca.Items.Add("SEGWAY");
                ddl_marca.Items.Add("CECOTEC");
            }
        }

        protected void ddl_marca_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddl_modelo.Items.Clear();
            ddl_modelo.Items.Add(new ListItem("---", ""));

            //BTT
            if (ddl_tipo.SelectedItem.ToString() == "BTT" && ddl_marca.SelectedItem.ToString() == "CANNONDALE")
            {
                ddl_modelo.Items.Add("MOTERRA NEO S2 QUICKSAND");
                ddl_modelo.Items.Add("MOTERRA NEO CRB LT2");
                ddl_modelo.Items.Add("SCALPEL HT CARBON 4");
                ddl_modelo.Items.Add("JEKYLL 2");
            }
            else if (ddl_tipo.SelectedItem.ToString() == "BTT" && ddl_marca.SelectedItem.ToString() == "SCOTT")
            {
                ddl_modelo.Items.Add("ASPECT 970");
                ddl_modelo.Items.Add("SCALE 980");
                ddl_modelo.Items.Add("ASPECT 750");
            }
            else if (ddl_tipo.SelectedItem.ToString() == "BTT" && ddl_marca.SelectedItem.ToString() == "GIANT")
            {
                ddl_modelo.Items.Add("TRANCE X 29 2");
                ddl_modelo.Items.Add("REIGN 2");
            }
            //BMX
            else if (ddl_tipo.SelectedItem.ToString() == "BMX" && ddl_marca.SelectedItem.ToString() == "CANNONDALE")
            {
                ddl_modelo.Items.Add("DAVE");
            }
            else if (ddl_tipo.SelectedItem.ToString() == "BMX" && ddl_marca.SelectedItem.ToString() == "SCOTT")
            {
                ddl_modelo.Items.Add("ROXTER YZ 0.1");
                ddl_modelo.Items.Add("VOLTAGE YZ 0.1");
            }
            else if (ddl_tipo.SelectedItem.ToString() == "BMX" && ddl_marca.SelectedItem.ToString() == "COLEUR")
            {
                ddl_modelo.Items.Add("ROCKBAND AZUL");
            }
            //Elétricas
            else if (ddl_tipo.SelectedItem.ToString() == "Elétricas" && ddl_marca.SelectedItem.ToString() == "RIVERSIDE")
            {
                ddl_modelo.Items.Add("100 E");
                ddl_modelo.Items.Add("500 E");
                ddl_modelo.Items.Add("920 E");
                ddl_modelo.Items.Add("540 E");
            }
            else if (ddl_tipo.SelectedItem.ToString() == "Elétricas" && ddl_marca.SelectedItem.ToString() == "ROCKRIDER")
            {
                ddl_modelo.Items.Add("E-EXPL 700");
                ddl_modelo.Items.Add("E-ST 500");
                ddl_modelo.Items.Add("E-EXPL 520");
            }
            else if (ddl_tipo.SelectedItem.ToString() == "Elétricas" && ddl_marca.SelectedItem.ToString() == "BTWIN")
            {
                ddl_modelo.Items.Add("LONGTRAIL R500E");
                ddl_modelo.Items.Add("LD 920 E");
                ddl_modelo.Items.Add("FOLD 100");
                ddl_modelo.Items.Add("FOLD 500");
            }
            //Trotinetes
            else if (ddl_tipo.SelectedItem.ToString() == "Trotinetes" && ddl_marca.SelectedItem.ToString() == "XIAOMI")
            {
                ddl_modelo.Items.Add("4 ULTRA");
                ddl_modelo.Items.Add("4 PRO");
                ddl_modelo.Items.Add("4 GO");
                ddl_modelo.Items.Add("4 LITE");
            }
            else if (ddl_tipo.SelectedItem.ToString() == "Trotinetes" && ddl_marca.SelectedItem.ToString() == "SEGWAY")
            {
                ddl_modelo.Items.Add("F65I");
                ddl_modelo.Items.Add("MAX G30E II");
                ddl_modelo.Items.Add("F2 PLUS");
                ddl_modelo.Items.Add("E2 PRO");
            }
            else if (ddl_tipo.SelectedItem.ToString() == "Trotinetes" && ddl_marca.SelectedItem.ToString() == "CECOTEC")
            {
                ddl_modelo.Items.Add("Z CITY");
                ddl_modelo.Items.Add("Z POWER MOUNTAIN");
                ddl_modelo.Items.Add("Z MOUNTAIN");
                ddl_modelo.Items.Add("SERIE Y65");
                ddl_modelo.Items.Add("D40 XL CONNECTED");
            }


        }

        protected void btn_cart_Click(object sender, ImageClickEventArgs e)
        {
            String novoProd = "";

            if(ddl_tipo.SelectedItem.ToString() != null && ddl_tipo.SelectedItem.ToString() != "---" && ddl_marca.SelectedItem.ToString() != null && ddl_marca.SelectedItem.ToString() != "---" && ddl_modelo.SelectedItem.ToString() != null && ddl_modelo.SelectedItem.ToString() != "---")
            {

                novoProd = "Produto: " + ddl_tipo.SelectedItem.ToString() + " - " + ddl_marca.SelectedItem.ToString() + " - " + ddl_modelo.SelectedItem.ToString();
                if (Session["produtos"] == null )
                {
                    Session["produtos"] = novoProd;
                    lbl_prod.Text = "Produtos no Carrinho";
                    lbl_cart.Text = Session["produtos"].ToString();
                }
                else
                {
                    Session["produtos"] = $"{Session["produtos"]} \n {novoProd}";
                    lbl_prod.Text = "Produtos no Carrinho";
                    lbl_cart.Text = Session["produtos"].ToString();
                }

            }
            
        }

        protected void btn_enviar_Click(object sender, EventArgs e)
        {
            Session["utilizador"] = Session["utilizador"];

            Session["nome"] = tb_nome.Text;
            Session["morada"] = tb_morada.Text;
            Session["email"] = tb_email.Text;
            Session["codigo postal"] = tb_codPost.Text;
            Session["genero"] = RB_gender.Text;
            Session["dtNasc"] = tb_dtNasc.Text;

            Response.Redirect("final.aspx");
        }
    }
}