using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileTax
{
    public partial class Test_FAQ : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        public static string ch = "'";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
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
                //showData();
                fill_repFAQ();
            }
        }

        protected void ddl_serviceName_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sel = @"select * from tbl_services WHERE services='" + ddl_serviceName.Text + "' ";
            DataSet ds1 = mod.FillDs(sel);
            int len1 = ds1.Tables[0].Rows.Count;
            if (len1 > 0)
            {
                lit_serviceId.Text = ds1.Tables[0].Rows[0]["Id"].ToString();
                lit_faq.Text = ds1.Tables[0].Rows[0]["services"].ToString();
            }
            fill_repFAQ();
        }

        public void fill_repFAQ()
        {
            string sel = "select * from tbl_FAQ WHERE service_id='" + lit_serviceId.Text + "'";           
            RepeaterFAQ = mod.fillrepeater(RepeaterFAQ, sel);
        }
    }
}