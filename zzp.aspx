<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="zzp.aspx.cs" Inherits="zzp" %>

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
        <div><h2>炸猪排</h2></div>
        <div><img src="img/炸猪排.jpg" style="height: 565px; width: 594px; margin-left: 0px; margin-top: 0px;"/></div>
    </div>
    <div class="right">
        <div style="background-color:#ffe4e4;"><h3>食材明细</h3></div>
        <div class="a1">
            猪里脊肉两块，面包糠适量，鸡蛋1个，淀粉适量，盐适量，番茄酱适量
        </div>
        <div class="b1"><h3>做法步骤</h3></div>
        <div class="a1">
            <ol>
                <li>准备好主辅料，鸡蛋打入碗中搅拌均匀，里脊肉提前泡水一个小时左右。</li>
                <li>肉片均匀的撒上少许盐粒用刀背拍打松散。</li>
                <li>抹上淀粉。</li>
                <li>裹上蛋液，裹上面包糠。</li>
                <li>入油锅炸至，中小火。</li>
                <li>金黄色捞出控油。</li>
                <li>切块，挤上番茄酱即可享用。</li>
            </ol>
        </div>
        <div style="background-color:#feefff;"><h3>小窍门</h3></div>
        <div class="a1">
            <li>肉片泡水是为了去腥和去血水。</li>
            <li>也可以提前腌制一下，不过这样更鲜。</li>
        </div>
    </div>
</asp:Content>

