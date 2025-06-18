using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RecipeDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string idStr = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(idStr))
            {
                int id;
                if (int.TryParse(idStr, out id))
                {
                    LoadRecipeDetail(id);
                }
                else
                {
                    Response.Write("<script>alert('无效的菜谱ID');window.location='Search.aspx';</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('未指定菜谱ID');window.location='Search.aspx';</script>");
            }
        }
    }
    private void LoadRecipeDetail(int id)
    {
        string connStr = "Data Source=.;Initial Catalog=cooking;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string sql = "SELECT author, fname, photo, details, step, tip FROM food WHERE id = @id";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@id", id);

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                lblRecipeName.Text = reader["fname"].ToString();
                Label1.Text = reader["author"].ToString();
                Label2.Text = reader["details"].ToString();
                Label3.Text = reader["step"].ToString();
                Label4.Text = reader["tip"].ToString();

                if (reader["photo"] != DBNull.Value)
                {
                    byte[] imgBytes = (byte[])reader["photo"];
                    string base64 = Convert.ToBase64String(imgBytes);
                    imgRecipe.ImageUrl = "data:image/png;base64," + base64;
                }
                else
                {
                    imgRecipe.ImageUrl = "~/img/喵.jpg"; // 默认图片
                }
            }
            else
            {
                Response.Write("<script>alert('未找到该菜品');window.location='Search.aspx';</script>");
            }
            conn.Close();
        }
    }
}