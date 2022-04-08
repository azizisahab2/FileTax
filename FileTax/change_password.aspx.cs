using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileTax
{
    public partial class change_password : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }

        protected void btn_changePass_Click(object sender, EventArgs e)
        {
            
            string sel = "select * from tbl_admin WHERE password='" + txt_oldPass.Text + "'";
            DataSet ds = mod.FillDs(sel);           
            int len = ds.Tables[0].Rows.Count;
            if (len > 0)
            {
                string upd = "Update tbl_admin set password='" + txt_newPass.Text + "'";                
                mod.InsDelUp(upd);
                Response.Redirect("login1.aspx");
            }
            else
            {
                Literal1.Text = "Your old password is mismatch";
            }
        }
    }
}