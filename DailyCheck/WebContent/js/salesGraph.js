
//========값 셋팅==================================


//var screenW = Math.abs(screen.width);
//var screenH = Math.abs(screen.height);
var bars_width  = screenW * 0.05; //바 두께
var bars_height = screenH * 0.8;
var bars_bottom = screenW * 0.03;	
var bars_left_margin = 0;
var bars_widths = 0;

var inner_val_limit = 45; //inner_bar의 max값이 무엇인지 정한다. (100%일경우는 100)
var delay_1 = 1000; //왼쪽 바 transition
var delay_2 = 1500; //오른쪽 바 transition
var bar1_color="#4285F4";
var bar2_color="#DB4437";

var margin = 20; //바들 사이의 margin
var font_size = 5;

var inner_val_bar = [
                 [34,28,"Lexus"], //lexus
                 [36,23,"강남"],   //강남
                 [29,25,"서초"],   //서초
                 [38,33,"용산"],   //용산
                 [35,29,"분당"],   //분당
                 [36,35,"부산"],   //부산
                 [37,27,"인천"],   //인천
                 [32,33,"광주"],   //광주
                 [38,31,"대구"],   //대구
                 [20,4,"대전"],    //대전
                 ]
//===================================================
	
$(function(){	
	for(var i=0;i<10;i++) 
		$("#graph #background_chart").append("<div><p></p></div>");
	
	$("#graph").css("width",screenW);
	$("#graph").css("height",screenH);
	
	initiation();			
	initiation_background_chart();
	
	
	if(screenH>1200) font_size=5;
	else if(screenH>650) font_size=4;
	else font_size=3;
	
	setFontSize(font_size);
});

function initiation(){	
	$("#graph #basic").css("width",screenW);
	$("#graph #basic").css("height",screenH);
	
	$("#graph #basic2").css("width",screenW);
	$("#graph #basic2").css("height",screenH);
	
	for(var i=0;i<inner_val_bar.length;i++){
		bars_widths = (bars_width*(i+1)+margin*(i+1));	
	}
	bars_left_margin = (screenW-bars_widths)/2; //그래프들을 중앙에 위치시켜주기 위해
	//alert(screenY);
	//alert(screenX);
		
	for(var i=0;i<inner_val_bar.length;i++){
		$("#graph #basic").append(			
			"<div class='bars'>"
			+"<h2 class='label'>"+inner_val_bar[i][2]+"</h2>"
			+"	<div class='in_bars'></div>"	
			+"	<div class='in_bars'></div>"
			+"</div>"			
		);		
	}
	
	
	$("#graph .label").css("margin-top",bars_height); //라벨위치 조정
	$("#graph .bars").css("width",bars_width);
	$("#graph .bars").css("height",bars_height);
	$("#graph .bars").css("bottom",bars_bottom);
	
	in_bars(bars_width); //형식을 맞춰줌
	in_bars_color(bar1_color,bar2_color); //색깔을 맞춰줌
	
	
	for(var i=0;i<inner_val_bar.length;i++){//각 bar들의 left들을 조정해준다.
		$("#graph .bars:nth-child("+(i+1)+")").css("left",bars_left_margin+bars_width*(i)+margin*(i+1));	
	
		var val1 = tune_val(inner_val_bar[i][0],inner_val_limit,bars_height);
		var val2 = tune_val(inner_val_bar[i][1],inner_val_limit,bars_height);
		
		in_bars_set_value(i,val1,val2,delay_1,delay_2);//i번쨰의 바 두개를 조정한다.
	    
	    $("#graph .bars:eq("+i+") .in_bars:nth-of-type(1)").html("<h2>"+inner_val_bar[i][0]+"%</h2>");
	    $("#graph .bars:eq("+i+") .in_bars:nth-of-type(2)").html("<h2>"+inner_val_bar[i][1]+"%</h2>");  
	    
	    //console.log(i);
	}	
}

