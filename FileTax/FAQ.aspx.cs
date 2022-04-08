using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

namespace FileTax
{
    public partial class FAQ : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        public static string ch= "'";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
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
                showData();
            }            
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            
            lit_msg.Text = "";
            if (ddl_serviceName.Text != "Select Service")
            {                
                string str = "insert into tbl_FAQ(service_id,question,answer) values('" + lit_serviceId.Text + "','" + txt_question.Text.Replace("'", @"[%]") + "','" + txt_answer.Text.Replace("'", @"[%]") + "')";
                mod.InsDelUp(str);
                showData();
                reset();
            }
            else
            {
                lit_msg.Text = "Please select service";
            } 
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            string str = "update tbl_FAQ set question='" + txt_question.Text.Replace("'", @"[%]") + "',answer='" + txt_answer.Text.Replace("'", @"[%]") + "' WHERE Id='" + Session["id"].ToString() + "'";
            mod.InsDelUp(str);
            showData();
            reset();
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            string str = "delete from tbl_FAQ where Id='" + Session["id"].ToString() + "'";
            mod.InsDelUp(str);
            showData();
            reset();
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

            showData();
        }

        public void showData()
        {
            string str = "select * from tbl_FAQ where service_id= '" + lit_serviceId.Text + "' ";
            GridView1 = mod.fillgrid(GridView1, str);
        }
        
        public void reset()
        {
            txt_answer.Text = "";
            txt_question.Text = "";
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
            string str = "select * from tbl_FAQ where Id='" + Session["id"].ToString() + "'";
            DataSet ds = mod.FillDs(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                lit_serviceId.Text = ds.Tables[0].Rows[0]["service_id"].ToString();
                txt_question.Text = ds.Tables[0].Rows[0]["question"].ToString();
                txt_answer.Text = ds.Tables[0].Rows[0]["answer"].ToString();
            }
        }        
    }
}