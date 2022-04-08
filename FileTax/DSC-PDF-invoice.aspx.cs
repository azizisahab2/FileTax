using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileTax
{
    public partial class DSC_PDF_invoice : System.Web.UI.Page
    {
        Class1 mod = new Class1();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //lit_category.Text = "frm49A";

                string sel = "SELECT * FROM tbl_dscInfo WHERE dsc_id='" + Session["dsc_id"].ToString() + "' ";
                DataSet ds = mod.FillDs(sel);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    lit_category.Text = ds.Tables[0].Rows[0]["category"].ToString();
                    lit_name.Text = ds.Tables[0].Rows[0]["name"].ToString();
                    //lit_address.Text = ds.Tables[0].Rows[0]["address"].ToString();
                    lit_phone.Text = ds.Tables[0].Rows[0]["mobile"].ToString();
                    lit_gstin.Text = ds.Tables[0].Rows[0]["gstin"].ToString();
                }

                fill_instSheet();
            }
        }

        public void fill_instSheet()
        {
            string sel = "select * from tbl_instSheet WHERE category='" + lit_category.Text + "' order by Id asc";
            DataSet ds = mod.FillDs(sel);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                if (i == 0)
                {
                    lit_instSheetDesc1.Visible = true;
                    lit_instSheetDesc1.Text = ds.Tables[0].Rows[i]["description"].ToString();
                    lit_srNo1.Visible = true;
                }

                if (i == 1)
                {
                    lit_instSheetDesc2.Visible = true;
                    lit_instSheetDesc2.Text = ds.Tables[0].Rows[i]["description"].ToString();
                    lit_srNo2.Visible = true;
                }

                if (i == 2)
                {
                    lit_instSheetDesc3.Visible = true;
                    lit_instSheetDesc3.Text = ds.Tables[0].Rows[i]["description"].ToString();
                    lit_srNo3.Visible = true;
                }

                if (i == 3)
                {
                    lit_instSheetDesc4.Visible = true;
                    lit_instSheetDesc4.Text = ds.Tables[0].Rows[i]["description"].ToString();
                    lit_srNo4.Visible = true;
                }

                if (i == 4)
                {
                    lit_instSheetDesc5.Visible = true;
                    lit_instSheetDesc5.Text = ds.Tables[0].Rows[i]["description"].ToString();
                    lit_srNo5.Visible = true;
                }

                if (i == 5)
                {
                    lit_instSheetDesc6.Visible = true;
                    lit_instSheetDesc6.Text = ds.Tables[0].Rows[i]["description"].ToString();
                    lit_srNo6.Visible = true;
                }

                if (i == 6)
                {
                    lit_instSheetDesc7.Visible = true;
                    lit_instSheetDesc7.Text = ds.Tables[0].Rows[i]["description"].ToString();
                    lit_srNo7.Visible = true;
                }

                //if (i == 7)
                //{
                //    lit_instSheetDesc8.Text = ds.Tables[0].Rows[i]["description"].ToString();
                //    lit_srNo1.Visible = true;
                //}

                //if (i == 8)
                //{
                //    lit_instSheetDesc9.Text = ds.Tables[0].Rows[i]["description"].ToString();
                //    lit_srNo1.Visible = true;
                //}

                //if (i == 9)
                //{
                //    lit_instSheetDesc10.Text = ds.Tables[0].Rows[i]["description"].ToString();
                //    lit_srNo1.Visible = true;
                //}
            }
        }
    }
}