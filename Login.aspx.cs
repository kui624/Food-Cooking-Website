using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string username = Request.QueryString["username"];

            if (!string.IsNullOrEmpty(username))
            {
                TextBox1.Text = Server.UrlDecode(username);
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Text.Trim();
        string password = TextBox2.Text.Trim();

        if(string.IsNullOrEmpty(username)||string.IsNullOrEmpty(password))
        {
            Response.Write("<script>alert('用户名和密码不能为空');</script>");
        }

        string connStr = "Data Source=.;Initial Catalog=cooking;Integrated Security=True";
        using(SqlConnection conn = new SqlConnection(connStr))
        {
            string sql = "SELECT name, sex, number, email, cuisine, tx from player where name=@UserName and pwd=@Password";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@UserName", username);
            cmd.Parameters.AddWithValue("@Password", password);

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                // 保存信息到 Session
                Session["name"] = reader["name"].ToString();
                Session["sex"] = reader["sex"].ToString();
                Session["number"] = reader["number"].ToString();
                Session["email"] = reader["email"].ToString();
                Session["cuisine"] = reader["cuisine"].ToString();

                if (reader["tx"] != DBNull.Value && reader["tx"] != null)
                {
                    byte[] avatarData = (byte[])reader["tx"];
                    Session["avatar"] = Convert.ToBase64String(avatarData);
                    Session["avatarType"] = "db";  // 标记是数据库头像
                }
                else
                {
                    Session["avatar"] = "~/img/头像.jpg";  // 默认头像路径
                    Session["avatarType"] = "default";
                }

                conn.Close();
                Response.Write("<script>alert('登录成功！');window.location='Myself.aspx';</script>");
            }
            else
            {
                conn.Close();
                Response.Write("<script>alert('用户名或密码错误！');</script>");
            }
        }
    }
}