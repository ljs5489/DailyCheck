$(function(){

	var timer = location.search.split('timer=')[1];
	var tempPath = "/DailyCheck/SalesPerformance";
	
	if(timer=="on"){ 
		setTimer(); 
		timerOnOff='on'; 
		console.log("타이머 자동셋팅");
		
		$("#timerPlay").attr("src", tempPath+"/img/play2.png");
		$("#timerStop").attr("src", tempPath+"/img/pause.png");
	}
	else{
		timerOnOff='off'; 		
		$("#timerPlay").attr("src", tempPath+"/img/play.png");
		$("#timerStop").attr("src", tempPath+"/img/pause2.png");
	}
	

	function setTimer(){
	    myTimer = setInterval(function(){
		    console.log(temp++);
		  	location.href = nextPage+'?timer='+timerOnOff;
	    }, 1000*timeTerm);	
	}
	$("#timerPlay").click(function(){
		console.log(1);
		timerOnOff='on';
		
		$("#timerPlay").attr("src", tempPath+"/img/play2.png");
		$("#timerStop").attr("src", tempPath+"/img/pause.png");
		
		setTimer();
	});
	$("#timerStop").click(function(){
		console.log(2);
		timerOnOff='off';
		$("#timerPlay").attr("src", tempPath+"/img/play.png");
		$("#timerStop").attr("src", tempPath+"/img/pause2.png");
		clearInterval(myTimer);
	});
	
	
	
});