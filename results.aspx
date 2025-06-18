<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="results.aspx.cs" Inherits="results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .a1{
            width:1600px;
        }
        .b1{
            font-size:40px;
        }
        .c1{
            margin-top:10px;
            font-size:30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="a1">
        <div class="b1">
            查到<asp:Label ID="Label1" runat="server" Text="" style="color:#ff0000"></asp:Label>约
            <asp:Label ID="Label2" runat="server" Text="" style="color:#ff0000"></asp:Label>种结果
        </div>
        <div class="c1">
            <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div style="padding: 5px; border-bottom: 1px solid #ddd;">
                <a href='RecipeDetail.aspx?id=<%# Eval("id") %>' style="text-decoration: none; color: #333;">
                <strong><%# Eval("fname") %></strong> - 作者：<%# Eval("author") %>- <%# Eval("jianjie") %>
                </a>
                </div>
            </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>

