<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .welcome{
            width:480px;
            height: 550px;
            float:left;
            font-size: 30px;
            font-weight: bold;
            line-height:70px;
        }
        .a1{
            width:460px;
            height: 300px;
            background-color:beige;
            text-align:center;
            line-height:80px;
            font-size: 30px;
        }
        .a2{
            width:480px;
            height: 250px;
        }
    .carousel {
        width: 1050px; 
        float:left;
        position: relative;
        height: 550px;
        margin: 0 auto 25px;
        overflow: hidden;
        border-radius: 15px;
        box-shadow: 0 2px 10px rgba(0,0,0,0.2);
    }
    .carousel img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        display: none;
    }
    .carousel img.active {
        display: block;
    }
    .arrow {
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        font-size: 40px;
        color: white;
        background-color: rgba(0,0,0,0.3);
        padding: 10px;
        cursor: pointer;
        border-radius: 50%;
        user-select: none;
        z-index: 10;
    }
    .arrow:hover {
        background-color: rgba(0,0,0,0.5);
    }
    .arrow.left {
        left: 20px;
    }

    .arrow.right {
        right: 20px;
    }
    .dish-gallery{
        clear:both;
        width:1600px;
    }
    .b1{
        text-align:center;
        font-size: 26px;
        font-weight: bold;
        background-color:cornsilk;
        height:50px;
        line-height:50px;
    }
    .b1-1{
        width:1505px;
        height:50px;
        float:left;
        background-color:cornsilk;
    }
    .b1-2{
        float:left;
        height:50px;
        background-color:cornsilk;
    }
    .b1-2 a{
        text-decoration:none;
        color:black;
    }
    .b1-2 a:hover{
        color:blue;
    }
    .b2{
        height:120px;
    }
    .b2 img {
        width: 100px;      /* 设置宽度（或高度，保持一致） */
        height: 100px;     /* 高度和宽度一致，才能变成圆形 */
        border-radius: 50%; /* 圆角设置成50%，形成圆形 */
        object-fit: cover;
        margin-left: 200px;
        margin-right: 200px;
        margin-top:30px;
    }
    .c1{
        width:523px;
        float:left;
    }
    .c1 a{
        text-decoration: none;
        color: black;
    }
    .c1 a:hover{
        color:#ff9866;
    }
    .c2{
        width:517px;
        float:left;
    }
    .c2 a{
        text-decoration: none;
        color: black;
    }
    .c2 a:hover{
        color:#ff9866;
    }
    .c3{
        width:552px;
        float:left;
    }
    .c3 a{
        text-decoration: none;
        color: black;
    }
    .c3 a:hover{
        color:#ff9866;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="welcome">
        <div class="a1">
            欢迎来到小猫烹饪！<br />
            探索丰富菜谱，发现烹饪乐趣，<br />
            让你的厨房变得更精彩！
        </div>
        <div class="a2"><img src="img/欢迎小猫.png" style="width: 180px; height: 180px; margin-left: 156px; margin-top: 65px"/></div>
    </div>
    <div class="carousel">
        <img src="img/推荐图片1.jpg" class="active" alt="推荐菜谱1" />
        <img src="img/推荐图片2.jpg" alt="推荐菜谱2" />
        <img src="img/推荐图片3.jpg" alt="推荐菜谱3" />
        <div class="arrow left" onclick="prevSlide()">&#10094;</div>
        <div class="arrow right" onclick="nextSlide()">&#10095;</div>
    </div>

    <div class="dish-gallery">
        <div class="b1">
            <div class="b1-1">热门推荐区</div>
            <div class="b1-2"><a href="gd.aspx">更多>></a></div>
        </div>
        <div class="b2">
            <img src="img/炒.png" alt="炒"/>
            <img src="img/煮.png" alt="煮"/>
            <img src="img/炸.png" alt="炸"/>
        </div>
        <div class="c1">
            <img src="img/宫保鸡丁.jpg" alt="宫保鸡丁" style="height: 235px; width: 443px; margin-left: 7px;" />
            <h3><a href="gbjd.aspx">宫保鸡丁</a></h3>
            <p>川菜代表，香辣可口，经典不败。</p>
        </div>
        <div class="c2">
            <img src="img/可乐鸡翅.jpg" alt="可乐鸡翅" style="height: 235px; width: 443px; margin-left: 0px;" />
            <h3><a href="kljc.aspx">可乐鸡翅</a></h3>
            <p>咸甜适口，肉质鲜嫩，人人喜爱。</p>
        </div>
        <div class="c3">
            <img src="img/炸猪排.jpg" alt="炸猪排" style="height: 235px; width: 443px; margin-left: 0px;" />
            <h3><a href="zzp.aspx">炸猪排</a></h3>
            <p>外酥里嫩，香而不腻，百吃不厌。</p>
        </div>
    </div>

    <script>
        var index = 0;
        var images = document.querySelectorAll(".carousel img");

        function showSlide(i) {
            images.forEach((img, idx) => {
                img.classList.toggle("active", idx === i);
            });
        }

        function nextSlide() {
            index = (index + 1) % images.length;
            showSlide(index);
        }

        function prevSlide() {
            index = (index - 1 + images.length) % images.length;
            showSlide(index);
        }

        // 自动轮播（可选）
        setInterval(nextSlide, 5000); // 每5秒自动切换
    </script>
</asp:Content>

