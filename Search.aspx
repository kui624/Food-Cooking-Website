<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .top{
            width:1600px;
        }
        .a1{
            float:left;
            margin-left:450px;
            margin-top:40px;
            margin-bottom:40px;
            height: 90px;
            width: 100px;
        }
        .a2{
            float:left;
            margin-top:70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="top">
        <div class="a1">
            <img src="img/搜索小猫.png" style="height: 90px; width: 100px"/>
        </div>
        <div class="a2">
            <asp:TextBox ID="TextBox1" runat="server" Height="45px" Width="450px" Font-Size="15pt"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="搜索" Height="45px" Width="125px" Font-Size="15pt" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>

