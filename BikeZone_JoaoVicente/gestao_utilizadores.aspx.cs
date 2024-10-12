using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BikeZone_JoaoVicente
{
    public partial class gestao_utilizadores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["utilizador"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

    }
}