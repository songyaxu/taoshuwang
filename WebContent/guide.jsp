<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>购物指南</title>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- jQuery (necessary JavaScript plugins) -->
        <script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
        <!-- Custom Theme files -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <!-- Custom Theme files -->
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Furnyish Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

        <!-- start menu -->
        <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/megamenu.js"></script>
        <script>$(document).ready(function () {
        $(".megamenu").megamenu();
    });</script>
        <script src="js/menu_jquery.js"></script>
        <script src="js/simpleCart.min.js"></script>
        <script src="js/responsiveslides.min.js"></script>
        <script>
            // You can also use "$(window).load(function() {"
            $(function () {
                // Slideshow 1
                $("#slider1").responsiveSlides({
                    auto: true,
                    nav: true,
                    speed: 500,
                    namespace: "callbacks",
                });
            });
        </script>

    </head>
    <body>
        <!-- header -->
        <%@include file="head.jsp"%>
        <!---->
        <div class="contact">
            <div class="container">
                <ol class="breadcrumb">
                    <li><a href="LoadProduct.action">主页</a></li>
                    <li class="active">购物指南</li>
                </ol>
                <div class="contact-head">
                    <h2>购物指南</h2>
                    <div class="col-md-6 contact-left">
                        使用流程</br></br>
                        进入主界面</br> </br>
                        选择喜欢的图书 </br></br>
                        点击加入购物车</br></br>
                        进入购物车界面<br></br>
                        点击结算<br></br>
                        选择收货地址<br></br>
                        点击提交<br></br>
                        下单完成<br>

                    </div>
                    <div class="col-md-6 contact-right">
                        <div class="logo">
                            <a href="LoadProduct.action"><img src="images/logo.png" alt=""/></a>			 
                        </div>
                        </br>
                        </br>
                        在您购书的过程中如果发生了什么您无法解决的问题，请及时拨打客服电话，我们将尽快为您解决问题。也请您放心购物。
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!---->
        <%@include file="foot.jsp"%>
        <!---->
    </body>
</html>
