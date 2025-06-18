using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Myself : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["name"] != null)
            {
                string username = Session["name"].ToString();

                string connStr = "Data Source=.;Initial Catalog=cooking;Integrated Security=True";
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    string sql = "SELECT name, sex, number, email, cuisine, tx FROM player WHERE name = @UserName";
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    cmd.Parameters.AddWithValue("@UserName", username);

                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        label1.Text = reader["name"].ToString();
                        label2.Text = reader["sex"].ToString();
                        label3.Text = reader["number"].ToString();
                        label4.Text = reader["email"].ToString();
                        label5.Text = reader["cuisine"].ToString();

                        if (reader["tx"] != DBNull.Value)
                        {
                            byte[] imgBytes = (byte[])reader["tx"];
                            string base64 = Convert.ToBase64String(imgBytes);
                            imgAvatar.ImageUrl = "data:image/png;base64," + base64;
                        }
                        else
                        {
                            imgAvatar.ImageUrl = "~/img/头像.jpg"; // 默认头像路径
                        }
                    }
                    reader.Close();
                }
            }
            else
            {
                Response.Write("<script>alert('请先登录！');</script>");
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string author = TextBox5.Text.Trim();
        string name = TextBox1.Text.Trim();
        string intro = TextBox6.Text.Trim();
        string detail = TextBox2.Text.Trim();
        string steps = TextBox3.Text.Trim();
        string tips = TextBox4.Text.Trim();

        byte[] avatarBytes = null;
        if (FileUpload1.HasFile)
        {
            avatarBytes = FileUpload1.FileBytes;
        }

        // 插入数据库
        string connStr = "Data Source=.;Initial Catalog=cooking;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string sql = @"INSERT INTO food (author, fname, jianjie, photo, details, step, tip)
                       OUTPUT INSERTED.id
                       VALUES (@author, @fname, @jianjie, @photo, @details, @step, @tip)";

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.Parameters.AddWithValue("@author", author);
                cmd.Parameters.AddWithValue("@fname", name);
                cmd.Parameters.AddWithValue("@jianjie", intro);
                cmd.Parameters.AddWithValue("@details", detail);
                cmd.Parameters.AddWithValue("@step", steps);
                cmd.Parameters.AddWithValue("@tip", tips);
                if (avatarBytes != null)
                    cmd.Parameters.Add("@photo", SqlDbType.Image).Value = avatarBytes;
                else
                    cmd.Parameters.Add("@photo", SqlDbType.Image).Value = DBNull.Value;

                conn.Open();
                int newId = (int)cmd.ExecuteScalar();
                conn.Close();

                // 发布成功后跳转到菜品详情页
                Response.Redirect("RecipeDetail.aspx?id=" + newId);
            }
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string ext = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
            if (ext == ".jpg" || ext == ".jpeg" || ext == ".png" || ext == ".gif")
            {
                // 生成新文件名防止重名
                string fileName = "avatar_" + Guid.NewGuid().ToString("N") + ext;
                string savePath = Server.MapPath("~/img/" + fileName);

                FileUpload1.SaveAs(savePath);

                Image1.ImageUrl = "~/img/" + fileName;
            }
            else
            {
                // 文件格式不合法提示（你也可以用Label提示出来）
                Response.Write("<script>alert('请上传JPG、PNG或GIF格式的图片！');</script>");
                // 设置为默认头像
                Image1.ImageUrl = "~/img/喵.png";
            }
        }
        else
        {
            Image1.ImageUrl = "~/img/喵.png";
        }
    }
}