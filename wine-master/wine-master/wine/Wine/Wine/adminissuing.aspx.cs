using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Wine
{
    public partial class adminissuing : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            TextBox5.Text = DateTime.Now.ToString("dd/MM/yyyy");
            TextBox6.Text = DateTime.Now.ToString("dd/MM/yyyy");

        }

        // issue wine
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfWineExist() && checkIfMemberExist())
            {

                if (checkIfIssueEntryExist())
                {
                   
                }
                else
                {
                    issueWine();
                }

            }
            else
            {
                Response.Write("<script>alert('არასწორი ღვინის ან წევრის ID');</script>");
            }
        }
        // return wine
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfWineExist() && checkIfMemberExist())
            {

                if (checkIfIssueEntryExist())
                {
                    returnWine();
                }
                else
                {
                    Response.Write("<script>alert('არ არსებობს!');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('არასწორი ღვინის ან წევრის ID');</script>");
            }
        }

        // go button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            getNames();
        }
        // user defined function

        void returnWine()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("Delete from wine_issue_tbl WHERE wine_id='" + TextBox1.Text.Trim() + "' AND member_id='" + TextBox2.Text.Trim() + "'", con);
                int result = cmd.ExecuteNonQuery();
                 cmd = new SqlCommand("INSERT INTO wine_issue_tbl(due_date) values(@due_date)", con);
                cmd.Parameters.AddWithValue("@due_date", TextBox6.Text.Trim());


                if (result > 0)
                {

                    cmd = new SqlCommand("update wine_master_tbl set current_stock = current_stock+1 WHERE wine_id='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();

                    //Response.Write("<script>alert('წიგნი დაბრუნდა');</script>");
                    GridView1.DataBind();

                    con.Close();

                }
                else
                {
                    Response.Write("<script>alert('Error - Invalid details');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void issueWine()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO wine_issue_tbl(member_id,member_name,wine_id,wine_name,issue_date) values(@member_id,@member_name,@wine_id,@wine_name,@issue_date)", con);

                cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@member_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@wine_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@wine_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@issue_date", TextBox5.Text.Trim());
               

                cmd.ExecuteNonQuery();

                cmd = new SqlCommand("update  wine_master_tbl set current_stock = current_stock-1 WHERE wine_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();

                con.Close();
                //Response.Write("<script>alert('ღვინო წარმატებით გაიცა');</script>");




                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool checkIfWineExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from wine_master_tbl WHERE wine_id='" + TextBox1.Text.Trim() + "' AND current_stock >0", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        bool checkIfMemberExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select full_name from member_master_tbl WHERE member_id='" + TextBox2.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        bool checkIfIssueEntryExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from wine_issue_tbl WHERE member_id='" + TextBox2.Text.Trim() + "' AND wine_id='" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }



        void getNames()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select wine_name from wine_master_tbl WHERE wine_id='" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0]["wine_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('არასწორი ღვინის ID');</script>");
                }

                cmd = new SqlCommand("select full_name from member_master_tbl WHERE member_id='" + TextBox2.Text.Trim() + "'", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
              
                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0]["full_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('არასწორი მომხმარებლის ID');</script>");
                }


            }
            catch (Exception ex)
            {

            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
           //         //Check your condition here
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[4].Text);
                    DateTime today = DateTime.Today;
                    if (today > dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }
                }

            }
            catch 
            {
                //Response.Write("<script>alert('მიუთითეთ დღევანდელი თარიღი');</script>");
            }
        }
         
    }
}