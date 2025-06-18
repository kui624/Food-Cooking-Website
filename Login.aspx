<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .a1{
            text-align:center;
            background-image: url('img/注册小猫.png');  /* 这里放背景图路径 */
            background-size: 420px 530px;  /* 背景图铺满容器 */
            background-repeat: no-repeat;
            background-position: center;
            padding: 10px;  /* 让内容和背景图之间有间距 */
            width: 412px;
            height:520px;
            margin: 0px 100px 20px 600px; /* 居中容器 */
            font-size:30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="a1">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        用户名：<asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="215px" Font-Size="15pt"></asp:TextBox>
        <br />
        <br />
        密码：&nbsp; <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="35px" Width="215px" Font-Size="15pt"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="登录" Height="47px" Width="116px" Font-Size="15pt" OnClick="Button1_Click" />
    </div>
</asp:Content>

