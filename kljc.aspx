<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kljc.aspx.cs" Inherits="kljc" %>

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
        <div><h2>可乐鸡翅</h2></div>
        <div><img src="img/可乐鸡翅.jpg" style="height: 565px; width: 593px; margin-left: 0px; margin-top: 0px;"/></div>
    </div>
    <div class="right">
        <div style="background-color:#ffe4e4;"><h3>食材明细</h3></div>
        <div class="a1">鸡中翅5只，葱段若干，生抽1匙，老抽半匙，百事可乐1罐，白芝麻少许</div>
        <div class="b1"><h3>做法步骤</h3></div>
        <div class="a1">
            <ol>
                <li>在鸡翅两面划刀，以便入味。</li>
                <li>把鸡翅放入冷水中焯水，倒入料酒去腥。</li>
                <li>煮开后捞去浮沫。</li>
                <li>把鸡翅捞出。</li>
                <li>锅内倒入油并撒盐，以防粘锅。</li>
                <li>小火慢煎至鸡翅两面金黄。</li>
                <li>加入葱白，生抽，老抽，冰糖。</li>
                <li>倒入可乐淹没鸡翅。</li>
                <li>盖上锅盖小火慢熬。</li>
                <li>大火收汁并撒上白芝麻。</li>
                <li>最后撒上葱花，出锅。
            </ol>
        </div>
        <div style="background-color:#feefff;"><h3>小窍门</h3></div>
        <div class="a1">可乐尽量用百事的，偏甜。可口可乐有点苦。</div>
    </div>
</asp:Content>

