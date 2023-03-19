using EShop.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EShop.AdminSide
{
    public partial class AddProduct : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgBtn_Click(object sender, EventArgs e)
        {
            EShop_dao obj = new EShop_dao();
            if (FileUpload1.HasFile)
            {
                var Pname = pname.Text;
                var Pdesc = pdesc.Text;
                var Pprice = pprice.Text;
                var pcate = pcat.Text;
          

                string filename = FileUpload1.PostedFile.FileName;
                string filepath = "Image/" + FileUpload1.FileName;
                
                //FileUpload1.PostedFile.SaveAs(Server.MapPath("~/AdminSide/Image/") + filename);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Image/") + filename);

            
                string sql = "EXEC Product_Proc @flag='InsertProduct' ";
                sql = sql + ",@pName='" + Pname + "'";
                sql = sql + ",@pDesc='" + Pdesc + "'";
                sql = sql + ",@pPrice='" + Pprice + "'";
                sql = sql + ",@pCate='" + pcate + "'";
                sql = sql + ",@pImg='" + filepath + "'";

                DataSet ds = obj.ExecuteDataSet(sql);
                DataTable dt = ds.Tables[0];

                var code = ds.Tables[0].Rows[0]["code"].ToString();
                var msg = ds.Tables[0].Rows[0][1].ToString();
                if (code == "0")
                {
                    Response.Redirect("/AdminSide/ManageAdmin.aspx");
                    showAlert(msg);
                }
                else
                {
                    showAlert(msg);
                }
            }
            void showAlert(string message)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('" + message + "')</script>");
            }

        }
    }
}