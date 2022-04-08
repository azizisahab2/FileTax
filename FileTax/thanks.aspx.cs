using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileTax
{
    public partial class thanks : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        string cat;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "select * from tbl_dscInfo where dsc_id='" + Session["dsc_id"].ToString() + "' order by Id desc";
                DataSet ds = mod.FillDs(sel);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    lit_dscId.Text = ds.Tables[0].Rows[0]["dsc_id"].ToString();
                    lit_category.Text = ds.Tables[0].Rows[0]["category"].ToString();
                }
            }
        }

        protected void btnLnk_download_Click(object sender, EventArgs e)
        {
            string sel = "select * from tbl_dscInfo where dsc_id='" + Session["dsc_id"].ToString() + "' and category='Class 2'";
            DataSet ds = mod.FillDs(sel);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["dsc_id"] = lit_dscId.Text;
                Session["category"] = ds.Tables[0].Rows[0]["category"].ToString();
                Response.Redirect("DSC-pdf-invoice.aspx");
            }

            string sel1 = "select * from tbl_dscInfo where dsc_id='" + Session["dsc_id"].ToString() + "' and category='Class 3'";
            DataSet ds1 = mod.FillDs(sel1);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                Session["dsc_id"] = lit_dscId.Text;
                Session["category"] = ds1.Tables[0].Rows[0]["category"].ToString();
                Response.Redirect("DSC-pdf-invoice.aspx");
            }

            string sel2 = "select * from tbl_dscInfo where dsc_id='" + Session["dsc_id"].ToString() + "' and category='DGFT'";
            DataSet ds2 = mod.FillDs(sel2);
            if (ds2.Tables[0].Rows.Count > 0)
            {
                Session["dsc_id"] = lit_dscId.Text;
                Session["category"] = ds2.Tables[0].Rows[0]["category"].ToString();
                Response.Redirect("DSC-pdf-invoice.aspx");
            }

            string sel3 = "select * from tbl_dscInfo where dsc_id='" + Session["dsc_id"].ToString() + "' and category='NRI'";
            DataSet ds3 = mod.FillDs(sel3);
            if (ds3.Tables[0].Rows.Count > 0)
            {
                Session["dsc_id"] = lit_dscId.Text;
                Session["category"] = ds3.Tables[0].Rows[0]["category"].ToString();
                Response.Redirect("DSC-pdf-invoice.aspx");
            }
        }
    }
}