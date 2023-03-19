using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EShop.Dashboard
{
    public partial class ClientIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cartButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("../ClientSide/AddToCart.aspx");
        }
    }
}