using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileTax
{
    public partial class service_desc : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btn_delete.Visible = false;
                btn_update.Visible = false;
                btn_save.Visible = true;
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

                string sel = "select * from tbl_services WHERE services='" + ddl_serviceName.Text + "' ";
                DataSet ds1 = mod.FillDs(sel);
                int len1 = ds1.Tables[0].Rows.Count;
                if (len1 > 0)
                {
                    lit_serviceId.Text = ds1.Tables[0].Rows[0]["Id"].ToString();
                }
            }
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            lit_msg.Text = "";
            if (ddl_serviceName.Text != "Select")
            {
                string str = "insert into tbl_service_desc(service_id,description) values('" + lit_serviceId.Text + "','" + txt_desc.Text + "')";
                mod.InsDelUp(str);
                showData();
                reset();
            }
            else
            {
                lit_msg.Text = "Please select service first";
            }

        }

        public void reset()
        {
            txt_desc.Text = "";
            btn_delete.Visible = false;
            btn_update.Visible = false;
            btn_save.Visible = true;
        }

        protected void ddl_serviceName_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sel = @"select * from tbl_services WHERE services='" + ddl_serviceName.Text + "' ";
            DataSet ds1 = mod.FillDs(sel);
            int len1 = ds1.Tables[0].Rows.Count;
            if(len1>0)
            {
                lit_serviceId.Text = ds1.Tables[0].Rows[0]["Id"].ToString();
            }

            fill_Grid();
        }
        public void fill_Grid()
        {
            string str = "select * from tbl_service_desc where service_id= '" + lit_serviceId.Text + "' ";
            DataSet ds = mod.FillDs(str);
            GridView1 = mod.fillgrid(GridView1, str);
        }

        public void showData()
        {
            string str = "select * from tbl_service_desc where service_id= '" + lit_serviceId.Text + "'  ";
            DataSet ds = mod.FillDs(str);
            GridView1 = mod.fillgrid(GridView1, str);
        }

        public void fill_form(string id)
        {
            string str = "select * from tbl_service_desc where Id='" + Session["Id"].ToString() + "'";
            DataSet ds = mod.FillDs(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                lit_serviceId.Text = ds.Tables[0].Rows[0]["service_id"].ToString();
                txt_desc.Text = ds.Tables[0].Rows[0]["description"].ToString();
                
            }
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            string str = "delete from tbl_service_desc where Id='" + Session["Id"].ToString() + "'";
            mod.InsDelUp(str);
            showData();
            reset();
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            string str = "update tbl_service_desc set description='" + txt_desc.Text + "' WHERE Id='" + Session["Id"].ToString() + "'";
            mod.InsDelUp(str);
            showData();
            reset();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Id"] = GridView1.SelectedDataKey["Id"].ToString();
            fill_form(Session["Id"].ToString());
            btn_delete.Visible = true;
            btn_update.Visible = true;
            btn_save.Visible = false;
        }
    }
}