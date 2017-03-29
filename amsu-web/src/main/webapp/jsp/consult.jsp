<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>行业咨询-阿木科技</title>
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="css/paging.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.5.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/lunbo.js"></script>
<link href="${pageContext.request.contextPath}/css/lunbo.css"
	rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/query.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/paging.js"></script>
</head>
<script type="text/javascript">
	$(function(){
		
		var currIndex = 1;
		//var allArticleCount  =30;
		var allPagCount = ${pageNumbers};
		var grayItemIndex = 0;  // 0 1 2 3  ...  5
		
		
		$('#consult_article_pro').click(pro);
		function pro(){//��һҳ
			
			
			var items= $('.consult_article_next_item');
			
			var firstItemValue = items[0].innerHTML;
			if(firstItemValue==1){
				
				if(grayItemIndex==0){
					return;
				}
				
				grayItemIndex -=1;
				for(var i=0;i<items.length;i++){
					items[i].style.background="#1367b6";
				}
				items[grayItemIndex].style.background="#CCCCCC";
			}
			else{
				for(var i=0;i<items.length;i++){
					var value = parseInt(items[i].innerHTML)-1;
					items[i].innerHTML =value;
					items[i].style.background="#1367b6";
				}
				items[items.length-1].style.background="#CCCCCC";
				
			}
			currIndex -=1;
			$.ajax({
				url : "${pageContext.request.contextPath}/toConsultjspAjax.do",
				data   : {
					"pageNumber" : currIndex
				},
				type : "post",
				success : function(data){
					$.each(data.list,function(index,value){
						$(".consult_article_text").children("a").get(index).href=value.link;
						$("#cdiv"+index).children("div").get(0).innerHTML=value.monthAndDay;
						$("#cdiv"+index).children("div").get(1).innerHTML=value.year;
						$("#cdiv"+index).children("div").get(2).innerHTML=value.title;
						$("#cdiv"+index).children("div").get(3).innerHTML=value.synopsis;
					})
					
				}
			})
		}
		
		$('#consult_article_next').click(next);
		function next(){
			
			var items= $('.consult_article_next_item');
			
			var lastItemValue = items[items.length-1].innerHTML;
			if(lastItemValue==allPagCount){
				
				if(grayItemIndex==4){
					return;
				}
				grayItemIndex +=1;
				for(var i=0;i<items.length-1;i++){
					items[i].style.background="#1367b6";
				}
				items[grayItemIndex].style.background="#CCCCCC";
			}
			else{
				for(var i=0;i<items.length;i++){
					var value = parseInt(items[i].innerHTML)+1;
					items[i].innerHTML =value;
					items[i].style.background="#1367b6";
				}
				items[grayItemIndex].style.background="#CCCCCC";
			}
			currIndex +=1;
			$.ajax({
				url : "${pageContext.request.contextPath}/toConsultjspAjax.do",
				data   : {
					"pageNumber" : currIndex
				},
				type : "post",
				success : function(data){
					$.each(data.list,function(index,value){
						$(".consult_article_text").children("a").get(index).href=value.link;
						$("#cdiv"+index).children("div").get(0).innerHTML=value.monthAndDay;
						$("#cdiv"+index).children("div").get(1).innerHTML=value.year;
						$("#cdiv"+index).children("div").get(2).innerHTML=value.title;
						$("#cdiv"+index).children("div").get(3).innerHTML=value.synopsis;
					})
					
				}
			})
			
		}	
		
		$('.consult_article_next_item').click(next_item);
		function next_item(){  
			var items= $('.consult_article_next_item');
			for(var i=0;i<items.length;i++){
				items[i].style.background="#1367b6";
			}
			this.style.background="#CCCCCC";
			var thisColor  = this.style.background;
			
			currIndex = parseInt(this.innerHTML);
			for(var i=0;i<items.length;i++){
				if(items[i].style.background==thisColor){
					//alert(i);
					grayItemIndex =i;
					//return;
				}
			}
			$.ajax({
				url : "${pageContext.request.contextPath}/toConsultjspAjax.do",
				data   : {
					"pageNumber" : currIndex
				},
				type : "post",
				success : function(data){
					$.each(data.list,function(index,value){
						$(".consult_article_text").children("a").get(index).href=value.link;
						$("#cdiv"+index).children("div").get(0).innerHTML=value.monthAndDay;
						$("#cdiv"+index).children("div").get(1).innerHTML=value.year;
						$("#cdiv"+index).children("div").get(2).innerHTML=value.title;
						$("#cdiv"+index).children("div").get(3).innerHTML=value.synopsis;
					})
					
				}
			})
		}
		
		$.ajax({
			url : "${pageContext.request.contextPath}/toConsultjspAjax.do",
			data   : {
				"pageNumber" : currIndex
			},
			type : "post",
			success : function(data){
				//设置非置顶新闻(带分页)
				$.each(data.list,function(index,value){
					$(".consult_article_text").children("a").get(index).href=value.link;
					$("#cdiv"+index).children("div").get(0).innerHTML=value.monthAndDay;
					$("#cdiv"+index).children("div").get(1).innerHTML=value.year;
					$("#cdiv"+index).children("div").get(2).innerHTML=value.title;
					$("#cdiv"+index).children("div").get(3).innerHTML=value.synopsis;
				})
				//设置置顶新闻
				document.getElementById("topA").href=data.topInformation.link;
				document.getElementById("topTitle").innerHTML=data.topInformation.title;
				document.getElementById("topSynopsis").innerHTML=data.topInformation.synopsis;
			}
		})
	})
