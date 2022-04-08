using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileTax
{
    public partial class AdminViewDSCRate1 : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["admin"] == null)
                {
                    Response.Redirect("login1.aspx");
                }

                fillGrid();
            }
        }

        public void fillGrid()
        {
            string sel = "select * from tbl_dscInfo order by Id desc";
            GridView1 = mod.fillgrid(GridView1, sel);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["id"] = GridView1.SelectedDataKey["Id"].ToString();
            string del = "Delete tbl_dscInfo where Id=" + Session["id"].ToString() + " ";
            mod.InsDelUp(del);
            fillGrid();
        }
    }
}