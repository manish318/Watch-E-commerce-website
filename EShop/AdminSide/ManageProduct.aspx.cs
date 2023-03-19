﻿using EShop.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EShop.AdminSide
{
    public partial class ManageAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Getmethod();
            }
        }

        private void Getmethod()
        {
            EShop_dao obj = new EShop_dao();

            string sql = "EXEC View_product @flag='SelectData'";
            DataSet ds = obj.ExecuteDataSet(sql);

            adminlist.DataSource = ds.Tables[0];
            adminlist.DataBind();
        }

        protected void adminlist_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(adminlist.DataKeys[e.RowIndex].Value);
            EShop_dao obj = new EShop_dao();

            string sql = "Exec Product_Delete @flag='DeleteData'";
            sql = sql + ",@pId='" + id + "'";

            obj.ExecuteDataSet(sql);

            Getmethod();
        }

        protected void adminlist_RowEditing(object sender, GridViewEditEventArgs e)
        {
            adminlist.EditIndex = e.NewEditIndex;
            Getmethod();
        }

        protected void adminlist_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            adminlist.EditIndex = -1;
            Getmethod();
        }

        protected void adminlist_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            EShop_dao obj = new EShop_dao();

            int id = Convert.ToInt32(adminlist.DataKeys[e.RowIndex].Value);
            var productname = (adminlist.Rows[e.RowIndex].FindControl("pname") as TextBox).Text;
            var Price = (adminlist.Rows[e.RowIndex].FindControl("price") as TextBox).Text;
            var description = (adminlist.Rows[e.RowIndex].FindControl("desc") as TextBox).Text;
            
            


            string sql = "Exec Update_Product @flag='UpdateData'";
            sql = sql + ",@pId='" + id + "'";
            sql = sql + ",@pName='" + productname + "'";
            sql = sql + ",@pDesc='" + description + "'";
            sql = sql + ",@pPrice='" + Price + "'";



            obj.ExecuteDataSet(sql);

            adminlist.EditIndex = -1;

            Getmethod();
        }


    }
}