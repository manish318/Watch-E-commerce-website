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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            EShop_dao obj = new EShop_dao();

            var username = uName.Text;
            var phnno = phone_no.Text;
            var add = address.Text;
            var password = pwd.Text;
            if (username == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('Username shouldnt be empty.')</script>");
                
            }
            else if (username.Length <= 6)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('Username should be of atleast 6 character.')</script>");
                
            }
            else if (phnno == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('Phonenumber shouldnt be empty and should be of 10 digit.')</script>");
                
            }
            else if (phnno.Length != 10)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('Phonenumber should be of 10 digit.')</script>");
                
            }
            else if (pwd.Text != cpwd.Text)
            {
                showAlert("password doesnt match");
            }
            else if (password.Length < 6)
            {
                showAlert("password should be atleast 6 in length");
            }
            else
            {
                string sql = "EXEC Proc_Client @flag='InsertData'";
                sql = sql + ",@userName='" + username + "'";
                sql = sql + ",@phone_no='" + phnno + "'";
                sql = sql + ",@address='" + add + "'";
                sql = sql + ",@pwd='" + password + "'";

                DataSet ds = obj.ExecuteDataSet(sql);
                DataTable dt = ds.Tables[0];

                var code = ds.Tables[0].Rows[0]["code"].ToString();
                var msg = ds.Tables[0].Rows[0][1].ToString();
                if (code == "0")
                {

                    showAlert(msg);
                }
                else
                {
                    showAlert(msg);
                }
            }
        }
        public void showAlert(string message)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('" + message + "')</script>");
        }

    }
}