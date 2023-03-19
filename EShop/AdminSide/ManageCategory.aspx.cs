﻿using EShop.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EShop.AdminSide
{
    public partial class ManageCategory : System.Web.UI.Page
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

            string sql = "EXEC View_Category @flag='SelectData'";
            DataSet ds = obj.ExecuteDataSet(sql);

            adminlist.DataSource = ds.Tables[0];
            adminlist.DataBind();
        }

        protected void adminlist_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(adminlist.DataKeys[e.RowIndex].Value);
            EShop_dao obj = new EShop_dao();

            string sql = "Exec Category_Delete @flag='DeleteData' ";
            sql = sql + ",@rowid='" + id + "'";

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
            var cname = (adminlist.Rows[e.RowIndex].FindControl("cname") as TextBox).Text;
            var Isactive = (adminlist.Rows[e.RowIndex].FindControl("isactive") as TextBox).Text;
            var Isdelete = (adminlist.Rows[e.RowIndex].FindControl("isdel") as TextBox).Text;


            string sql = "Exec Update_Category @flag='UpdateData'";
            sql = sql + ",@rowId='" + id + "'";
            sql = sql + ",@Cname='" + cname + "'";
            sql = sql + ",@isactive='" + Isactive + "'";
            sql = sql + ",@isdelete='" + Isdelete + "'";



            obj.ExecuteDataSet(sql);

            adminlist.EditIndex = -1;

            Getmethod();
        }
    }
}
