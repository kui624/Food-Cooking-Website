using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (fuAvatar.HasFile)
        {
            string ext = System.IO.Path.GetExtension(fuAvatar.FileName).ToLower();
            if (ext == ".jpg" || ext == ".jpeg" || ext == ".png" || ext == ".gif")
            {
                // 生成新文件名防止重名
                string fileName = "avatar_" + Guid.NewGuid().ToString("N") + ext;
                string savePath = Server.MapPath("~/img/" + fileName);

                fuAvatar.SaveAs(savePath);

                // 更新头像显示
                imgAvatar.ImageUrl = "~/img/" + fileName;
            }
            else
            {
                // 文件格式不合法提示（你也可以用Label提示出来）
                Response.Write("<script>alert('请上传JPG、PNG或GIF格式的图片！');</script>");
                // 设置为默认头像
                imgAvatar.ImageUrl = "~/img/头像.jpg";
            }
        }
        else
        {
            imgAvatar.ImageUrl = "~/img/头像.jpg";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Text.Trim();
        string password = TextBox2.Text.Trim();
        if (string.IsNullOrEmpty(username))
        {
            Response.Write("<script>alert('用户名不能为空');</script>");
            return;
        }

        if (string.IsNullOrEmpty(password))
        {
            Response.Write("<script>alert('密码不能为空');</script>");
            return;
        }
        string phone=TextBox3.Text.Trim();
        string email = TextBox4.Text.Trim();

        string gender = "";
        if(RadioButton1.Checked) gender=RadioButton1.Text;
        else if(RadioButton2.Checked) gender=RadioButton2.Text;

        List<string> selected = new List<string>();
        foreach(ListItem item in CheckBoxList1.Items)
        {
            if(item.Selected)
            {
                if(item.Value=="其他")
                {
                    string other = txtOtherSkill.Text.Trim();
                    if(!string.IsNullOrEmpty(other))
                    {
                        selected.Add(other);
                    }
                    else
                    {
                        selected.Add("其他");
                    }
                }
                else
                {
                    selected.Add(item.Value);
                }
            }
        }
        string skillSummary = string.Join("，", selected);

        byte[] avatarBytes = null;
        if (fuAvatar.HasFile)
        {
            avatarBytes = fuAvatar.FileBytes;
        }

        string connStr= "Data Source=.;Initial Catalog=cooking;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();

            // 先检查昵称是否已存在
            string checkSql = "SELECT COUNT(*) FROM player WHERE name = @UserName";
            SqlCommand checkCmd = new SqlCommand(checkSql, conn);
            checkCmd.Parameters.AddWithValue("@UserName", username);
            int exists = (int)checkCmd.ExecuteScalar();

            if (exists > 0)
            {
                Response.Write("<script>alert('该昵称已存在，请换一个昵称！');</script>");
                return;  // 停止后续执行
            }
            string sql = "INSERT INTO player (tx, name, pwd, sex, number, email, cuisine) " +
                         "VALUES (@Avatar, @UserName, @Password, @Sex, @Number, @Email, @Cuisine)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@UserName", username);
            cmd.Parameters.AddWithValue("@Password", password);
            cmd.Parameters.AddWithValue("@Sex", gender);
            cmd.Parameters.AddWithValue("@Number", phone);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@Cuisine", skillSummary);
            if (avatarBytes != null)
                cmd.Parameters.Add("@Avatar", SqlDbType.Image).Value = avatarBytes;
            else
                cmd.Parameters.Add("@Avatar", SqlDbType.Image).Value = DBNull.Value;

            int rows = cmd.ExecuteNonQuery();

            if (rows > 0)
            {
                string usernameEncoded = Server.UrlEncode(username);

                // 先显示注册成功，再跳转
                string script = $@"
                <script>
                    alert('注册成功！');
                    window.location.href = 'Login.aspx?username={usernameEncoded}';
                </script>";
                Response.Write(script);
            }
            else
            {
                Response.Write("<script>alert('注册失败，请重试');</script>");
            }
        }
    }
}