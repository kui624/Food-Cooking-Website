<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .left{
            float:left;
            width: 600px;
            font-family: "Microsoft YaHei", sans-serif;
        }
        .right{
            float:left;
            font-family: "Microsoft YaHei", sans-serif;
            font-size:29px;
            margin-bottom: 50px;
            width: 900px;
            text-align:left;
            margin-left:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="left">
        <div style="text-align:center;line-height:128px;font-size:60px; height: 128px; width: 600px;margin-top:30px;color:#ff3e85">厨师注册</div>
        <img src="img/喵.png" style="height: 250px; width: 250px; margin-left: 174px;"/>
        <div style="text-align:center;font-size:30px;margin-top:30px;">注册小猫烹饪，<br />开启你的厨师生涯，<br />大展身手吧！</div>
    </div>
    <div class="right">
        头像：<asp:Image ID="imgAvatar" runat="server" ImageUrl="~/img/头像.jpg" Width="120px" Height="120px" Style="border-radius: 50%; border: 1px solid #ccc;" />
        <asp:FileUpload ID="fuAvatar" runat="server" Height="37px" Width="286px" /><br />
        <asp:Button ID="btnUpload" runat="server" Text="上传头像" OnClick="btnUpload_Click" Font-Size="12pt" Height="45px" Width="136px" /><br />
        <div style="margin-top:15px;margin-bottom:15px;">用户名：<asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="214px" Font-Size="15pt"></asp:TextBox></div>
        <div style="margin-top:15px;margin-bottom:15px;">密码：&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="32px" Width="214px" Font-Size="15pt"></asp:TextBox></div>
        <div style="margin-top:15px;margin-bottom:15px;">性别：&nbsp;&nbsp; <asp:RadioButton ID="RadioButton1" runat="server" Text="女厨" Font-Size="17pt" />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="男厨" Font-Size="17pt" /></div>
        <div style="margin-top:15px;margin-bottom:15px;">联系电话：<asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="214px" Font-Size="15pt"></asp:TextBox></div>
        <div style="margin-top:15px;margin-bottom:15px;">邮箱：&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" Height="32px" Width="214px" Font-Size="15pt"></asp:TextBox></div>
        <div style="margin-top:15px;margin-bottom:7px;">我的擅长:<asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" style="font-size:26px;">
            <asp:ListItem>川菜</asp:ListItem>
            <asp:ListItem>粤菜</asp:ListItem>
            <asp:ListItem>湘菜</asp:ListItem>
            <asp:ListItem>东北菜</asp:ListItem>
            <asp:ListItem>甜品烘焙</asp:ListItem>
            <asp:ListItem>其他</asp:ListItem>
        </asp:CheckBoxList></div>
        <asp:TextBox ID="txtOtherSkill" runat="server" Placeholder="如选择其他，请填写具体内容" Height="47px" Width="365px" Font-Size="15pt"></asp:TextBox><br />
        <div style="margin-left:150px;margin-top:10px">
            <asp:Button ID="Button1" runat="server" Text="提交" Font-Size="15pt" Height="47px" Width="133px" OnClick="Button1_Click"/>
        </div>
    </div>
</asp:Content>

