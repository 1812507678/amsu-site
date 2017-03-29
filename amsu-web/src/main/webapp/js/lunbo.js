$(document).ready(
			function() {
				var length, currentIndex = 0, interval, hasStarted = false, //�Ƿ��Ѿ���ʼ�ֲ� 
				t = 3000; //�ֲ�ʱ���� 
				length = $('.slider-panel').length;
				//�����˵�һ��ͼƬ���� 
				$('.slider-panel:not(:first)').hide();
				//����һ��slider-item��Ϊ����״̬ 
				$('.slider-item:first').addClass('slider-item-selected');
				//������ǰ����󷭰�ť 
				//$('.slider-page').hide();
				//�������ʱ��ʾ��ǰ����󷭰�ť,ֹͣ����������뿪ʱ������ǰ����󷭰�ť����ʼ���� 
				$('.slider-panel, .slider-pre, .slider-next').hover(function() {
					stop();
					$('.slider-page').show();
				}, function() {
					//$('.slider-page').hide();
					start();
				});
				$('.slider-item').hover(
						function(e) {
							stop();
							var preIndex = $(".slider-item").filter(
									".slider-item-selected").index();
							currentIndex = $(this).index();
							play(preIndex, currentIndex);
						}, function() {
							start();
						});
				$('.slider-pre').unbind('click');
				$('.slider-pre').bind('click', function() {
					pre();
				});
				$('.slider-next').unbind('click');
				$('.slider-next').bind('click', function() {
					next();
				});
				/** 
				 * ��ǰ��ҳ 
				 */
				function pre() {
					var preIndex = currentIndex;
					currentIndex = (--currentIndex + length) % length;
					play(preIndex, currentIndex);
				}
				/** 
				 * ���ҳ 
				 */
				function next() {
					var preIndex = currentIndex;
					currentIndex = ++currentIndex % length;
					play(preIndex, currentIndex);
				}
				/** 
				 * ��preIndexҳ����currentIndexҳ 
				 * preIndex ����ҳ����ʼҳ 
				 * currentIndex ���������ҳ 
				 */
				function play(preIndex, currentIndex) {
					$('.slider-panel').eq(preIndex).fadeOut(500).parent().children().eq(currentIndex).fadeIn(1000);
					$('.slider-item').removeClass('slider-item-selected');
					$('.slider-item').eq(currentIndex).addClass('slider-item-selected');
				}
				/** 
				 * ��ʼ�ֲ� 
				 */
				function start() {
					if (!hasStarted) {
						hasStarted = true;
						interval = setInterval(next, t);
					}
				}
				/** 
				 * ֹͣ�ֲ� 
				 */
				function stop() {
					clearInterval(interval);
					hasStarted = false;
				}
				//��ʼ�ֲ� 
				start();
				
				var video = document.getElementById('video');
				var playID = document.getElementById('play');
				if(video!=undefined && playID!=undefined){
					playID.onclick = function playinit(){
					  if(video.paused){
							video.play();
							playID.style.display = "none";
						}else{
							video.pause();
						}
					}

					video.onclick = function videoinit(){
					  
					  if(video.paused){
							//video.play();
							//play.style.display = "none";
						}else{
							video.pause();
							playID.style.display = "";
						}
					}
				}
				
				
				/*
				1.mouseover��mouseenter
				�������ָ�봩��ѡԪ�ػ�����Ԫ�أ����ᴥ�� mouseover �¼���
				ֻ�������ָ�봩��ѡԪ��ʱ���Żᴥ�� mouseenter �¼���
				2.mouseout��mouseleave
				�������ָ���뿪��ѡԪ�ػ����κ���Ԫ�أ����ᴥ�� mouseout �¼��� 
				 ֻ�������ָ���뿪��ѡԪ��ʱ���Żᴥ�� mouseleave �¼���*/

				
				$('#body_images_right_top_mouseover').mouseenter(function(){
					//alert(isFloat);
					$('.body_images_right_top_low_image').fadeTo(500,0.5);
					$('.body_images_right_top_float').show();
				}).mouseleave(function() {
					//alert(isFloat);
					$('.body_images_right_top_low_image').fadeTo(500,1);
					$('.body_images_right_top_float').hide()
				});
				
				$('#body_images_right__bootm_left_mouseover').mouseenter(function(){
					//alert(isFloat);
					$('#body_images_right_bootm_image_left').fadeTo(500,0.5);
					$('.body_images_right__bootm_left_float').show();
				}).mouseleave(function() {
					//alert(isFloat);
					$('#body_images_right_bootm_image_left').fadeTo(500,1);
					$('.body_images_right__bootm_left_float').hide()
				});
				
				$('#body_images_right__bootm_right_mouseover').mouseenter(function(){
					//alert(isFloat);
					$('#body_images_right_bootm_image_right').fadeTo(500,0.5);
					$('.body_images_right__bootm_right_float').show();
				}).mouseleave(function() {
					//alert(isFloat);
					$('#body_images_right_bootm_image_right').fadeTo(500,1);
					$('.body_images_right__bootm_right_float').hide()
				});
				
				
				
				var items= $('.consult_article_next_item');
				if(items.length>0){
					items[0].style.background="#CCCCCC";
				}
				
				
				var height = $(window).height();
				//alert(height); 
				$('.head').height(height*0.114);
				$('.index').height(height*0.057);
				$('.carousel').height(height*0.82);
				$('.body_images').height(height*0.87);
			});
			
