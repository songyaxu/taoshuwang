<%@page import="com.xujie.entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
<head>
<title>主页</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<style type="text/css">
body,td,th {
	font-family: Raleway, sans-serif;
}
</style>
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="js/menu_jquery.js"></script>
<script src="js/simpleCart.min.js"> </script>
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
  
<meta charset="utf-8">
</head>
<body>
<!-- header -->
<%! User user=null;%>
<div class="top_bg">
	<div class="container">
		<div class="header_top-sec">
			<div class="top_right">
				<ul>
					<li><a href="help.jsp">帮助</a></li>|
					<li><a href="contact.jsp">联系我们</a></li>|
					<%
					 	user=(User)session.getAttribute("user"); 
						if(user==null){
					%>
					<li><a href="login.jsp">我的订单</a></li>
					<% } else {%>
					<li><a href="orderInfo.action">我的订单</a></li>
					<% }%>
				</ul>
			</div>
			<div class="top_left">
				<ul>
					<%
						if(user==null){
					%>
					<li class="top_link"><a href="login.jsp">我的账户</a></li>	
					<% 
					}
					else{ 
					%>	
					<li class="top_link"><a href="info.jsp"><%=user.getUsername()%></a></li>|
					<li><a href="userService!loginOut.action">退出登录</a></li>	
					<% } %>		
				</ul>
			</div>
				<div class="clearfix"> </div>
		</div>
	</div>
</div>
<div class="header_top">
	 <div class="container">
		 <div class="logo">
		 	<a href="LoadProduct.action"><img src="images/logo.png" alt=""/></a>			 
		 </div>
		 <div class="header_right">
		 	<% if(user==null){%>	
			 <div class="login">
				 <a href="login.jsp">登录</a>
			 </div>
			 <% } %>
			 <div class="cart box_1">
				<a href="cart.jsp">
					<h3> <span> </span> <span id="simpleCart_quantity" >我的购物</span>车<img src="images/bag.png" alt=""></h3>
				</a>
				<div class="clearfix"> </div>
			 </div>				 
		 </div>
		  <div class="clearfix"></div>	
	 </div>
</div>
<!--cart-->
	 
