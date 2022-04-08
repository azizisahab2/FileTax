using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileTax
{
    
    public partial class Contact_with_us : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string str = "INSERT INTO tbl_partnerWithUs(name,email,mobile,company_name,businessType,address,state,postal) values('" + txt_name.Text + "','" + txt_email.Text + "','" + txt_mobile.Text + "','" + txt_companyName.Text + "','" + txt_businessType.Text + "','" + txt_address.Text + "','" + txt_state.Text + "','" + txt_postal.Text + "')";
            mod.InsDelUp(str);
        }
    }
}