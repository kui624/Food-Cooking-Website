using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class results : System.Web.UI.Page
{
    string connStr = "Data Source=.;Initial Catalog=cooking;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string keyword = Request.QueryString["keyword"];
            if (!string.IsNullOrEmpty(keyword))
            {
                Label1.Text = Server.HtmlEncode(keyword);
                BindResults(keyword);
            }
            else
            {
                Label1.Text = "无关键字";
                Label2.Text = "0";
            }
        }
    }
    protected void BindResults(string keyword)
    {
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string sql = "SELECT id, fname, author, jianjie FROM food WHERE fname LIKE @keyword";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@keyword", "%" + keyword + "%");

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            System.Data.DataTable dt = new System.Data.DataTable();
            da.Fill(dt);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            Repeater1.DataSource = reader;
            Repeater1.DataBind();

            // 显示结果数量
            Label2.Text = dt.Rows.Count.ToString();
        }
    }
}