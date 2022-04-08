using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileTax
{
    public partial class ContactUs : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_contact_Click(object sender, EventArgs e)
        {
            string str = "insert into tbl_contact(name,email,phone) values('" + txt_name.Text + "','" + txt_email.Text + "','" + txt_phone.Text + "')";
            mod.InsDelUp(str);
            reset();
        }
        public void reset()
        {
            txt_name.Text = "";
            txt_email.Text = "";
            txt_phone.Text = "";
        }
    }
}