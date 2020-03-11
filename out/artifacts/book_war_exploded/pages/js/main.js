/*-----------------------------------------------------------------------------------*/
/* 		Mian Js Start 
/*-----------------------------------------------------------------------------------*/
$(document).ready(function ($) {
	"use strict"
	/*-----------------------------------------------------------------------------------*/
	/*		STICKY NAVIGATION
	/*-----------------------------------------------------------------------------------*/
	$(".sticky").sticky({
		topSpacing: 0
	});
	/*-----------------------------------------------------------------------------------*/
	/* 	LOADER
	/*-----------------------------------------------------------------------------------*/
	$("#loader").delay(500).fadeOut("slow");
	/*-----------------------------------------------------------------------------------*/
	/*  FULL SCREEN
	/*-----------------------------------------------------------------------------------*/
	$('.full-screen').superslides({});
	/*-----------------------------------------------------------------------------------*/
	/*    Parallax
	/*-----------------------------------------------------------------------------------*/
	jQuery.stellar({
		horizontalScrolling: false,
		scrollProperty: 'scroll',
		positionProperty: 'position',
	});
	/*-----------------------------------------------------------------------------------
	    HOME SIMPLE TEXT SLIDER
	/*-----------------------------------------------------------------------------------*/
	$('.home-slide').flexslider({
		mode: 'fade',
		auto: true
	});
	/*-----------------------------------------------------------------------------------*/
	/* 	SLIDER REVOLUTION
	/*-----------------------------------------------------------------------------------*/
	jQuery('.tp-banner').show().revolution({
		dottedOverlay: "none",
		delay: 5000,
		startwidth: 1170,
		startheight: 900,
		navigationType: "",
		navigationArrows: "solo",
		navigationStyle: "",
		parallax: "mouse",
		parallaxBgFreeze: "on",
		parallaxLevels: [7, 4, 3, 2, 5, 4, 3, 2, 1, 0],
		keyboardNavigation: "on",
		shadow: 0,
		fullWidth: "on",
		fullScreen: "off",
		shuffle: "off",
		autoHeight: "off",
		forceFullWidth: "off",
		fullScreenOffsetContainer: ""
	});
	/*-----------------------------------------------------------------------------------*/
	/*	ISOTOPE PORTFOLIO
	/*-----------------------------------------------------------------------------------*/
	var $container = $('.port-wrap .items');
	$container.imagesLoaded(function () {
		$container.isotope({
			itemSelector: '.portfolio-item',
			layoutMode: 'masonry'
		});
	});
	$('.portfolio-filter li a').on('click', function () {
		$('.portfolio-filter li a').removeClass('active');
		$(this).addClass('active');
		var selector = $(this).attr('data-filter');
		$container.isotope({
			filter: selector
		});
		return false;
	});

	/*-----------------------------------------------------------------------------------*/
	/*	BACK TOP
	/*-----------------------------------------------------------------------------------*/

	function getScrollTop() {
		var scrollTop = 0,
			bodyScrollTop = 0,
			documentScrollTop = 0;
		if (document.body) {
			bodyScrollTop = document.body.scrollTop;
		}
		if (document.documentElement) {
			documentScrollTop = document.documentElement.scrollTop;
		}
		scrollTop = (bodyScrollTop - documentScrollTop > 0) ? bodyScrollTop : documentScrollTop;
		return scrollTop;
	}
	window.onscroll = function () {
		if (getScrollTop() > 1000) {
			$('.scroll').show();
		} else {
			$('.scroll').hide();
		}
	}

	/*-----------------------------------------------------------------------------------*/
	/*	JOBS TABS
	/*-----------------------------------------------------------------------------------*/

	var
		jobItemTab1 = $('.jobs-item1'),
		jobItemTab2 = $('.jobs-item2'),
		jobItemTab3 = $('.jobs-item3'),
		jobItemTab4 = $('.jobs-item4'),
		jobItemTab5 = $('.jobs-item5'),
		jobItem = $('.jobs-details-item'),
		jobItem1 = $('.jobs-details-item1'),
		jobItem2 = $('.jobs-details-item2'),
		jobItem3 = $('.jobs-details-item3'),
		jobItem4 = $('.jobs-details-item4'),
		jobItem5 = $('.jobs-details-item5');

	$('.jobs-item').removeClass('jobs-act')

	jobItemTab1.mouseenter(function () {
		$('.jobs-item').removeClass('jobs-act')
		jobItemTab1.addClass('jobs-act')
		jobItem.removeClass("show")
		jobItem1.addClass("show")
	})

	jobItemTab2.mouseenter(function () {
		$('.jobs-item').removeClass('jobs-act')
		jobItemTab2.addClass('jobs-act')
		jobItem.removeClass("show")
		jobItem2.addClass("show")
	})

	jobItemTab3.mouseenter(function () {
		$('.jobs-item').removeClass('jobs-act')
		jobItemTab3.addClass('jobs-act')
		jobItem.removeClass("show")
		jobItem3.addClass("show")
	})
	jobItemTab4.mouseenter(function () {
		$('.jobs-item').removeClass('jobs-act')
		jobItemTab4.addClass('jobs-act')
		jobItem.removeClass("show")
		jobItem4.addClass("show")
	})
	jobItemTab5.mouseenter(function () {
		$('.jobs-item').removeClass('jobs-act')
		jobItemTab5.addClass('jobs-act')
		jobItem.removeClass("show")
		jobItem5.addClass("show")
	})



	// //构建循环，获取每一个标签
	// for (var i = 0; i < jobItemTab.length; i++) {
	// 	//给每一个标签设置一个序号属性
	// 	jobItemTab[i].index = i;
	// 	//给每一个标签绑定点击事件
	// 	jobItemTab[i].onclick = function () {
	// 		//清除所有标签样式
	// 		for (var j = 0; j < jobItemTab.length; j++) {
	// 			jobItemTab[j].className = "jobs-item";
	// 			jobItem[j].className = "container margin-bottom-30 margin-top-30 jobs-details-item";
	// 		}
	// 		//给当前点击的标签加上样式
	// 		this.className = "jobs-item jobs-act";
	// 		//给当前点击的标签序号对应的内容层加上样式
	// 		jobItem[this.index].className = "container margin-bottom-30 margin-top-30 jobs-details-item show";
	// 	}
	// }




});