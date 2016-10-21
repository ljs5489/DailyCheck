$(function(){

	var timer = location.search.split('timer=')[1];
	var tempPath = "/DailyCheck/SalesPerformance";
	
	//alert(timer);
	var temp = timer+"";
	if(temp.substring(0, 3)=="off"){ 
		timerOnOff='off'; 		
		$("#timerPlay").attr("src", tempPath+"/img/play.png");
		$("#timerStop").attr("src", tempPath+"/img/pause2.png");
	}
	else{
		setTimer(); 
		timerOnOff='on'; 
		console.log("타이머 자동셋팅");
		
		$("#timerPlay").attr("src", tempPath+"/img/play2.png");
		$("#timerStop").attr("src", tempPath+"/img/pause.png");
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