using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace My_Libryary_Management
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from Reg where UserName='" + txt_RegUsername.Text+ "'";
                SqlCommand com = new SqlCommand(checkuser,conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if(temp==1)
                {
                    Response.Write("User Already Exists");
                }
                conn.Close();
            }
         
       }


        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Btn_regsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Reg (ID,UserName,Password)values(@ID,@UserName,@Password)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("ID",newGUID.ToString());
                com.Parameters.AddWithValue("@UserName", txt_RegUsername.Text);
                com.Parameters.AddWithValue("@Password", Txt_regpass.Text);
                com.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error"+ex.ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        
           
        
    }
}