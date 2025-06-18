<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Myself.aspx.cs" Inherits="Myself" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .profile {
            text-align: center;
            font-family: "Microsoft YaHei", sans-serif;
            width:1500px;
            background-color:#f2ebe3;
            height: 600px;
        }
        .profile img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            border: 1px solid #ccc;
            margin-top:10px;
        }
        .profile .info {
            margin-top: 15px;
            font-size: 30px;
        }
        .a1{
            text-align:left;
            font-size:40px;
            font-family: "Microsoft YaHei", sans-serif;
            width:1500px;
            background-color:#d4eccd;
        }
        .b1{
            background-color:#dee7d9;
            width:1500px;
            height:800px;
            font-size:26px;
        }
        .label {
            vertical-align: top;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="profile">
        <asp:Image ID="imgAvatar" runat="server" />
        <div class="info">
            <p>昵称：<asp:Label ID="label1" runat="server"></asp:Label></p>
            <p>性别：<asp:Label ID="label2" runat="server"></asp:Label></p>
            <p>电话：<asp:Label ID="label3" runat="server"></asp:Label></p>
            <p>邮箱：<asp:Label ID="label4" runat="server"></asp:Label></p>
            <p>我的擅长：<asp:Label ID="label5" runat="server"></asp:Label></p>
            <div style="margin-bottom:30px;"><asp:Button ID="Button1" runat="server" Height="46px" Text="退出" Width="146px" Font-Size="15pt" OnClick="Button1_Click" /></div>
        </div>
    </div>
    <div class="a1">&nbsp;&nbsp;&nbsp;发布菜品</div>
    <div class="b1">
        <div style="float:left; height: 706px; width: 786px;">
        <div style="margin-bottom:26px;margin-top:20px;">
            <span class="label">&nbsp;&nbsp;&nbsp;&nbsp; 作者：&nbsp;&nbsp; </span><asp:TextBox ID="TextBox5" runat="server" Height="40px" Width="300px" Font-Size="15pt"></asp:TextBox>
        </div>
        <div style="margin-bottom:26px;margin-top:10px;">
            <span class="label">&nbsp;&nbsp;食材名字：</span><asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="300px" Font-Size="15pt"></asp:TextBox>
        </div>
        <div style="margin-bottom:26px;margin-top:10px;">
            <span class="label">&nbsp;&nbsp;食材简介：</span><asp:TextBox ID="TextBox6" runat="server" Height="40px" Width="443px" Font-Size="15pt"></asp:TextBox>
        </div>
        <div style="margin-bottom:26px;margin-top:10px;">
            <span class="label">&nbsp;&nbsp;食材图片：</span><asp:Image ID="Image1" runat="server" ImageUrl="~/img/喵.png" Height="159px" Width="176px" />
            <asp:FileUpload ID="FileUpload1" runat="server" Height="39px" Width="201px" Font-Size="15pt" />
            <asp:Button ID="Button3" runat="server" Font-Size="15pt" Height="42px" OnClick="Button3_Click" Text="上传" Width="105px" />
        </div>
        <div style="margin-bottom:20px;margin-top:10px;">
            <span class="label">&nbsp;&nbsp;食材明细：</span><asp:TextBox ID="TextBox2" runat="server" Height="270px" Width="450px" TextMode="MultiLine" Font-Size="15pt"></asp:TextBox>
        </div>
            </div>
        <div style="float:left; height: 706px;">
        <div style="margin-bottom:10px;margin-top:20px;">
            <span class="label">&nbsp;&nbsp;做饭步骤：</span><asp:TextBox ID="TextBox3" runat="server" Height="326px" TextMode="MultiLine" Width="450px" Font-Size="15pt"></asp:TextBox>
        </div>
        <div style="margin-bottom:20px;margin-top:30px;">
            <span class="label">&nbsp;&nbsp;小窍门：&nbsp;&nbsp; </span><asp:TextBox ID="TextBox4" runat="server" Height="270px" TextMode="MultiLine" Width="450px" Font-Size="15pt"></asp:TextBox>
        </div>
            </div>
        <div style="text-align:center;margin-bottom:20px;clear:both;">
            <asp:Button ID="Button2" runat="server" Text="发布" Height="57px" Width="137px" Font-Size="15pt" OnClick="Button2_Click" />
        </div>
    </div>
</asp:Content>

