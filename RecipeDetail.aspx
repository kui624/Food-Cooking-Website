<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RecipeDetail.aspx.cs" Inherits="RecipeDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .left{
            float:left;
            width:600px;
        }
        .right{
            float:left;
            width:900px;
        }
        .a1{
            border: 1px solid #808080; 
            font-size:23px;
        }
        .a1 ol{
            margin-top: 0;
            margin-bottom: 0;
        }
        .b1{
            background-color:#f8ffc4;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="left">
    <div><h2><asp:Label ID="lblRecipeName" runat="server" Text=""></asp:Label></h2></div>
    <div><h3>作者: <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h3></div>
    <div><asp:Image ID="imgRecipe" runat="server" style="height: 640px; width: 600px; margin-left: 0px; margin-top: 0px;"/></div>
</div>
<div class="right">
    <div style="background-color:#ffe4e4;"><h3>食材明细</h3></div>
    <div class="a1">
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    </div>
    <div class="b1"><h3>做法步骤</h3></div>
    <div class="a1">
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    </div>
    <div style="background-color:#feefff;"><h3>小窍门</h3></div>
    <div class="a1">
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
    </div>
</div>
</asp:Content>

