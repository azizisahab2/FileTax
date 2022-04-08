using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileTax
{
    public partial class Digital_Signature : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["nameIndivi"] = "";
                Session["panCardIndivi"] = "";
                Session["adharCardIndivi"] = "";

                Session["namePart"] = "";
                Session["panCardPart"] = "";
                Session["adharCardPart"] = "";
                Session["certiIncorPart"] = "";

                Session["nameComp"] = "";
                Session["panCardComp"] = "";
                Session["adharCardComp"] = "";
                Session["certiIncorpComp"] = "";
                Session["compPanCardComp"] = "";
                Session["directorPanCardComp"] = "";

                lit_userType.Text = ""; //Session["userType"].ToString();
                lit_purpose.Text = "";  // Session["purpose"].ToString();
                lit_rate.Text = ""; //Session["rate"].ToString();
                lit_cllasss.Text = ""; //Session["cllasss"].ToString();
                lit_category.Text = "Class 3"; //Session["category"].ToString();

                lit_dscId.Text = ""; //Session["dsc_id"].ToString();
            }
        }

        protected void btn_submitIndivi_Click(object sender, EventArgs e)
        {
            lit_msg.Text = "";

            uplfNameIndivi();
            uplfpanCardIndivi();
            uplfadharCardIndivi();

            string ins = @"INSERT INTO tbl_dscInfo (user_type,purpose,rate,cllasss,name,
            name_image,pan_no,image_panNo,adhar_no,image_adharNo,mobile,email,gstin,
            category,sub_category,dsc_id) VALUES 
            ('" + lit_userType.Text + "','" + lit_purpose.Text + @"',
            '" + lit_rate.Text + "','" + lit_cllasss.Text + "','" + txt_nameIndivi.Text + @"',
            '" + Session["nameIndivi"].ToString() + "','" + txt_panNoIndivi.Text + @"',
            '" + Session["panCardIndivi"].ToString() + "','" + txt_adharNoIndivi.Text + @"',
            '" + Session["adharCardIndivi"].ToString() + "','" + txt_mobileIndivi.Text + @"',
            '" + txt_emailIndivi.Text + "','" + txt_gstinIndivi.Text + "','" + lit_category.Text + @"',
            'individual','" + lit_dscId.Text + "') ";
            mod.InsDelUp(ins);

            Session["dsc_id"] = lit_dscId.Text;
            reset();
            //Response.Redirect("Appoinment-Schedule.aspx");       
        }

        protected void btn_submitPart_Click(object sender, EventArgs e)
        {
            lit_msg.Text = "";

            uplfNamePart();
            uplfpanCardPart();
            uplfadharCardPart();
            uplfcertiIncorpPart();

            string ins = @"INSERT INTO tbl_dscInfo (user_type,purpose,rate,cllasss,name,
            name_image,pan_no,image_panNo,adhar_no,image_adharNo,mobile,email,gstin,
            certi_incorp,certi_incorpImage,category,sub_category,dsc_id) VALUES 
            ('" + lit_userType.Text + "','" + lit_purpose.Text + @"',
            '" + lit_rate.Text + "','" + lit_cllasss.Text + "','" + txt_namePart.Text + @"',
            '" + Session["namePart"].ToString() + "','" + txt_panNoPart.Text + @"',
            '" + Session["panCardPart"].ToString() + "','" + txt_adharNoPart.Text + @"',
            '" + Session["adharCardPart"].ToString() + "','" + txt_mobilePart.Text + @"',
            '" + txt_emailPart.Text + "','" + txt_gstinPart.Text + @"',
            '" + txt_certiIncorpPart.Text + "','" + Session["certiIncorPart"].ToString() + @"',
            '" + lit_category.Text + "','partnership','" + lit_dscId.Text + "') ";
            mod.InsDelUp(ins);

            Session["dsc_id"] = lit_dscId.Text;
            reset();
            //Response.Redirect("Appoinment-Schedule.aspx");      
        }

        protected void btn_submitComp_Click(object sender, EventArgs e)
        {
            lit_msg.Text = "";

            uplfNameComp();
            uplfpanCardComp();
            uplfadharCardComp();
            uplfcertiIncorpComp();
            uplfcompPanCardComp();
            uplfdirectorPanCardComp();

            string ins = @"INSERT INTO tbl_dscInfo (user_type,purpose,rate,cllasss,name,
            name_image,pan_no,image_panNo,adhar_no,image_adharNo,mobile,email,gstin,
            certi_incorp,certi_incorpImage,comp_panNo,comp_imagePan,director_panNo,
            director_imagePan,category,sub_category,dsc_id) VALUES
            ('" + lit_userType.Text + "','" + lit_purpose.Text + @"',
            '" + lit_rate.Text + "','" + lit_cllasss.Text + "','" + txt_nameComp.Text + @"',
            '" + Session["nameComp"].ToString() + "','" + txt_panNoComp.Text + @"',
            '" + Session["panCardComp"].ToString() + "','" + txt_adharNoComp.Text + @"',
            '" + Session["adharCardComp"].ToString() + "','" + txt_mobileComp.Text + @"',
            '" + txt_emailComp.Text + "','" + txt_gstinComp.Text + @"',
            '" + txt_certiIncorpComp.Text + "','" + Session["certiIncorpComp"].ToString() + @"',
            '" + txt_compPanNoComp.Text + "','" + Session["compPanCardComp"].ToString() + @"',
            '" + txt_directorPanNoComp.Text + "','" + Session["directorPanCardComp"].ToString() + @"',
            '" + lit_category.Text + "','company','" + lit_dscId.Text + "') ";
            mod.InsDelUp(ins);

            Session["dsc_id"] = lit_dscId.Text;
            reset();
            //Response.Redirect("Appoinment-Schedule.aspx");      
        }

        public void reset()
        {
            txt_nameIndivi.Text = "";
            txt_panNoIndivi.Text = "";
            txt_adharNoIndivi.Text = "";
            txt_mobileIndivi.Text = "";
            txt_emailIndivi.Text = "";
            txt_gstinIndivi.Text = "";

            txt_namePart.Text = "";
            txt_panNoPart.Text = "";
            txt_adharNoPart.Text = "";
            txt_mobilePart.Text = "";
            txt_emailPart.Text = "";
            txt_gstinPart.Text = "";
            txt_certiIncorpPart.Text = "";

            txt_nameComp.Text = "";
            txt_panNoComp.Text = "";
            txt_adharNoComp.Text = "";
            txt_mobileComp.Text = "";
            txt_emailComp.Text = "";
            txt_gstinComp.Text = "";
            txt_certiIncorpComp.Text = "";
            txt_compPanNoComp.Text = "";
        }

        public void uplfNameIndivi()
        {
            string dipath = Server.MapPath(".") + "/upload/";

            string filename1 = uplf_nameIndivi.FileName;

            int size = uplf_nameIndivi.PostedFile.ContentLength;

            string ext = System.IO.Path.GetExtension(filename1);

            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".png" || ext.ToLower() == ".tiff" || ext.ToLower() == ".pdf")
            {
                if (size < 2 * 1024 * 1024)
                {
                    Random rem = new Random();
                    int r = rem.Next(10000, 99999);

                    string uplf1 = System.IO.Path.GetFileNameWithoutExtension(filename1) + r + ext;

                    Session["nameIndivi"] = uplf1;
                    uplf_nameIndivi.SaveAs(dipath + uplf1);

                    //Image1.ImageUrl = "./upload/" + Session["uplf1"].ToString(); ;
                    lit_msg.Text = "file uploaded";
                }
                else
                {
                    lit_msg.Text = "size Shoild be less 2mb";
                }
            }
            else
            {
                lit_msg.Text = "this type of file is not supportd";
            }
        }

        public void uplfpanCardIndivi()
        {
            string dipath = Server.MapPath(".") + "/upload/";

            string filename1 = uplf_panCardIndivi.FileName;

            int size = uplf_panCardIndivi.PostedFile.ContentLength;

            string ext = System.IO.Path.GetExtension(filename1);

            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".png" || ext.ToLower() == ".tiff" || ext.ToLower() == ".pdf")
            {
                if (size < 2 * 1024 * 1024)
                {
                    Random rem = new Random();
                    int r = rem.Next(10000, 99999);

                    string uplf2 = System.IO.Path.GetFileNameWithoutExtension(filename1) + r + ext;

                    Session["panCardIndivi"] = uplf2;
                    uplf_panCardIndivi.SaveAs(dipath + uplf2);

                    //Image1.ImageUrl = "./upload/" + Session["uplf1"].ToString(); ;
                    lit_msg.Text = "file uploaded";
                }
                else
                {
                    lit_msg.Text = "size Shoild be less 2mb";
                }
            }
            else
            {
                lit_msg.Text = "this type of file is not supportd";
            }
        }

        public void uplfadharCardIndivi()
        {
            string dipath = Server.MapPath(".") + "/upload/";

            string filename1 = uplf_adharCardIndivi.FileName;

            int size = uplf_adharCardIndivi.PostedFile.ContentLength;

            string ext = System.IO.Path.GetExtension(filename1);

            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".png" || ext.ToLower() == ".tiff" || ext.ToLower() == ".pdf")
            {
                if (size < 2 * 1024 * 1024)
                {
                    Random rem = new Random();
                    int r = rem.Next(10000, 99999);

                    string uplf2 = System.IO.Path.GetFileNameWithoutExtension(filename1) + r + ext;

                    Session["adharCardIndivi"] = uplf2;
                    uplf_adharCardIndivi.SaveAs(dipath + uplf2);

                    //Image1.ImageUrl = "./upload/" + Session["uplf1"].ToString();
                    lit_msg.Text = "file uploaded";
                }
                else
                {
                    lit_msg.Text = "size Shoild be less 2mb";
                }
            }
            else
            {
                lit_msg.Text = "this type of file is not supportd";
            }
        }

        ////////////////////////////////////////////////////////

        public void uplfNamePart()
        {
            string dipath = Server.MapPath(".") + "/upload/";

            string filename1 = uplf_namePart.FileName;

            int size = uplf_namePart.PostedFile.ContentLength;

            string ext = System.IO.Path.GetExtension(filename1);

            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".png" || ext.ToLower() == ".tiff" || ext.ToLower() == ".pdf")
            {
                if (size < 2 * 1024 * 1024)
                {
                    Random rem = new Random();
                    int r = rem.Next(10000, 99999);

                    string uplf1 = System.IO.Path.GetFileNameWithoutExtension(filename1) + r + ext;

                    Session["namePart"] = uplf1;
                    uplf_namePart.SaveAs(dipath + uplf1);

                    //Image1.ImageUrl = "./upload/" + Session["uplf1"].ToString(); ;
                    lit_msg.Text = "file uploaded";
                }
                else
                {
                    lit_msg.Text = "size Should be less 2mb";
                }
            }
            else
            {
                lit_msg.Text = "this type of file is not supported";
            }
        }

        public void uplfpanCardPart()
        {
            string dipath = Server.MapPath(".") + "/upload/";

            string filename1 = uplf_panCardPart.FileName;

            int size = uplf_panCardPart.PostedFile.ContentLength;

            string ext = System.IO.Path.GetExtension(filename1);

            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".png" || ext.ToLower() == ".tiff" || ext.ToLower() == ".pdf")
            {
                if (size < 2 * 1024 * 1024)
                {
                    Random rem = new Random();
                    int r = rem.Next(10000, 99999);

                    string uplf2 = System.IO.Path.GetFileNameWithoutExtension(filename1) + r + ext;

                    Session["panCardPart"] = uplf2;
                    uplf_panCardPart.SaveAs(dipath + uplf2);

                    //Image1.ImageUrl = "./upload/" + Session["uplf1"].ToString(); 
                    lit_msg.Text = "file uploaded";
                }
                else
                {
                    lit_msg.Text = "size Shoild be less 2mb";
                }
            }
            else
            {
                lit_msg.Text = "this type of file is not supportd";
            }
        }

        public void uplfadharCardPart()
        {
            string dipath = Server.MapPath(".") + "/upload/";

            string filename1 = uplf_adharCardPart.FileName;

            int size = uplf_adharCardPart.PostedFile.ContentLength;

            string ext = System.IO.Path.GetExtension(filename1);

            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".png" || ext.ToLower() == ".tiff" || ext.ToLower() == ".pdf")
            {
                if (size < 2 * 1024 * 1024)
                {
                    Random rem = new Random();
                    int r = rem.Next(10000, 99999);

                    string uplf2 = System.IO.Path.GetFileNameWithoutExtension(filename1) + r + ext;

                    Session["adharCardPart"] = uplf2;
                    uplf_adharCardPart.SaveAs(dipath + uplf2);

                    //Image1.ImageUrl = "./upload/" + Session["uplf1"].ToString(); ;
                    lit_msg.Text = "file uploaded";
                }
                else
                {
                    lit_msg.Text = "size Shoild be less 2mb";
                }
            }
            else
            {
                lit_msg.Text = "this type of file is not supportd";
            }
        }

        public void uplfcertiIncorpPart()
        {
            string dipath = Server.MapPath(".") + "/upload/";

            string filename1 = uplf_certiIncorPart.FileName;

            int size = uplf_certiIncorPart.PostedFile.ContentLength;

            string ext = System.IO.Path.GetExtension(filename1);

            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".png" || ext.ToLower() == ".tiff" || ext.ToLower() == ".pdf")
            {
                if (size < 2 * 1024 * 1024)
                {
                    Random rem = new Random();
                    int r = rem.Next(10000, 99999);

                    string uplf2 = System.IO.Path.GetFileNameWithoutExtension(filename1) + r + ext;

                    Session["certiIncorPart"] = uplf2;
                    uplf_certiIncorPart.SaveAs(dipath + uplf2);

                    //Image1.ImageUrl = "./upload/" + Session["uplf1"].ToString(); ;
                    lit_msg.Text = "file uploaded";
                }
                else
                {
                    lit_msg.Text = "size Shoild be less 2mb";
                }
            }
            else
            {
                lit_msg.Text = "this type of file is not supportd";
            }
        }

        ////////////////////////////////////////////////////////

        public void uplfNameComp()
        {
            string dipath = Server.MapPath(".") + "/upload/";

            string filename1 = uplf_nameComp.FileName;

            int size = uplf_nameComp.PostedFile.ContentLength;

            string ext = System.IO.Path.GetExtension(filename1);

            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".png" || ext.ToLower() == ".tiff" || ext.ToLower() == ".pdf")
            {
                if (size < 2 * 1024 * 1024)
                {
                    Random rem = new Random();
                    int r = rem.Next(10000, 99999);

                    string uplf1 = System.IO.Path.GetFileNameWithoutExtension(filename1) + r + ext;

                    Session["nameComp"] = uplf1;
                    uplf_nameComp.SaveAs(dipath + uplf1);

                    //Image1.ImageUrl = "./upload/" + Session["uplf1"].ToString(); ;
                    lit_msg.Text = "file uploaded";
                }
                else
                {
                    lit_msg.Text = "size Shoild be less 2mb";
                }
            }
            else
            {
                lit_msg.Text = "this type of file is not supportd";
            }
        }

        public void uplfpanCardComp()
        {
            string dipath = Server.MapPath(".") + "/upload/";

            string filename1 = uplf_panCardComp.FileName;

            int size = uplf_panCardComp.PostedFile.ContentLength;

            string ext = System.IO.Path.GetExtension(filename1);

            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".png" || ext.ToLower() == ".tiff" || ext.ToLower() == ".pdf")
            {
                if (size < 2 * 1024 * 1024)
                {
                    Random rem = new Random();
                    int r = rem.Next(10000, 99999);

                    string uplf2 = System.IO.Path.GetFileNameWithoutExtension(filename1) + r + ext;

                    Session["panCardComp"] = uplf2;
                    uplf_panCardComp.SaveAs(dipath + uplf2);

                    //Image1.ImageUrl = "./upload/" + Session["uplf1"].ToString(); ;
                    lit_msg.Text = "file uploaded";
                }
                else
                {
                    lit_msg.Text = "size Shoild be less 2mb";
                }
            }
            else
            {
                lit_msg.Text = "this type of file is not supportd";
            }
        }

        public void uplfadharCardComp()
        {
            string dipath = Server.MapPath(".") + "/upload/";

            string filename1 = uplf_adharCardComp.FileName;

            int size = uplf_adharCardComp.PostedFile.ContentLength;

            string ext = System.IO.Path.GetExtension(filename1);

            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".png" || ext.ToLower() == ".tiff" || ext.ToLower() == ".pdf")
            {
                if (size < 2 * 1024 * 1024)
                {
                    Random rem = new Random();
                    int r = rem.Next(10000, 99999);

                    string uplf2 = System.IO.Path.GetFileNameWithoutExtension(filename1) + r + ext;

                    Session["adharCardComp"] = uplf2;
                    uplf_adharCardComp.SaveAs(dipath + uplf2);

                    //Image1.ImageUrl = "./upload/" + Session["uplf1"].ToString(); ;
                    lit_msg.Text = "file uploaded";
                }
                else
                {
                    lit_msg.Text = "size Shoild be less 2mb";
                }
            }
            else
            {
                lit_msg.Text = "this type of file is not supportd";
            }
        }

        public void uplfcertiIncorpComp()
        {
            string dipath = Server.MapPath(".") + "/upload/";

            string filename1 = uplf_certiIncorpComp.FileName;

            int size = uplf_certiIncorpComp.PostedFile.ContentLength;

            string ext = System.IO.Path.GetExtension(filename1);

            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".png" || ext.ToLower() == ".tiff" || ext.ToLower() == ".pdf")
            {
                if (size < 2 * 1024 * 1024)
                {
                    Random rem = new Random();
                    int r = rem.Next(10000, 99999);

                    string uplf2 = System.IO.Path.GetFileNameWithoutExtension(filename1) + r + ext;

                    Session["certiIncorpComp"] = uplf2;
                    uplf_certiIncorpComp.SaveAs(dipath + uplf2);

                    //Image1.ImageUrl = "./upload/" + Session["uplf1"].ToString(); ;
                    lit_msg.Text = "file uploaded";
                }
                else
                {
                    lit_msg.Text = "size Shoild be less 2mb";
                }
            }
            else
            {
                lit_msg.Text = "this type of file is not supportd";
            }
        }

        public void uplfcompPanCardComp()
        {
            string dipath = Server.MapPath(".") + "/upload/";

            string filename1 = uplf_compPanCardComp.FileName;

            int size = uplf_compPanCardComp.PostedFile.ContentLength;

            string ext = System.IO.Path.GetExtension(filename1);

            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".png" || ext.ToLower() == ".tiff" || ext.ToLower() == ".pdf")
            {
                if (size < 2 * 1024 * 1024)
                {
                    Random rem = new Random();
                    int r = rem.Next(10000, 99999);

                    string uplf2 = System.IO.Path.GetFileNameWithoutExtension(filename1) + r + ext;

                    Session["compPanCardComp"] = uplf2;
                    uplf_compPanCardComp.SaveAs(dipath + uplf2);

                    //Image1.ImageUrl = "./upload/" + Session["uplf1"].ToString(); ;
                    lit_msg.Text = "file uploaded";
                }
                else
                {
                    lit_msg.Text = "size Shoild be less 2mb";
                }
            }
            else
            {
                lit_msg.Text = "this type of file is not supportd";
            }
        }

        public void uplfdirectorPanCardComp()
        {
            string dipath = Server.MapPath(".") + "/upload/";

            string filename1 = uplf_directorPanCardComp.FileName;

            int size = uplf_directorPanCardComp.PostedFile.ContentLength;

            string ext = System.IO.Path.GetExtension(filename1);

            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".png" || ext.ToLower() == ".tiff" || ext.ToLower() == ".pdf")
            {
                if (size < 2 * 1024 * 1024)
                {
                    Random rem = new Random();
                    int r = rem.Next(10000, 99999);

                    string uplf2 = System.IO.Path.GetFileNameWithoutExtension(filename1) + r + ext;

                    Session["directorPanCardComp"] = uplf2;
                    uplf_directorPanCardComp.SaveAs(dipath + uplf2);

                    //Image1.ImageUrl = "./upload/" + Session["uplf1"].ToString(); ;
                    lit_msg.Text = "file uploaded";
                }
                else
                {
                    lit_msg.Text = "size Shoild be less 2mb";
                }
            }
            else
            {
                lit_msg.Text = "this type of file is not supportd";
            }
        }

        protected void lnk_individul_Click(object sender, EventArgs e)
        {
            //Session["namePart"] = "";
            //Session["panCardPart"] = "";
            //Session["adharCardPart"] = "";

            //Session["nameComp"] = "";
            //Session["panCardComp"] = "";
            //Session["adharCardComp"] = "";
            //Session["compPanCardComp"] = "";
            //Session["directorPanCardComp"] = "";


            txt_namePart.Text = "";
            txt_panNoPart.Text = "";
            txt_adharNoPart.Text = "";
            txt_mobilePart.Text = "";
            txt_emailPart.Text = "";
            txt_gstinPart.Text = "";
            txt_certiIncorpPart.Text = "";

            txt_nameComp.Text = "";
            txt_panNoComp.Text = "";
            txt_adharNoComp.Text = "";
            txt_mobileComp.Text = "";
            txt_emailComp.Text = "";
            txt_gstinComp.Text = "";
            txt_certiIncorpComp.Text = "";
            txt_compPanNoComp.Text = "";
        }

        protected void lnk_partnetship_Click(object sender, EventArgs e)
        {
            //Session["nameIndivi"] = "";
            //Session["panCardIndivi"] = "";
            //Session["adharCardIndivi"] = "";

            //Session["nameComp"] = "";
            //Session["panCardComp"] = "";
            //Session["adharCardComp"] = "";
            //Session["compPanCardComp"] = "";
            //Session["directorPanCardComp"] = "";

            txt_nameIndivi.Text = "";
            txt_panNoIndivi.Text = "";
            txt_adharNoIndivi.Text = "";
            txt_mobileIndivi.Text = "";
            //txt_emailIndivi.Text = "";
            txt_gstinIndivi.Text = "";

            txt_nameComp.Text = "";
            txt_panNoComp.Text = "";
            txt_adharNoComp.Text = "";
            txt_mobileComp.Text = "";
            txt_emailComp.Text = "";
            txt_gstinComp.Text = "";
            txt_certiIncorpComp.Text = "";
            txt_compPanNoComp.Text = "";
        }

        protected void lnk_company_Click(object sender, EventArgs e)
        {
            //Session["nameIndivi"] = "";
            //Session["panCardIndivi"] = "";
            //Session["adharCardIndivi"] = "";

            //Session["namePart"] = "";
            //Session["panCardPart"] = "";
            //Session["adharCardPart"] = "";

            txt_nameIndivi.Text = "";
            txt_panNoIndivi.Text = "";
            txt_adharNoIndivi.Text = "";
            txt_mobileIndivi.Text = "";
            //txt_emailIndivi.Text = "";
            txt_gstinIndivi.Text = "";

            txt_namePart.Text = "";
            txt_panNoPart.Text = "";
            txt_adharNoPart.Text = "";
            txt_mobilePart.Text = "";
            txt_emailPart.Text = "";
            txt_gstinPart.Text = "";
            txt_certiIncorpPart.Text = "";
        }
    }
}