$(function(){

	$("#timerPlay").css("width",menuWidth*0.3);
	$("#timerPlay").css("height",menuWidth*0.3);
	$("#timerStop").css("width",menuWidth*0.3);
	$("#timerSTop").css("height",menuWidth*0.3);
	
	var timer = location.search.split('timer=')[1];
	if(timer=="on"){ 
		setTimer(); 
		timerOnOff='on'; 
		console.log("타이머 자동셋팅");
		
		$("#timerPlay").attr("src", "../img/play2.png");
		$("#timerStop").attr("src", "../img/pause.png");
	}
	else{
		timerOnOff='off'; 		
		$("#timerPlay").attr("src", "../img/play.png");
		$("#timerStop").attr("src", "../img/pause2.png");
	}
	

	function setTimer(){
	    myTimer = setInterval(function(){
		    console.log(temp++);
		  	location.href = nextPage+'.html?timer='+timerOnOff;
	    }, 10000);		
	}
	$("#timerPlay").click(function(){
		console.log(1);
		timerOnOff='on';
		
		$("#timerPlay").attr("src", "../img/play2.png");
		$("#timerStop").attr("src", "../img/pause.png");
		
		setTimer();
	});
	$("#timerStop").click(function(){
		console.log(2);
		timerOnOff='off';
		$("#timerPlay").attr("src", "../img/play.png");
		$("#timerStop").attr("src", "../img/pause2.png");
		clearInterval(myTimer);
	});
	
	
	
});