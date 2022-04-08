using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileTax
{
    public partial class admin1 : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        public static string ch = "'";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btn_delete.Visible = false;
                btn_update.Visible = false;
                btn_save.Visible = true;
                if (Session["admin"] == null)
                {
                    Response.Redirect("login1.aspx");
                }

                string str = @"select * from tbl_services";
                DataSet ds = mod.FillDs(str);
                int len = ds.Tables[0].Rows.Count;
                for (int i = 0; i < len; i++)
                {
                    ddl_serviceName.Items.Add(ds.Tables[0].Rows[i]["services"].ToString());               
                }

                string sel = @"select * from tbl_services WHERE services='" + ddl_serviceName.Text + "' ";
                DataSet ds1 = mod.FillDs(sel);
                int len1 = ds1.Tables[0].Rows.Count;
                if (len1 > 0)
                {
                    lit_serviceId.Text = ds1.Tables[0].Rows[0]["Id"].ToString();
                }
            }
            showData();
        }

        protected void ddl_serviceName_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sel = @"select * from tbl_services WHERE services='" + ddl_serviceName.Text + "' ";
            DataSet ds1 = mod.FillDs(sel);
            int len1 = ds1.Tables[0].Rows.Count;
            if (len1 > 0)
            {
                lit_serviceId.Text = ds1.Tables[0].Rows[0]["Id"].ToString();
            }
        }

        public void showData()
        {
            string str = "select * from tbl_package where service_name= '" + ddl_serviceName.Text + "' and package_type='" + ddl_package.Text + "'  ";
            DataSet ds = mod.FillDs(str);
            GridView1= mod.fillgrid(GridView1,str);
        }

        public void reset()
        {
            txt_text.Text = "";
            txt_price.Text = "";
            btn_delete.Visible = false;
            btn_update.Visible = false;
            btn_save.Visible = true;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["id"] = GridView1.SelectedDataKey["Id"].ToString();
            fill_form(Session["id"].ToString());
            btn_delete.Visible = true;
            btn_update.Visible = true;
            btn_save.Visible = false;
        }

        public void fill_form(string id)
        {
            string str="select * from tbl_package where Id='"+ Session["id"].ToString() + "'";
            DataSet ds = mod.FillDs(str);
            if(ds.Tables[0].Rows.Count>0)
            {
                ddl_serviceName.Text = ds.Tables[0].Rows[0]["service_name"].ToString();
                ddl_package.Text = ds.Tables[0].Rows[0]["package_type"].ToString();
                txt_text.Text = ds.Tables[0].Rows[0]["package_text"].ToString();
                txt_price.Text = ds.Tables[0].Rows[0]["price"].ToString();
            }
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            lit_msg.Text = "";
            if(ddl_serviceName.Text!="Select Service")
            {
                if(ddl_package.Text!="Select Package")
                {
                    string str = "insert into tbl_package(service_id, service_name, package_type, package_text, price) values('" + lit_serviceId.Text + "', '" + ddl_serviceName.Text + "', '" + ddl_package.Text + "', '" + txt_text.Text.Replace("'", @"[%]") + "', '" + txt_price.Text + "')";
                    mod.InsDelUp(str);
                    showData();
                    reset();
                }
                else
                {
                    lit_msg.Text = "Please select package";
                }
            }
            else
            {
                lit_msg.Text = "Please select service";
            }
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            string str = "delete from tbl_package where Id='" + Session["id"].ToString() + "'";
            mod.InsDelUp(str);
            showData();
            reset();
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            string str = "update tbl_package set package_text='" + txt_text.Text.Replace("'", @"[%]") + "',price='" + txt_price.Text + "' WHERE Id='" + Session["id"].ToString() + "'";
            mod.InsDelUp(str);
            showData();
            reset();
        }
    }
}