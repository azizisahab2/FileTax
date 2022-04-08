using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileTax
{
    public partial class login : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string str = "select * from tbl_admin where email='"+ txt_email .Text+ "' and password='"+txt_password.Text+"'";
            DataSet ds = mod.FillDs(str);
            int len = ds.Tables[0].Rows.Count;
            if (len > 0)
            {
                Session["admin"] = ds.Tables[0].Rows[0]["Id"].ToString();
                Response.Redirect("adminDashboard.aspx");
            }
            else
            {
                Literal1.Text = " Email or Password Mismatch";
            }
            
        }
    }
}