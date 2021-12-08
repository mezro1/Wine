using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Wine
{
    public partial class admininventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        static string global_filepath;
        static int global_actual_stock, global_current_stock, global_issued_wines;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillAuthorPublisherValues();
                //fillgenre();
            }

            GridView1.DataBind();
        }

        // go button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            getWineByID();
        }


        // update button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            updateWineByID();
        }
        // delete button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteWineByID();
        }
        // add button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfWineExists())
            {
                Response.Write("<script>alert('ღვინის ID უკვე არსებობს ან სახელი არ არის მითითებული. სცადეთ ახლიდან!');</script>");
            }
            else
            {
                addNewWine();
            }
        }



        // user defined functions

        void deleteWineByID()
        {
            if (checkIfWineExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from wine_master_tbl WHERE wine_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    // Response.Write("<script>alert('wine Deleted Successfully');</script>");
                    clearForm();

                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('არასწორი ID');</script>");
            }
        }

        void updateWineByID()
        {

            if (checkIfWineExists())
            {
                try
                {
                    string filepath = "";
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("UPDATE wine_master_tbl set wine_name=@wine_name,genre=@genre,  author_name=@author_name, publish_address=@publish_address, publish_date=@publish_date, edition=@edition, wine_cost=@wine_cost, wine_description=@wine_description, actual_stock=@actual_stock, current_stock=@current_stock where wine_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.Parameters.AddWithValue("@wine_name", TextBox2.Text.Trim());
                     cmd.Parameters.AddWithValue("@genre", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@author_name", DropDownList3.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@publish_address", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@publish_date", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@edition", TextBox9.Text.Trim());
                    cmd.Parameters.AddWithValue("@wine_cost", TextBox10.Text.Trim());
                    cmd.Parameters.AddWithValue("@wine_description", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@actual_stock", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@current_stock", TextBox4.Text.Trim());
                    cmd.ExecuteNonQuery();
                    con.Close();
                    clearForm();
                    GridView1.DataBind();
                    
                    //Response.Write("<script>alert('wine Updated Successfully');</script>");
                    // alert("განახლდა წარმატებით!");

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('არასწორი ID');</script>");
            }
        }


        void getWineByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT wine_name, publish_date, edition, wine_cost, actual_stock, current_stock, wine_description, current_stock, publish_address, author_name, genre from wine_master_tbl WHERE wine_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0]["wine_name"].ToString();
                    TextBox3.Text = dt.Rows[0]["publish_date"].ToString();
                    TextBox9.Text = dt.Rows[0]["edition"].ToString();
                    TextBox10.Text = dt.Rows[0]["wine_cost"].ToString().Trim();
                    TextBox5.Text = dt.Rows[0]["actual_stock"].ToString().Trim();
                    TextBox4.Text = dt.Rows[0]["current_stock"].ToString().Trim();
                    DropDownList1.SelectedValue = dt.Rows[0]["genre"].ToString().Trim();
                    TextBox6.Text = dt.Rows[0]["wine_description"].ToString();
                    TextBox7.Text = "" + (Convert.ToInt32(dt.Rows[0]["current_stock"].ToString()) - Convert.ToInt32(dt.Rows[0]["current_stock"].ToString()));
                    DropDownList2.SelectedValue = dt.Rows[0]["publish_address"].ToString().Trim();
                    DropDownList3.SelectedValue = dt.Rows[0]["author_name"].ToString().Trim();



                    global_actual_stock = Convert.ToInt32(dt.Rows[0]["actual_stock"].ToString().Trim());
                    global_current_stock = Convert.ToInt32(dt.Rows[0]["current_stock"].ToString().Trim());
                    global_issued_wines = global_actual_stock - global_current_stock;
                    global_filepath = dt.Rows[0]["wine_img_link"].ToString();

                }
                else
                {
                    Response.Write("<script>alert('არასწორი ID');</script>");
                }

            }
            catch (Exception ex)
            {

            }
        }

        void fillAuthorPublisherValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT author_name from author_master_tbl;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList3.DataSource = dt;
                DropDownList3.DataValueField = "author_name";
                DropDownList3.DataBind();

                cmd = new SqlCommand("SELECT publisher_address from publisher_master_tbl;", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                DropDownList2.DataSource = dt;
                DropDownList2.DataValueField = "publisher_address";
                DropDownList2.DataBind();


                cmd = new SqlCommand("SELECT genre_name from genree_master_tbl;", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataValueField = "genre_name";
                DropDownList1.DataBind();

            }
            catch (Exception ex)
            {

            }
        }
      //  void fillgenre()
      //  {
      //      try
      //      {
      //          SqlConnection con = new SqlConnection(strcon);
      //          if (con.State == ConnectionState.Closed)
      //          {
      //              con.Open();
      //          }
      //          SqlCommand cmd = new SqlCommand("SELECT genre_name from genree_master_tbl;", con);
      //          SqlDataAdapter da = new SqlDataAdapter(cmd);
      //          DataTable dt = new DataTable();
      //          da.Fill(dt);
      //          DropDownList4.DataSource = dt;
      //          DropDownList4.DataValueField = "genre_name";
      //          DropDownList4.DataBind();
      //
      //         
      //
      //      }
      //      catch (Exception ex)
      //      {
      //
      //      }
      //  }

       

        bool checkIfWineExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from wine_master_tbl where wine_id='" + TextBox1.Text.Trim() + "' OR wine_name='" + TextBox2.Text.Trim() + "';", con);
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
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void addNewWine()
        {
           try
           {
               
                 string filepath = "~/wine_inventory/wines1.png";
                 string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                try
                {
                    FileUpload1.SaveAs(Server.MapPath("wine_inventory/" + filename));
                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('ფოტოს ატვირტვა სავალდებულოა!');</script>");

                }
                filepath = "~/wine_inventory/" + filename;
               
                   
               
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                 SqlCommand cmd = new SqlCommand("INSERT INTO wine_master_tbl(wine_id,wine_name,genre,author_name,publish_address,publish_date,edition,wine_cost,wine_description,actual_stock,current_stock,wine_img_link) values(@wine_id,@wine_name,@genre,@author_name,@publish_address,@publish_date,@edition,@wine_cost,@wine_description,@actual_stock,@current_stock,@wine_img_link)", con);
                    cmd.Parameters.AddWithValue("@wine_id", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@wine_name", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@genre", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@author_name", DropDownList3.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@publish_address", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@publish_date", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@edition", TextBox9.Text.Trim());
                    cmd.Parameters.AddWithValue("@wine_cost", TextBox10.Text.Trim());
                    cmd.Parameters.AddWithValue("@wine_description", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@actual_stock", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@current_stock", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@wine_img_link", filepath);
               
                    cmd.ExecuteNonQuery();
                    con.Close();
                clearForm();
                //Response.Write("<script>alert('wine added successfully.');</script>");
                GridView1.DataBind();
               
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
        }
    }
}