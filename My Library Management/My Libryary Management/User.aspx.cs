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
    public partial class User : System.Web.UI.Page
    {
       protected void Page_Load(object sender, EventArgs e)
    {

    }

       

       protected void btnAdd_Click1(object sender, EventArgs e)
       {
           
           try
           {
               SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["LIBRARYConnectionString"].ConnectionString);
               SqlCommand cmd = new SqlCommand("insert into Student (studentid,studentname,studentbranch,studentyear) values (@id,@name,@branch,@year)", conn);
               cmd.Parameters.AddWithValue("@id", txtStudentId.Text);
               cmd.Parameters.AddWithValue("@name", txtStudentName.Text);
               cmd.Parameters.AddWithValue("@branch", ddlBranch.SelectedValue);
               cmd.Parameters.AddWithValue("@year", ddlyear.SelectedValue);
               try
               {
                   conn.Open();
                   cmd.ExecuteNonQuery();
                   GridView1.DataBind();
                   Response.Write("Record Inserted Successfuly");
                
               }
               catch (Exception ex)
               {

               }
               finally
               {
                   conn.Close();
               }


           }
           catch (Exception ex)
           {

           }
         
       }

       protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
       {
           GridViewRow gr = GridView1.SelectedRow;
           txtStudentId.Text = gr.Cells[2].Text;
           txtStudentName.Text = gr.Cells[3].Text;
       }

       protected void btnreortstu_Click(object sender, EventArgs e)
       {
           Response.Redirect("studentreport.aspx");
       }
    }
}
