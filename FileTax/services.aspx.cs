using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileTax
{
    public partial class admin : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btn_delete.Visible = false;
                btn_submit.Visible = true;
                if (Session["admin"] == null)
                {
                    Response.Redirect("login.aspx");
                }
                showData();
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {            
            string str1 = "insert into tbl_services(services,image,service_url) values('" + txt_services.Text + "','"+ img_upload.FileName+ "','"+txt_url.Text+"')";
            mod.InsDelUp(str1);
            reset();
            showData();
        }

        public void reset()
        {
            txt_services.Text = "";
            txt_url.Text = "";
            btn_delete.Visible = false;
            btn_submit.Visible = true;
        }

        public void showData()
        {
            string str = "select * from tbl_services";
            DataSet ds = mod.FillDs(str);
            GridView1 = mod.fillgrid(GridView1, str);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["id"] = GridView1.SelectedDataKey["Id"].ToString();
            fill_form(Session["id"].ToString());
            btn_delete.Visible = true;
            btn_submit.Visible = false;
        }

        public void fill_form(string id)
        {
            string str = @"select * from tbl_services where Id='" + Session["id"].ToString() + "'";
            DataSet ds = mod.FillDs(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txt_services.Text = ds.Tables[0].Rows[0]["Services"].ToString();
                txt_url.Text=ds.Tables[0].Rows[0]["service_url"].ToString();
            }
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            string str = "delete from tbl_services where Id='" + Session["id"].ToString() + "'";
            mod.InsDelUp(str);
            showData();
            reset();
        }
    }
}