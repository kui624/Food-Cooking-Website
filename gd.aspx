<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gd.aspx.cs" Inherits="gd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 170px;
        }
        .auto-style2 {
            width: 170px;
        }
        .auto-style3 {
            width: 170px;
        }
        .auto-style4 {
            width: 170px;
        }
        .auto-style5 {
            width: 170px;
        }
        .a1{
            font-size:29px;
        }
        .a1 a{
            text-decoration:none;
            color:black;
            font-size:24px;
        }
        .a1 a:hover{
            color:#ff7a7a;
        }
        .auto-style6 {
            width: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="a1">
        <table border="1" style="height: 300px; width: 1400px;text-align :center;border:solid">
            <tr>
                <td rowspan="3" style="background-color:#eec7d6" class="auto-style6">中式菜系</td>
                <td class="auto-style2"><a href="">川菜</a></td>
                <td class="auto-style1"><a href="">鲁菜</a></td>
                <td class="auto-style3"><a href="">闽菜</a></td>
                <td class="auto-style4"><a href="">苏菜</a></td>
                <td class="auto-style5"><a href="">湘菜</a></td>
            </tr>
            <tr>
                <td class="auto-style2"><a href="">粤菜</a></td>
                <td class="auto-style1"><a href="">浙菜</a></td>
                <td class="auto-style3"><a href="">徽菜</a></td>
                <td class="auto-style4"><a href="">淮扬菜</a></td>
                <td class="auto-style5"><a href="">东北菜</a></td>
            </tr>
            <tr>
                <td class="auto-style2"><a href="">晋菜</a></td>
                <td class="auto-style1"><a href="">鄂菜</a></td>
                <td class="auto-style3"><a href="">台湾美食</a></td>
                <td class="auto-style4"><a href="">香港美食</a></td>
                <td class="auto-style5"><a href="">澳门美食</a></td>
            </tr>
        </table>
    </div>
    <div class="a1">
        <table border="1" style="height: 230px; width: 1400px;text-align :center;border:solid">
            <tr>
                <td rowspan="2" style="background-color:#caddef" class="auto-style6">主食</td>
                <td class="auto-style2"><a href="">米饭</a></td>
                <td class="auto-style1"><a href="">五谷杂粮</a></td>
                <td class="auto-style3"><a href="">面条</a></td>
                <td class="auto-style4"><a href="">包子</a></td>
                <td class="auto-style5"><a href="">饺子</a></td>
            </tr>
            <tr>
                <td class="auto-style2"><a href="">馒头</a></td>
                <td class="auto-style1"><a href="">花卷</a></td>
                <td class="auto-style3"><a href="">饼</a></td>
                <td class="auto-style4"><a href="">粥</a></td>
                <td class="auto-style5"><a href="">馄饨</a></td>
            </tr>
        </table>
    </div>
    <div class="a1">
        <table border="1" style="height: 230px; width: 1400px;text-align :center;border:solid">
            <tr>
                <td rowspan="3" style="background-color:#f2f6ca" class="auto-style6">甜品</td>
                <td class="auto-style2"><a href="">果汁</a></td>
                <td class="auto-style1"><a href="">糖水</a></td>
                <td class="auto-style3"><a href="">布丁</a></td>
                <td class="auto-style4"><a href="">果酱</a></td>
                <td class="auto-style5"><a href="">果冻</a></td>
            </tr>
            <tr>
                <td class="auto-style2"><a href="">酸奶</a></td>
                <td class="auto-style1"><a href="">奶昔</a></td>
                <td class="auto-style3"><a href="">冰激凌</a></td>
                <td class="auto-style4"><a href="">巧克力</a></td>
                <td class="auto-style5"><a href="">巴斯克</a></td>
            </tr>
        </table>
    </div>
    <div class="a1">
        <table border="1" style="height: 230px; width: 1400px;text-align :center;border:solid">
            <tr>
                <td rowspan="3" style="background-color:#e0c4a9" class="auto-style6">烘焙</td>
                <td class="auto-style2"><a href="">蛋糕</a></td>
                <td class="auto-style1"><a href="">面包</a></td>
                <td class="auto-style3"><a href="">饼干</a></td>
                <td class="auto-style4"><a href="">吐司</a></td>
                <td class="auto-style5"><a href="">慕斯</a></td>
            </tr>
            <tr>
                <td class="auto-style2"><a href="">曲奇</a></td>
                <td class="auto-style1"><a href="">翻糖</a></td>
                <td class="auto-style3"><a href="">披萨</a></td>
                <td class="auto-style4"><a href="">派塔</a></td>
                <td class="auto-style5"><a href="">月饼</a></td>
            </tr>
        </table>
    </div>
</asp:Content>

