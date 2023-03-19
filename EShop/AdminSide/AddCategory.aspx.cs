using EShop.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EShop.AdminSide
{
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void imgBtn_Click(object sender, EventArgs e)
        {
            EShop_dao obj = new EShop_dao();
            if (FileUpload1.HasFile)
            {
                var Cname = cname.Text;
                var Isactive = isAct.Text;
                var Isdelete = isDel.Text;



                string filename = FileUpload1.PostedFile.FileName;
                string filepath = "Image/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Image/") + filename);

                //var Pimg = FileUpload1.filepath;
                string sql = "EXEC Insert_Category @flag='InsertCategory' ";
                sql = sql + ",@Cname='" + Cname + "'";
                sql = sql + ",@image='" + filepath + "'";
                sql = sql + ",@Isactive='" + Isactive + "'";
                sql = sql + ",@Isdelete='" + Isdelete + "'";
                

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