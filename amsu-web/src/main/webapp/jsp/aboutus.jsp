<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title> -阿木科技</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.5.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lunbo.js"></script>
<link href="${pageContext.request.contextPath}/css/lunbo.css" rel="stylesheet" />
</head>

<body>
	<div width="100%">
		<div class="head">
			<div class="head-left">
				<img src="${pageContext.request.contextPath}/images/logo_03.png" class="headimg">
			</div>
			<div class="head-right">
				联系电话<br> 0755-23774637
			</div>
		</div>
		
		<div class="body">
			<div class="index">  
				<div class="indexshow">
					<div class="indexItem1">  
						<a href="${pageContext.request.contextPath}/index.jsp">首页</a>
					</div>
					<div class="indexItem1">  
						<a href="${pageContext.request.contextPath}/jsp/product.jsp">产品中心</a>
					</div>
					<div class="indexItem">  
						<a href="${pageContext.request.contextPath}/jsp/aboutus.jsp" class="aStyle">关于我们</a>
					</div>
					<div class="indexItem1">  
						<a href="${pageContext.request.contextPath}/toConsultjsp.do">行业资讯</a>
					</div>
				</div>
			</div>
			<div class="aboutus_topimage" >
				<img src="${pageContext.request.contextPath}/images/aboutus_02.png" width="100%" height="300">
			</div>
			<div class="aboutus_middle">
				<div class="aboutus_middle_toptext">
					MAIN PRODUCT
				</div>
				<div class="aboutus_middle_middletext">
					——主打产品——
				</div>
				<div class="aboutus_middle_images">
					<div class="aboutus_middle_imageitem0">
						<img src="${pageContext.request.contextPath}/images/aboutus_05.png" class="aboutus_middle_images_image">
					</div>
					<div class="aboutus_middle_imageitem">
						<img src="${pageContext.request.contextPath}/images/aboutus_07.png"  class="aboutus_middle_images_image">
					</div>
					<div class="aboutus_middle_imageitem">
						<img src="${pageContext.request.contextPath}/images/aboutus_09.png" class="aboutus_middle_images_image">
					</div>
				</div>
			</div>
			<div class="aboutus_middle">
				<div class="aboutus_middle_image">
					<div class="aboutus_middle_image_item1">
						<img src="${pageContext.request.contextPath}/images/aboutus_14.png" class="aboutus_middle_image_item1">
					</div>
					<div class="aboutus_middle_image_item2">
						<img src="${pageContext.request.contextPath}/images/aboutus_15.png"  class="aboutus_middle_image_item2">
					</div>
					<div class="aboutus_middle_image_text">
						<div style="font-size:32px;color:#333;">
							<b>关于我们</b><br/><br/>
						</div>
						<div style="font-size:15px;color:#666">
							公司创立伊始便研发时尚、实用的可穿戴智能健<br/>
							康设备，满足广大消费者需求为己任，本着“设计<br/>
							引导消费，创新实现价值”的理念，以独特的角<br/>
							度，人性化的思维模式，引导可穿戴智能健康设备<br/>
							的潮流，通过对行业资源的整合，依赖产品研发<br/>
							方向的科学性和强有力的品质控制，取得了骄人的<br/>
							业绩。
						</div>
					</div>
				</div>
			</div>
			<div class="aboutus_middle">
				<img src="${pageContext.request.contextPath}/images/aboutus_19.png" class="aboutus_middle_image_right">
				<div class="aboutus_middle_text">
					<div style="font-size:32px;color:#333 ;margin-top:60px" >
							<b>产品/服务</b><br/><br/>
					</div>
					<div style="font-size:15px;color:#666">
							信息技术、电子产品、可穿戴智能<br/>
							健康产品的研发<br/>
							阿木科技长期的发展方向时针对运<br/>
							动和养老介护的健康数据分析<br/>
					</div>
					<img src="${pageContext.request.contextPath}/images/aboutus_21.png"  class="aboutus_middle_image_bootm">
				</div>
			</div>
			
			<div class="aboutus_middle_bootm">
				<img src="${pageContext.request.contextPath}/images/aboutus_26.png" class="aboutus_middle_bootm_right">
				<div class="aboutus_middle_bootm_text">
					<div style="font-size:32px;color:#333 ;margin-top:60px" >
							<b>我们的荣誉</b><br/><br/>
					</div>
					<div style="font-size:15px;color:#666">
							2016年9月，运动负荷心电图分析智能跑步样衣推出，2016<br/>
							年11月亮相深圳高交会。收到CCTV专访，并在【朝闻天下】播<br/>
							出，此外还受到多家媒体的关注和报道。<br/>
							阿木科技提供的确切的说是基于运动负荷心电图采集并且储存、<br/>
							分析的心脏监控系统。实现了电极与布料的一体融合，并将心电<br/>
							图实时展示给用户。<br/>
					</div>
					<div class="aboutus_middle_bootm_veido"> 
						<div  class="aboutus_middle_bootm_veido"> 
							<video id="video" class="aboutus_middle_bootm_veido"  controls poster="images/aboutus_29.png" type="application/x-mplayer2">
							  <source src="${pageContext.request.contextPath}/vedio/z0348s7q48c.10702.1.mp4" type="video/ogg">
							  <source src="movie.mp4" type="video/mp4">
							  <source src="movie.webm" type="video/webm">
							  <object data="${pageContext.request.contextPath}/vedio/z0348s7q48c.10702.1.mp4">
								<embed width="100%" height="940" src="vedio/z0348s7q48c.10702.1.mp4">
							  </object>
							</video>
						</div>
						<div class="body_images_left_play1" id="play" > 
							<img src="${pageContext.request.contextPath}/images/bofang_18.png" />
						</div>
					</div>
					
				 </div>
			</div>
		</div>
		
		
				
		<div class="bootm">
			<div class="bootm_text">
				COPYRIGHT:EMOJI:2016 阿木科技-AMSU<br/>
				粤ICP备16005435号-1
			</div>
		</div>
		
	</div>
	
	 
</body>

</html>


<style type="text/css">


</style>
