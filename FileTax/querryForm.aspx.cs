using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileTax
{
    public partial class querryForm : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            lit_ddate.Text = DateTime.Now.ToString();
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string str = "insert into tbl_querry(name,email,question,services,mobile,ddate) values('" + txt_name.Text + "','" + txt_email.Text + "','" + txt_question.Text + "','"+ lit_ddate.Text + "')";
            mod.InsDelUp(str);
            reset();
        }
        public void reset()
        {
            txt_name.Text = "";
            //txt_country.Text = "";
            txt_email.Text = "";
            txt_question.Text = "";
        }
    }
}