$(document).ready(function() {
	(function(){
		var $html=$('html');
		var $window=$(window);
		var $body=$("body");
		var psdsize=840;
		var htmlfont=$body.width()/psdsize*100+'px';
		$html.css('font-size',htmlfont);
		$body.css('opacity',1);
		$window.resize(function () {
			htmlfont=$body.width()/psdsize*100+'px';
			$html.css('font-size',htmlfont)
		});
	})();
	
	$(".menubtn").toggle(function(){
		$('.menu').fadeIn(500);
		$(this).parent('.header').addClass('r_header');
		$('body').css('overflow-y','hidden');
	}, function(){
		$('.menu').fadeOut(0);
		$(this).parent('.header').removeClass('r_header');;
		$('body').css('overflow-y','auto');
	});
	
	$('.menu li p').on('click',function(){
		$(this).siblings().stop(false,true).slideToggle().parents('li').toggleClass('on');
		$(this).parents('li').siblings().removeClass('on').find('dl').slideUp();
	});
	
	if($('.nav .swiper-slide').length>0){
		var nav = new Swiper('.nav',{
			slidesPerView : "auto"
	  	});
	  	var navto=$('.nav .on').index();
	  	nav.slideTo(navto);
	};
});