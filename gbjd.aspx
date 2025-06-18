<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gbjd.aspx.cs" Inherits="gbjd" %>

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
        <div><h2>宫保鸡丁</h2></div>
        <div><img src="img/宫保鸡丁.jpg" style="height: 645px; width: 595px; margin-left: 0px; margin-top: 0px;"/></div>
    </div>
    <div class="right">
        <div style="background-color:#ffe4e4;"><h3>食材明细</h3></div>
        <div class="a1">
            鸡胸肉适量，大葱适量，油炸花生米适量，辣椒段适量，盐三分之一茶匙，生抽一汤匙，
            老抽两茶匙，香醋一汤匙，糖半茶匙，姜汁适量，鸡精适量，淀粉水一茶匙+一汤匙，花椒粉适量，白胡椒适量，料酒适量
        </div>
        <div class="b1"><h3>做法步骤</h3></div>
        <div class="a1">
            <ol>
                <li>鸡胸肉用刀背拍一下，切成大拇指甲大小的丁。</li>
                <li>用料酒一汤匙，食用油半汤匙，白胡椒半茶匙，盐半茶匙，淀粉一茶匙，腌渍十分钟入味。</li>
                <li>葱切段。</li>
                <li>锅里放油，七八成热下鸡丁炒变白。</li>
                <li>放入干辣椒，葱和一茶匙花椒粉，炒出香味。</li>
                <li>兑入料汁，大火炒到粘稠干松即可。</li>
                <li>关火，拌入花生米即可。</li>
            </ol>
        </div>
        <div style="background-color:#feefff;"><h3>小窍门</h3></div>
        <div class="a1">
            <li>用花椒粉，是因为炸花椒这个步骤，很危险，不小心就老了，而且碰到冷水会溅出来。花椒粉代替味道不差。</li>
            <li>用鸡腿肉更好吃，更嫩，而且火候的掌握不是很苛刻！但是就是没有鸡胸肉能切丁好看。</li>
            <li>这道菜全程要大火，煸炒鸡丁不能久，久了就会老。</li>
        </div>
    </div>
</asp:Content>