<!------>
<div class="mega_nav">
	 <div class="container">
		 <div class="menu_sec">
		 <!-- start header menu -->
		 <ul class="megamenu skyblue">
			 <li class="active grid"><a class="color1" href="LoadProduct.action">主页</a></li>
			 <li class="grid"><a class="color2" href="#">文艺</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>小说传记</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=热门小说">热门小说</a></li>
									<li><a href="searchTypeBook.action?booktype=历史人物">历史人物</a></li>
									<li><a href="searchTypeBook.action?booktype=历代帝王">历代帝王</a></li>
									<li><a href="searchTypeBook.action?booktype=军事人物">军事人物</a></li>
									<li><a href="searchTypeBook.action?booktype=科幻小说">科幻小说</a></li>									
									<li><a href="searchTypeBook.action?booktype=武侠小说">武侠小说</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>动漫幽默</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=大陆漫画">大陆漫画</a></li>
									<li><a href="searchTypeBook.action?booktype=港台漫画">港台漫画</a></li>
									<li><a href="searchTypeBook.action?booktype=日韩漫画">日韩漫画</a></li>
									<li><a href="searchTypeBook.action?booktype=欧美漫画">欧美漫画</a></li>
									<li><a href="searchTypeBook.action?booktype=幽默笑话">幽默笑话</a></li>
									<li><a href="searchTypeBook.action?booktype=其它漫画">其它漫画</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>青春文学</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=爱情/情感">爱情/情感</a></li>
									<li><a href="searchTypeBook.action?booktype=校园">校园</a></li>
									<li><a href="searchTypeBook.action?booktype=娱乐/偶像">娱乐/偶像</a></li>
									<li><a href="searchTypeBook.action?booktype=古代言情">古代言情</a></li>
									<li><a href="searchTypeBook.action?booktype=影视写真">影视写真</a></li>
									<li><a href="searchTypeBook.action?booktype=青春文学">青春文学</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>艺术摄影</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=摄影">摄影</a></li>
									<li><a href="searchTypeBook.action?booktype=设计">设计</a></li>
									<li><a href="searchTypeBook.action?booktype=音乐">音乐</a></li>
									<li><a href="searchTypeBook.action?booktype=收藏鉴赏">收藏鉴赏</a></li>
									<li><a href="searchTypeBook.action?booktype=艺术理论">艺术理论</a></li>
									<li><a href="searchTypeBook.action?booktype=世界艺术">世界艺术</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>偶像明星</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=娱乐/偶像">娱乐/偶像</a></li>
									<li><a href="searchTypeBook.action?booktype=青春偶像">青春偶像</a></li>
									<li><a href="searchTypeBook.action?booktype=成长">成长</a></li>
									<li><a href="searchTypeBook.action?booktype=励志">励志</a></li>
									<li><a href="searchTypeBook.action?booktype=校园">校园</a></li>
									<li><a href="searchTypeBook.action?booktype=情感">情感</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
			<li><a class="color4" href="#">生活</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>两性</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=两性关系">两性关系</a></li>
									<li><a href="searchTypeBook.action?booktype=婚姻">婚姻</a></li>
									<li><a href="searchTypeBook.action?booktype=恋爱">恋爱</a></li>
									<li><a href="searchTypeBook.action?booktype=性">性</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>家庭</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=家庭/家居">家庭/家居</a></li>
									<li><a href="searchTypeBook.action?booktype=家庭和谐">家庭和谐</a></li>
									<li><a href="searchTypeBook.action?booktype=家庭园艺">家庭园艺</a></li>
									<li><a href="searchTypeBook.action?booktype=家装">家装</a></li>
									<li><a href="searchTypeBook.action?booktype=家事窍门">家事窍门</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>旅游</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=国内旅游自助指南">国内旅游自助指南</a></li>
									<li><a href="searchTypeBook.action?booktype=国外旅游自助指南">国外旅游自助指南</a></li>
									<li><a href="searchTypeBook.action?booktype=旅游随笔">旅游随笔</a></li>
									<li><a href="searchTypeBook.action?booktype=旅游知识">旅游知识</a></li>
									<li><a href="searchTypeBook.action?booktype=户外探险">户外探险</a></li>
									<li><a href="searchTypeBook.action?booktype=旅游地图">旅游地图</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>美食</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=烘焙甜品">烘焙甜品</a></li>
									<li><a href="searchTypeBook.action?booktype=家常菜谱">家常菜谱</a></li>
									<li><a href="searchTypeBook.action?booktype=茶酒饮料">茶酒饮料</a></li>
									<li><a href="searchTypeBook.action?booktype=饮食文化">饮食文化</a></li>
									<li><a href="searchTypeBook.action?booktype=地方美食">地方美食</a></li>
									<li><a href="searchTypeBook.action?booktype=西餐料理">西餐料理</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>运动</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=户外运动">户外运动</a></li>
									<li><a href="searchTypeBook.action?booktype=武术">武术</a></li>
									<li><a href="searchTypeBook.action?booktype=田径/体操">田径/体操</a></li>
									<li><a href="searchTypeBook.action?booktype=球类">球类</a></li>
									<li><a href="searchTypeBook.action?booktype=体育理论与教学">体育理论与教学</a></li>
									<li><a href="searchTypeBook.action?booktype=其他运动">其他运动</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>				
				<li><a class="color5" href="#">励志</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>励志/成功</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=成功案例">成功案例</a></li>
									<li><a href="searchTypeBook.action?booktype=失败总结">失败总结</a></li>
									<li><a href="searchTypeBook.action?booktype=励志">励志</a></li>
									<li><a href="searchTypeBook.action?booktype=成功法则">成功法则</a></li>
									<li><a href="searchTypeBook.action?booktype=时间管理">时间管理</a></li>									
									<li><a href="searchTypeBook.action?booktype=理想与思路">理想与思路</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>心灵修养</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=心灵/感悟">心灵/感悟</a></li>
									<li><a href="searchTypeBook.action?booktype=心智/心态">心智/心态</a></li>
									<li><a href="searchTypeBook.action?booktype=幸福快乐">幸福快乐</a></li>
									<li><a href="searchTypeBook.action?booktype=品德/修养">品德/修养</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>职场</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=职场秘籍">职场秘籍</a></li>
									<li><a href="searchTypeBook.action?booktype=职场人际线">职场人际线</a></li>
									<li><a href="searchTypeBook.action?booktype=职业规划">职业规划</a></li>
									<li><a href="searchTypeBook.action?booktype=升职/加薪">升职/加薪</a></li>
                                    <li><a href="searchTypeBook.action?booktype=职场心态划">职场心态划</a></li>
								</ul>	
							</div>												
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
				<li><a class="color6" href="#">科技</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>科普读物</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=宇宙知识">宇宙知识</a></li>
									<li><a href="searchTypeBook.action?booktype=百科知识">百科知识</a></li>
									<li><a href="searchTypeBook.action?booktype=科学世界">科学世界</a></li>
									<li><a href="searchTypeBook.action?booktype=生物世界">生物世界</a></li>
									<li><a href="searchTypeBook.action?booktype=生态环境">生态环境</a></li>									
									<li><a href="searchTypeBook.action?booktype=人类故事">人类故事</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>计算机网络</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=程序设计">程序设计</a></li>
									<li><a href="searchTypeBook.action?booktype=图形图像/多媒体">图形图像/多媒体</a></li>
									<li><a href="searchTypeBook.action?booktype=网络与数据通信">网络与数据通信</a></li>
									<li><a href="searchTypeBook.action?booktype=计算机理论">计算机理论</a></li>
									<li><a href="psearchTypeBook.action?booktype=人工智能">人工智能</a></li>
									<li><a href="searchTypeBook.action?booktype=信息安全">信息安全</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>工业设计</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=电工技术">电工技术</a></li>
									<li><a href="searchTypeBook.action?booktype=化学工业">化学工业</a></li>
									<li><a href="searchTypeBook.action?booktype=轻工业/手工业">轻工业/手工业</a></li>
									<li><a href="searchTypeBook.action?booktype=航空/航天">航空/航天</a></li>
									<li><a href="searchTypeBook.action?booktype=水利工程">水利工程</a></li>
									<li><a href="searchTypeBook.action?booktype=能源与动力">能源与动力</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>建筑</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=建筑标准\规范">建筑标准\规范</a></li>
									<li><a href="searchTypeBook.action?booktype=建筑科学">建筑科学</a></li>
									<li><a href="searchTypeBook.action?booktype=建筑施工与监理">建筑施工与监理</a></li>
									<li><a href="searchTypeBook.action?booktype=工程经济与管理">工程经济与管理</a></li>
									<li><a href="searchTypeBook.action?booktype=建筑外观设计">建筑外观设计</a></li>
									<li><a href="searchTypeBook.action?booktype=建筑文化">建筑文化</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>自然科学</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=生物科学">生物科学</a></li>
									<li><a href="searchTypeBook.action?booktype=地球科学">地球科学</a></li>
									<li><a href="searchTypeBook.action?booktype=化学">化学</a></li>
									<li><a href="searchTypeBook.action?booktype=力学">力学</a></li>
									<li><a href="searchTypeBook.action?booktype=物理学">物理学</a></li>
									<li><a href="searchTypeBook.action?booktype=数学">数学</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>				
			
				<li><a class="color7" href="#">人文社科</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>哲学宗教</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=哲学人生">哲学人生</a></li>
									<li><a href="searchTypeBook.action?booktype=宗教理论">宗教理论</a></li>
									<li><a href="searchTypeBook.action?booktype=哲学理论">哲学理论</a></li>
									<li><a href="searchTypeBook.action?booktype=佛学">佛学</a></li>
									<li><a href="searchTypeBook.action?booktype=世界哲学">世界哲学</a></li>									
									<li><a href="searchTypeBook.action?booktype=思维科学">思维科学</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>历史</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=历史普及读物">历史普及读物</a></li>
									<li><a href="searchTypeBook.action?booktype=历史随笔">历史随笔</a></li>
									<li><a href="searchTypeBook.action?booktype=史学理论">史学理论</a></li>
									<li><a href="searchTypeBook.action?booktype=中国史">中国史</a></li>
									<li><a href="searchTypeBook.action?booktype=世界史">世界史</a></li>
									<li><a href="searchTypeBook.action?booktype=民族史">民族史</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>政治军事</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=中国政治">中国政治</a></li>
									<li><a href="searchTypeBook.action?booktype=世界政治">世界政治</a></li>
									<li><a href="searchTypeBook.action?booktype=军事理论">军事理论</a></li>
									<li><a href="searchTypeBook.action?booktype=军事技术">军事技术</a></li>
									<li><a href="searchTypeBook.action?booktype=国际问题">国际问题</a></li>
									<li><a href="searchTypeBook.action?booktype=军事热点">军事热点</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>社会科学</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=社会学">社会学</a></li>
									<li><a href="searchTypeBook.action?booktype=社会科学总论">社会科学总论</a></li>
									<li><a href="searchTypeBook.action?booktype=语言文字">语言文字</a></li>
									<li><a href="searchTypeBook.action?booktype=文化人类学">文化人类学</a></li>
									<li><a href="searchTypeBook.action?booktype=图书馆学/档案学">图书馆学/档案学</a></li>
									<li><a href="searchTypeBook.action?booktype=新闻传播出版">新闻传播出版</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>经济</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=经济学理论">经济学理论</a></li>
									<li><a href="searchTypeBook.action?booktype=中国经济">中国经济</a></li>
									<li><a href="searchTypeBook.action?booktype=经济史">经济史</a></li>
									<li><a href="searchTypeBook.action?booktype=贸易政策">贸易政策</a></li>
									<li><a href="searchTypeBook.action?booktype=保险">保险</a></li>
									<li><a href="searchTypeBook.action?booktype=经济法">经济法</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>				
			
				<li><a class="color8" href="#">儿童</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>科普/百科</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=科普">科普</a></li>
									<li><a href="searchTypeBook.action?booktype=生活常识">生活常识</a></li>
									<li><a href="searchTypeBook.action?booktype=历史读物">历史读物</a></li>
									<li><a href="searchTypeBook.action?booktype=百科">百科</a></li>
									<li><a href="searchTypeBook.action?booktype=数学">数学</a></li>									
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>动漫卡通</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=卡通">卡通</a></li>
									<li><a href="psearchTypeBook.action?booktype=漫画">漫画</a></li>
									<li><a href="searchTypeBook.action?booktype=连环画">连环画</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>幼儿启蒙</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=认知">认知</a></li>
									<li><a href="searchTypeBook.action?booktype=图话故事">图话故事</a></li>
									<li><a href="searchTypeBook.action?booktype=国学启蒙">国学启蒙</a></li>
									<li><a href="searchTypeBook.action?booktype=幼儿园教材">幼儿园教材</a></li>
									<li><a href="searchTypeBook.action?booktype=数学">数学</a></li>
									<li><a href="searchTypeBook.action?booktype=音乐">音乐</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>婴儿读物</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=">认知书</a></li>
									<li><a href="searchTypeBook.action?booktype=图画故事">图画故事</a></li>
									<li><a href="searchTypeBook.action?booktype=挂图卡片">挂图卡片</a></li>
									<li><a href="searchTypeBook.action?booktype=儿童歌谣">儿童歌谣</a></li>
									<li><a href="searchTypeBook.action?booktype=童话故事书">童话故事书</a></li>
									<li><a href="searchTypeBook.action?booktype=入园准备">入园准备</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>少儿期刊</h4>
								<ul>
									<li><a href="searchTypeBook.action?booktype=儿童文学">儿童文学</a></li>
									<li><a href="searchTypeBook.action?booktype=励志成长">励志成长</a></li>
									<li><a href="searchTypeBook.action?booktype=课外辅导">课外辅导</a></li>
									<li><a href="searchTypeBook.action?booktype=益智游戏">益智游戏</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>				
			   </ul> 
			   <div class="search">
				 <s:form action="searchBook">
					<input type="text" name="keyword" placeholder="请输入关键字">
					<input type="submit" value="">
				</s:form>
			 </div>
			 <div class="clearfix"></div>
		 </div>
	  </div>
</div>
</body>
</html>