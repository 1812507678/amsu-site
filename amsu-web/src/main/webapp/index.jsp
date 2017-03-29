<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>首页-阿木科技</title>
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
					<div class="indexItem">  
						<a href="${pageContext.request.contextPath}/index.jsp">首页</a>
					</div> 
					<div class="indexItem1">   
						<a href="${pageContext.request.contextPath}/jsp/product.jsp"  class="aStyle">产品中心</a>
					</div>
					<div class="indexItem1">  
						<a href="${pageContext.request.contextPath}/jsp/aboutus.jsp">关于我们</a>
					</div> 
					<div class="indexItem1">  
						<a href="${pageContext.request.contextPath}/toConsultjsp.do">行业资讯</a>
					</div>
				</div>
			</div>
			<div class="carousel">   
				<div   class="carousel_vedio"> 
					<video  width="100%" height="100%" class="carousel_vedio_show" loop="loop" autoplay="autoplay" type="application/x-mplayer2">
					  <source src="${pageContext.request.contextPath}/vedio/v0346eq0ud.mp4" type="video/ogg">
					  <source src="${pageContext.request.contextPath}/vedio/v0346eq0ud.mp4" type="video/mp4">
					  <source src="movie.webm" type="video/webm">
					  <object data="vedio/v0346eq0ud.mp4" >
						<embed width="100%" height="100%" src="${pageContext.request.contextPath}/vedio/v0346eq0ud.mp4">
					  </object>
					</video>
				</div>
				
			</div>
			<div class="body_text1">  
				<p class="body_text1_text">运动更需要被保护</p>
			</div>
			<div class="body_line">  </div>
			<div class="body_text2"> 
				<p class="body_text1_text1">近年来全民健身掀起了马拉松运动热潮，马拉松运动是一项高强度，长距离有氧运动项目。心脏相关的发病也成<br/>
											为了跑步运动的最大威胁。帮助使用者在运动中通过心电图来监控心脏的变异，江都运动风险。</p>
				<div class="knowmore">
					<div class="imageStyle">
						<a href=""><img src="${pageContext.request.contextPath}/images/button_15.png" /></a>
					</div>
					
						<a href="${pageContext.request.contextPath}/jsp/product.jsp" class="body_text_knowmore"> 了解更多</a>

					
					
				</div>
			</div>
			<div class="body_images"> 
				<div class="body_images_left"> 
					<div   class="videoPlay"> 
						<video id="video" width="100%" height="940" controls poster="${pageContext.request.contextPath}/images/images_02_24.jpg" type="application/x-mplayer2">
						  <source src="${pageContext.request.contextPath}/vedio/vedio001.mp4" type="video/ogg">
						  <source src="${pageContext.request.contextPath}/vedio/vedio001.mp4" type="video/mp4">
				 		  <source src="${pageContext.request.contextPath}/vedio/vedio001.mp4" type="video/webm">
						  <object data="${pageContext.request.contextPath}/vedio/vedio001.mp4" width="100%" height="940">
							<embed width="100%" height="940" src="vedio/vedio001.mp4">
						  </object>
						</video>
					</div>
					<div class="body_images_left_play" id="play" > 
						<img src="${pageContext.request.contextPath}/images/bofang_18.png" />
					</div>
				</div>
				
				<div class="body_images_right"> 
					<div class="body_images_right_top" id="body_images_right_top_mouseover"> 
						<div class="body_images_right_top_low"> 
							<img src="${pageContext.request.contextPath}/images/images_01_23.png" class="body_images_right_top_low_image"/>
						</div>
						<div class="body_images_right_top_float"> 
							<div style="font-size:20px">
								基于运动负荷心电图分析智能跑步衣<br/><br/>
							</div>
							<div style="font-size:16px">
								有氧运动与无氧运动的区分？根据心率在运动<br/>
								中变化的拐点，进行精确的计算<br/><br/><br/>
							</div>
							<div style="font-size:18px">
								<a href="${pageContext.request.contextPath}/jsp/product.jsp">查看更多  ></a>
							</div>
							
						</div>
					</div>
					
					<div class="body_images_right_bootm"> 
						<div class="body_images_right__bootm_left" id="body_images_right__bootm_left_mouseover"> 
							<div class="body_images_right__bootm_left_low">
								<img src="${pageContext.request.contextPath}/images/images_02_24.png" class="body_images_right_bootm_image" id="body_images_right_bootm_image_left" />
							</div>
							<div class="body_images_right__bootm_left_float">
								<div style="font-size:20px">
									基于运动负荷心电图分析智能跑步衣<br/><br/>
								</div>
								<div style="font-size:16px">
									有氧运动与无氧运动的区分？根据心率在运动<br/>
									中变化的拐点，进行精确的计算<br/><br/><br/>
								</div>
								<div style="font-size:18px">
									<a href="${pageContext.request.contextPath}/jsp/product.jsp">查看更多  ></a>
								</div>
							</div>
						</div>
						<div class="body_images_right__bootm_right" id="body_images_right__bootm_right_mouseover"> 
							<div class="body_images_right__bootm_right_low">
								<img src="${pageContext.request.contextPath}/images/images_03_25.png" class="body_images_right_bootm_image" id="body_images_right_bootm_image_right"/>
							</div>
							<div class="body_images_right__bootm_right_float">
								<div style="font-size:20px">
									基于运动负荷心电图分析智能跑步衣<br/><br/>
								</div>
								<div style="font-size:16px">
									有氧运动与无氧运动的区分？根据心率在运动<br/>
									中变化的拐点，进行精确的计算<br/><br/><br/>
								</div>
								<div style="font-size:18px">
									<a href="${pageContext.request.contextPath}/jsp/product.jsp">查看更多  ></a>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
			
			<div class="body_textandimag">
				<div class="body_textandimag_text">
					<div class="body_textandimag_text_image">
						<img src="${pageContext.request.contextPath}/images/dt_ydfhxdt_29.png" />
					</div>
					<div class="body_textandimag_text_text">
						实时心电图：能够在实时显示运动状态下动态心电图，分析心跳过<br/>
						速、过缓、早搏、漏博<br/>
						实时心率：能够实时显示静态和动态心率，用户可以根据心率调整<br/>
						自己的运动状态<br/>
						HRR：运动后的心率恢复能力，可以票判断出用户的心脏恢复能力<br/>
						及和同类人群的比较<br/>
						HRV:心率变异性，可以分析用户的生理、心理疲劳状态，帮助用户<br/>
						调整锻炼，了解体征变化<br/>
						数据异常报警：数据异常同时发送本人和家人进行提醒！
					</div>
				</div>
				<div class="body_textandimag_image">
					<div class="body_textandimag_image_image">
						<img src="${pageContext.request.contextPath}/images/images_04_29.png" />
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
	</div> 
</body>
</html>