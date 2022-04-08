using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileTax
{
    public partial class Bussiness_startup : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        double basicprice = 0;
        double standardprice = 0;
        double premiumprice = 0;
        public static string ch = "'";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string sel = "select * from tbl_package where service_name='" + ddl_serviceName.Text + "'";
                DataSet ds2 = mod.FillDs(sel);
                int len2 = ds2.Tables[0].Rows.Count;
                if (len2 > 0)
                {
                    lit_packagePrice.Text = ds2.Tables[0].Rows[0]["price"].ToString();
                    lit_text.Text = ds2.Tables[0].Rows[0]["package_text"].ToString();
                }

                string str = @"select * from tbl_services";
                DataSet ds = mod.FillDs(str);
                int len = ds.Tables[0].Rows.Count;
                for (int i = 0; i < len; i++)
                {
                    ddl_serviceName.Items.Add(ds.Tables[0].Rows[i]["services"].ToString());
                }
                RepDesc();
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
                string sel1 = @"select * from tbl_package WHERE service_id='" + lit_serviceId.Text + "' and package_type='Basic'";
                DataSet ds11 = mod.FillDs(sel1);
                int len11 = ds11.Tables[0].Rows.Count; 
                if (len11>0)
                {
                    Literal1.Text= ds11.Tables[0].Rows[0]["package_text"].ToString();
                    lit_packagePrice.Text = ds11.Tables[0].Rows[0]["price"].ToString();
                    lit_packagePrice2.Text = ds11.Tables[0].Rows[0]["price"].ToString();
                    lit_packagePrice3.Text = ds11.Tables[0].Rows[0]["price"].ToString();
                    lit_basicList1.Text = ds11.Tables[0].Rows[0]["id"].ToString();
                    lit_BasicPrice1.Text=ds11.Tables[0].Rows[0]["price"].ToString();

                    try
                    {
                        basicprice = Convert .ToDouble ( ds11.Tables[0].Rows[0]["price"].ToString())*mod.multiplecation;                        
                    }
                    catch
                    {
                        basicprice = 0;
                    }
                    //lit_basicprice.Text = basicprice.ToString();
                }

                string sel2 = @"select * from tbl_package WHERE service_id='" + lit_serviceId.Text + "' and package_type='Standard'";
                DataSet ds12 = mod.FillDs(sel2);
                int len12 = ds12.Tables[0].Rows.Count;
                if (len12 > 0)
                {
                    Literal2.Text = ds12.Tables[0].Rows[0]["package_text"].ToString();
                    lit_packagePrice.Text = ds12.Tables[0].Rows[0]["price"].ToString();
                    lit_packagePrice2.Text = ds12.Tables[0].Rows[0]["price"].ToString();
                    lit_packagePrice3.Text = ds12.Tables[0].Rows[0]["price"].ToString();
                    lit_basicList2.Text = ds12.Tables[0].Rows[0]["id"].ToString();
                    lit_standardPrice.Text = ds12.Tables[0].Rows[0]["price"].ToString();
                    try
                    {
                        standardprice = Convert.ToDouble( ds12.Tables[0].Rows[0]["price"].ToString()) * mod.multiplecation;
                    }
                    catch
                    {
                        standardprice = 0;
                    }
                    //lit_standrdPrice.Text = standardprice.ToString();
                }

                string sel3 = @"select * from tbl_package WHERE service_id='" + lit_serviceId.Text + "' and package_type='Premium'";
                DataSet ds13 = mod.FillDs(sel3);
                int len13 = ds13.Tables[0].Rows.Count;
                if (len13 > 0)
                {
                    Literal3.Text = ds13.Tables[0].Rows[0]["package_text"].ToString();
                    lit_packagePrice.Text = ds13.Tables[0].Rows[0]["price"].ToString();
                    lit_packagePrice2.Text = ds13.Tables[0].Rows[0]["price"].ToString();
                    lit_packagePrice3.Text = ds13.Tables[0].Rows[0]["price"].ToString();
                    lit_basicList3.Text = ds13.Tables[0].Rows[0]["id"].ToString();
                    lit_PremiumPrice1.Text = ds13.Tables[0].Rows[0]["price"].ToString();

                    try
                    {
                        premiumprice = Convert.ToDouble( ds13.Tables[0].Rows[0]["price"].ToString()) * mod.multiplecation;                       
                    }
                    catch
                    {
                        premiumprice = 0;
                    }
                    //lit_premiumCutPrice.Text = premiumprice.ToString();
                }
            }
            fill_repBasc();
            fill_repStandard();
            fill_repPremium();
            RepDesc();
            fill_repFAQ();
            dividePremium();
            divideStandard();
            divideBasic();
        }

        public void fill_repBasc()
        {
            string sel = "select * from tbl_package_service WHERE service_id='"+ lit_serviceId.Text + "' and package_id='"+lit_basicList1.Text+"' ";
            RepDetailBasc = mod.fillrepeater(RepDetailBasc, sel);
        }

        public void fill_repStandard()
        {
            string sel = "select * from tbl_package_service WHERE service_id='" + lit_serviceId.Text + "' and (package_id='" + lit_basicList2.Text + "' OR package_id='" + lit_basicList1.Text + "') ";
            RepDetailStandard = mod.fillrepeater(RepDetailStandard, sel);
        }

        public void fill_repPremium()
        {
            string sel = "select * from tbl_package_service WHERE service_id='" + lit_serviceId.Text + "' and (package_id='" + lit_basicList3.Text + "' OR package_id='" + lit_basicList2.Text + "' OR package_id='" + lit_basicList1.Text + "') ";
            RepDetailPremium = mod.fillrepeater(RepDetailPremium, sel);
        }

        public void RepDesc()
        {
            string str = "select * from tbl_service_desc WHERE service_id='" + lit_serviceId.Text + "'";
            RepeaterDesc = mod.fillrepeater(RepeaterDesc, str);
        }

        public void fill_repFAQ()
        {
            //string sel = "select ROW_NUMBER() OVER(ORDER BY Id ASC) AS question_no, * from tbl_FAQ WHERE service_id='" + lit_serviceId.Text + "' ";

            //DataSet ds = mod.FillDs(sel);
            //string id = "";

            //if (ds.Tables[0].Rows.Count > 0)
            //{
            //    id = ds.Tables[0].Rows[0]["Id"].ToString();
            //    lit_answer.Text = ds.Tables[0].Rows[0]["answer"].ToString();
            //    lit_question.Text = ds.Tables[0].Rows[0]["question"].ToString();
            //}
            //sel = "select (ROW_NUMBER() OVER(ORDER BY Id ASC))+1 AS question_no, * from tbl_FAQ WHERE service_id='" + lit_serviceId.Text + "' and Id >'"+id+"'";
            //RepeaterFAQ = mod.fillrepeater(RepeaterFAQ, sel);            
        }

        protected void RepeaterFAQ_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        public void dividePremium()
        {
            double rem = Convert.ToInt32( premiumprice) % mod.division;
            double qut = Convert.ToInt32( premiumprice) / mod.division;

            if(rem>=500)
            {
                rem = 999;
            }
            else
            {
                qut = qut - 1;
                rem = 999;
            }
            double final_price = qut * mod.division + rem;
            lit_premiumCutPrice.Text = final_price.ToString();
        }

        public void divideStandard()
        {
            double rem = Convert.ToInt32(standardprice) % mod.division;
            double qut = Convert.ToInt32(standardprice) / mod.division;

            if(rem>=500)
            {
                rem = 999;
            }
            else
            {
                qut = qut - 1;
                rem = 999;
            }
            double final_price = qut * mod.division + rem;
            lit_standardCutPrice.Text = final_price.ToString();
        }

        public void divideBasic()
        {
            double rem = Convert.ToInt32(basicprice) % mod.division;
            double qut = Convert.ToInt32(basicprice) / mod.division;

            if(rem>=500)
            {
                rem = 999;
            }
            else
            {
                qut = qut - 1;
                rem = 999;
            }
            double final_price = qut * mod.division + rem;
            lit_basicCutPrice.Text = final_price.ToString();
        }
    }
}