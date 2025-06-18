using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string keyword=TextBox1.Text.Trim();
        if(!string.IsNullOrEmpty(keyword))
        {
            string encodedKeyword = Server.UrlEncode(keyword);
            Response.Redirect("Results.aspx?keyword=" + encodedKeyword);
        }
        else
        {
            Response.Write("<script>alert('请输入搜索内容');</script>");
        }
    }
}