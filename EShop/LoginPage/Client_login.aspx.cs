using EShop.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EShop.LoginPage
{
    public partial class Client_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            EShop_dao obj = new EShop_dao();
            var username = uName.Text;
            var password = pwd.Text;

            string sql = "EXEC Proc_Client @flag='Login'";
            sql = sql + ",@userName='" + username + "'";
            sql = sql + ",@pwd='" + password + "'";
            DataSet ds = obj.ExecuteDataSet(sql);

            DataTable dt = ds.Tables[0];
            var code = ds.Tables[0].Rows[0]["code"].ToString();
            var msg = ds.Tables[0].Rows[0][1].ToString();
            if (code == "0")
            {
                Response.Redirect("/Dashboard/ClientIndex.aspx");
            }
            else
            {
                showAlert(msg);
            }

        }
        public void showAlert(string message)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('" + message + "')</script>");
        }
    }
}