function in_bars_color(bar1_color,bar2_color){
	$("#graph .in_bars:nth-of-type(1)").css("background-color",bar1_color);
	$("#graph .in_bars:nth-of-type(2)").css("background-color",bar2_color);		
}

function in_bars(in_bars_width,in_bars_width_1,in_bars_width_2){//형식을 맞춰줌
	
	$("#graph .in_bars").css("bottom",0);		
	
	$("#graph .in_bars:nth-of-type(1)").css("width",in_bars_width/2);
	$("#graph .in_bars:nth-of-type(2)").css("left",in_bars_width/2);
	$("#graph .in_bars:nth-of-type(2)").css("width",in_bars_width/2);
	

	$("#graph .in_bars:nth-of-type(1)").css("height",in_bars_width_1);
	$("#graph .in_bars:nth-of-type(2)").css("height",in_bars_width_2);	
	
}

function tune_val(inner_val_bar, inner_val_limit, bars_height){ //값을 bars_height에 맞게 조정해준다.
	return inner_val_bar*bars_height/inner_val_limit;	
}

function in_bars_set_value(in_bars_what,in_bars_width_1,in_bars_width_2,delay_1,delay_2){//안쪽 바의 길이를 조정
	//몇번째 놈의, 왼쪽, 오른쪽height길이
		
    $("#graph .bars:eq("+in_bars_what+") .in_bars:nth-of-type(1)").animate({height: in_bars_width_1},delay_1);
    $("#graph .bars:eq("+in_bars_what+") .in_bars:nth-of-type(2)").animate({height: in_bars_width_2},delay_2);
  
}


function initiation_background_chart(){
	$("#graph #background_chart").css("bottom",bars_bottom+bars_height);
	$("#graph #background_chart").css("left",bars_left_margin);
	$("#graph #background_chart").css("width",bars_widths+margin);
	$("#graph #background_chart div").css("width",bars_widths+margin);
	
	var bar_num =$("#graph #background_chart").children().length;
	bar_num=bar_num-1;
	
	for(var i=0;i<=bar_num;i++){
		console.log(1);
		$("#graph #background_chart div:nth-of-type("+(i+1)+")").css("height",i*bars_height/bar_num);		
		$("#graph #background_chart div:nth-of-type("+(i+1)+") p").css("top",i*bars_height/bar_num);
		$("#graph #background_chart div:nth-of-type("+(i+1)+") p").html(inner_val_limit-(inner_val_limit/bar_num)*i+"%");
		
	}
	//$("#graph #background_chart div:last-child").css("border","3px solid black");
	
	

	


}

function setFontSize(font_size){
	
	var font_size_h1=0;
	var font_size_h2=0;
	var font_size_p=0;
	var percent_left_margin = 0;
	var percent_top_margin  = 0;
	var percent_inGraph_top_margin = 0;
	
	switch(font_size){
	case 5:
		percent_left_margin = -65;
		percent_top_margin  = -30;
		font_size_p=30;
		font_size_h1 = 41;
		font_size_h2 = 31;
		percent_inGraph_top_margin = -40;
		break;
	case 4:
		percent_left_margin = -50;
		percent_top_margin  = -35;
		font_size_p=21;
		font_size_h1 = 35;
		font_size_h2 = 22;
		percent_inGraph_top_margin = -30;
		break;
	
	case 3:
		percent_left_margin = -33;
		percent_top_margin  = -17;
		font_size_p=15;
		font_size_h1 = 20;
		font_size_h2 = 18;
		$("#graph h1").css("margin",0);
		percent_inGraph_top_margin = -25;
		break;
	}

	
	
	$("#graph h1").css("font-size",font_size_h1);
	$("#graph h2").css("font-size",font_size_h2);
	$("#graph p").css("font-size",font_size_p);
	$("#graph #background_chart div p").css("margin-left",percent_left_margin);
	$("#graph #background_chart div p").css("margin-top",percent_top_margin);
	$("#graph .in_bars h2").css("margin-top",percent_inGraph_top_margin);

	
}
