$(function() {
	
	$("#btn-get-started").click(function() {
		$('html,body').animate({
			scrollTop: $("#main-video2").offset().top
		}, 800);
	});
	
	$("#btn-tee").click(function() {
		$('html,body').animate({
			scrollTop: $("#form").offset().top
		}, 800);
	});
	
	$(".step").hover(function() {
		$(this).find(".text").filter(':not(:animated)').animate({"top": "28px"}, "fast");
	}, function() {
		$(this).find(".text").animate({"top": "-130px"}, "fast");
	});
	
	$("#tees-video-link, .tees #instructors-link, .tees #main-cta-link").click(
	  function () {
		$("#overlay").show();
		$("#popup").show();
	  }
	);
	
	$(".icons li.mail").click(
	  function () {
		$("#popup-overlay").show();
		$("#email-popup").show();
	  }
	);
	
	$("#instructor1").click(
	  function () {
		$("#overlay").show();
		$("#popup1").show();
	  }
	);
	
	$("#instructor2").click(
	  function () {
		$("#overlay").show();
		$("#popup2").show();
	  }
	);
	
	$("#instructor3").click(
	  function () {
		$("#overlay").show();
		$("#popup3").show();
	  }
	);
	
	$("#instructor4").click(
	  function () {
		$("#overlay").show();
		$("#popup4").show();
	  }
	);
	
	$("#instructor5").click(
	  function () {
		$("#overlay").show();
		$("#popup5").show();
	  }
	);
	
	$("#instructor6").click(
	  function () {
		$("#overlay").show();
		$("#popup6").show();
	  }
	);
	
	$("#instructor7").click(
	  function () {
		$("#overlay").show();
		$("#popup7").show();
	  }
	);
	
	$("#instructor8").click(
	  function () {
		$("#overlay").show();
		$("#popup8").show();
	  }
	);
	
	$("#instructor9").click(
	  function () {
		$("#overlay").show();
		$("#popup9").show();
	  }
	);
	
	$("#instructor10").click(
	  function () {
		$("#overlay").show();
		$("#popup10").show();
	  }
	);
	
	$(".popup .popup-close").click(
	  function () {
		$(this).parent().hide();
		$("#overlay").hide();
	  }
	);
	
	$("#tees-video-launch").click(
	  function () {
	  	player.playVideo();
		$("#tees-video #player").css("top", "0px");
		$(this).parent().fadeOut("slow");
		}
	);
	
	
	
});