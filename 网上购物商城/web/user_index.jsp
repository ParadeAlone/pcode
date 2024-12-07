<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="./Style/user_index.css">
<html>
<head>
    <title>商城首页</title>
</head>

<body>
<p class="header">${footName}</p>
<div class="top">
    <div class="dropdown">
        <button class="dropbtn">商品分类</button>
        <div class="dropdown-content">
            <a href="/FindCommodity?id=3">服装类</a>
            <a href="/FindCommodity?id=5">食物类</a>
            <a href="/FindCommodity?id=6">模型类</a>
            <a href="/FindCommodity?id=8">玩偶类</a>
            <a href="/FindCommodity?id=7">全部商品</a>
        </div>
    </div>

    <div class="search-box">
        <form action="/FindCommodity?id=2" method="post">
            <input type="text" name="text1" placeholder="请输入与您要搜索的商品名称">
            <button type="submit">Search</button>
        </form>
    </div>
    <span>当前登录的用户为:&nbsp;&nbsp;${userName}</span>
    <a href="/Car?demo=2" class="button">购物车</a>
    <a href="/Car?demo=3" class="button">我的订单</a>
    <a href="/Car?demo=8" class="button">我的收藏</a>
    <a href="/MyInfor?id=1" class="button">个人中心</a>
    <a href="login.html" class="button">退出登录</a>
</div>


<div class="container">
    <c:forEach items="${Arraylist1}" var="commodity">
        <div class="product">
            <a href="/Showgoods?id=${commodity.id}">
                <div class="product-content">
                    <img src="${commodity.img}" alt="Product Image" style="height: 200px">
                    <h3 class="product-name">${commodity.name}</h3>
                </div>
            </a>
        </div>
    </c:forEach>
</div>
</body>
</html>