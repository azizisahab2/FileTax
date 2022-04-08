using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileTax
{
    public partial class package_services : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        public static string ch = "'";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                btn_save.Visible = true;
                btn_update.Visible = false;
                btn_delete.Visible = false;
                if (Session["admin"] == null)
                {
                    Response.Redirect("login.aspx");
                }
                string str = "select * from tbl_services";
                DataSet ds = mod.FillDs(str);
                int len = ds.Tables[0].Rows.Count;
                ddl_serviceName.Items.Add("Select");
                for (int i = 0; i < len; i++)
                {
                    ddl_serviceName.Items.Add(ds.Tables[0].Rows[i]["services"].ToString());
                }
                ddl_serviceName.SelectedIndex = 0;
                string sel = @"select * from tbl_services WHERE services='" + ddl_serviceName.Text + "' ";
                DataSet ds1 = mod.FillDs(sel);
                int len1 = ds1.Tables[0].Rows.Count;
                if (len1 > 0)
                {
                    lit_serviceId.Text = ds1.Tables[0].Rows[0]["Id"].ToString();
                }
            }
        }

        protected void ddl_serviceName_SelectedIndexChanged(object sender, EventArgs e)
        {
            lit_packageId.Text = "";
            ddl_package.SelectedIndex = 0;
            string sel = @"select * from tbl_services WHERE services='" + ddl_serviceName.Text + "' ";
            DataSet ds1 = mod.FillDs(sel);
            int len1 = ds1.Tables[0].Rows.Count;
            if (len1 > 0)
            {
                lit_serviceId.Text = ds1.Tables[0].Rows[0]["Id"].ToString();
            }
            else
            {
                lit_serviceId.Text = "";
            }
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            lit_msg.Text = "";

            if (ddl_serviceName.Text != "Select" )
            {
                if (ddl_package.Text != "Select")
                {
                    string str = "insert into tbl_package_service(package_id,service_id,service_text) values('" + lit_packageId.Text + "','" + lit_serviceId.Text + "','" + txt_text.Text.Replace("'", @"[%]") + "')";
                    mod.InsDelUp(str);
                    showData();
                    reset();
                }
                else
                {
                    lit_msg.Text = "Please select package first";
                }
            }
            else
            {
                lit_msg.Text = "Please select service first";
            }
        }

        public void showData()
        {
            string str = "select * from tbl_package_service where service_id= '" + lit_serviceId.Text + "' and package_id='" + lit_packageId.Text + "'  ";
            DataSet ds = mod.FillDs(str);
            GridView1 = mod.fillgrid(GridView1, str);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["id"] = GridView1.SelectedDataKey["Id"].ToString();
            fill_form(Session["id"].ToString());
            btn_save.Visible = false;
            btn_update.Visible = true;
            btn_delete.Visible = true;
        }
        public void fill_form(string id)
        {
            string str = "select * from tbl_package_service where Id='" + Session["id"].ToString() + "'";
            DataSet ds = mod.FillDs(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                lit_serviceId.Text = ds.Tables[0].Rows[0]["service_id"].ToString();
                lit_packageId.Text = ds.Tables[0].Rows[0]["package_id"].ToString();
                txt_text.Text = ds.Tables[0].Rows[0]["service_text"].ToString();
            }
        }

        protected void ddl_package_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sel = "select * from tbl_package where service_id= '" + lit_serviceId.Text+"' and package_type='" + ddl_package.Text + "'  ";
            DataSet ds2 = mod.FillDs(sel);
            int len2 = ds2.Tables[0].Rows.Count;
            if (len2 > 0)
            {
                lit_packageId.Text = ds2.Tables[0].Rows[0]["Id"].ToString();
            }
            else
            {
                lit_packageId.Text = "";
            }
            showData();
        }
        public void reset()
        {
            txt_text.Text = " ";
            btn_save.Visible = true;
            btn_update.Visible = false;
            btn_delete.Visible = false;
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            string str = "delete from tbl_package_service where Id='" + Session["id"].ToString() + "'";
            mod.InsDelUp(str);
            showData();
            reset();
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            string str = "update tbl_package_service set service_text='" + txt_text.Text.Replace("'", @"[%]") + "' WHERE Id='" + Session["id"].ToString() + "'";
            mod.InsDelUp(str);
            showData();
            reset();
        }
    }
}