</script>
<body>
	<div width="100%">
		<div class="head">
			<div class="head-left">
				<img src="${pageContext.request.contextPath}/images/logo_03.png"
					class="headimg">
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
					<div class="indexItem1">
						<a href="${pageContext.request.contextPath}/jsp/aboutus.jsp"
							class="aStyle">关于我们</a>
					</div>
					<div class="indexItem">
						<a href="${pageContext.request.contextPath}/toConsultjsp.do">行业资讯</a>
					</div>
				</div>
			</div>
			<div class="consult_stick">
				<img src="${pageContext.request.contextPath}/images/images_03.png"
					class="consult_stick_image"> 
				<a id="topA" href="" target="view_window">
					<div class="consult_stick_text">
						<div id="topTitle" style="font-size: 24px; color: #000;">
							</div>
						<div id="topSynopsis" style="font-size: 15px; color: #999; margin-top: 40px">
							</div>
					</div>
				</a>

			</div>
			<div class="body_line"></div>
			<div class="consult_article">
				<div class="consult_article_text">
						<a href="" target="view_window">
							<div id="cdiv0" class="consult_article_text_item">

								<div style="font-size: 28px; color: #4a4a4a;">
									</div>
								<div style="font-size: 15px; color: #999;"></div>
								<div style="font-size: 20px; color: #666;">
								</div>
								<div style="font-size: 15px; color: #999">
								</div>
							</div>
						</a>
						<div class="consult_article_line"></div>
					
					<a href="" target="view_window">
						<div id="cdiv1" class="consult_article_text_item">  
							
							<div style="font-size:28px ;color:#4a4a4a ;">
									
							</div>
							<div style="font-size:15px ;color:#999 ;">
								
							</div>
							<div style="font-size:20px ;color:#666 ;">
								
							</div>
							<div style="font-size:15px ;color:#999 ">
								
							</div>
						</div>
					</a> 
					<div class="consult_article_line">  </div> 
					<a href="" target="view_window" >
						<div id="cdiv2" class="consult_article_text_item">  
							
							<div style="font-size:28px ;color:#4a4a4a ;">
									
							</div>
							<div style="font-size:15px ;color:#999 ;">
								
							</div>
							<div style="font-size:20px ;color:#666 ;">
								
							</div>
							<div style="font-size:15px ;color:#999 ">
								
							</div>
						</div>
					</a> 


				</div>
				<img src="${pageContext.request.contextPath}/images/images_07.png"
					class="consult_article_image">
				<div class="consult_article_page_next">
					<ul id="consultnext" class="consult_article_next">
						<li class="consult_article_next_item_pro" id="consult_article_pro">上一页</li>
						<c:choose>
							<c:when test="${pageNumbers>3}">
								<li class="consult_article_next_item">1</li>
								<li class="consult_article_next_item">2</li>
								<li class="consult_article_next_item">3</li>
								<li class="consult_article_next_item">4</li>
								<li class="consult_article_next_item">5</li>
							</c:when>     
							<c:otherwise>
								<c:forEach begin="1" end="${pageNumbers }" varStatus="status">
								<li class="consult_article_next_item">${status.index}</li>
								</c:forEach>
							</c:otherwise>
						</c:choose>
						<li class="consult_article_next_item_next"
							id="consult_article_next">下一页</li>
					</ul> 
					
				</div>
			</div>

			<div class="bootm">
				<div class="bootm_text">
					COPYRIGHT:EMOJI:2016 阿木科技-AMSU<br /> 粤ICP备16005435号-1
				</div>
			</div>
		</div>
	</div>


</body>

</html>

