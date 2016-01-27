//google.charts.load('current', {'packages':["corechart", "gauge"]});
google.charts.load('current', {'packages':['corechart']});


var graphColor = {
	color1 : "#2478FF",
	color2 : "#53FF4C",
	color3 : "#5BE1E1", 
	color4 : "#AF4BAD",	
};

var testing = false;
var timeTerm = 60; // ~초 간격으로 넘김.


var currentVersion = "1.004"; 

var menuWidth = $(window).width()/10;
var leftSpace = 15;//(window).width()*(1.2/10);

var LGraphX = $(window).width()-leftSpace*2-menuWidth;
var LGraphY = $(window).height()/2-5;
var LMatrixX = $(window).width()*(4/10);
var LSubMatrixX = $(window).width()*(4/10);
var LGraphLeft = leftSpace + menuWidth;
var LGraphTop = 0;
var LGraphMargin = 15;
var LLineWidth = 3;
var chart_nameLeft = menuWidth+LGraphMargin+leftSpace;

var TGraphX = $(window).width()-leftSpace*2-menuWidth;
var TGraphY = $(window).height()/2-5;
var TMatrixX = $(window).width()*(4/10);
var TSubMatrixX = $(window).width()*(4/10);
var TGraphLeft = leftSpace + menuWidth;

var TGraphTop = 0;
var TGraphMargin = 15;
var chart_name2Left = menuWidth+TGraphMargin+leftSpace;

var LMatrixMarginX = 15;
var LMatrixMarginY = 15;

var TMatrixMarginX = 15;
var TMatrixMarginY = 15;
var TLineWidth = 3;

var header_name_margin_top = 10;


//W==================================

var WGraphX = $(window).width()-leftSpace-menuWidth-30; 
var WGraphY = $(window).height()-30;

var WGraphLeft = leftSpace + menuWidth;
var WGraphTop = 0;
var WGraphMargin = 15;
var WLineWidth = 20;
var whole_chart_name_left = menuWidth+WGraphMargin+leftSpace;

var LexusTitle = "1월달 전일자 누적 ";
var ToyotaTitle = "1월달 전일자 누적  ";
var WholeTitle = "3개월간 목표 달성 ";


var myTimer;
var temp=0;
var timerOnOff='off';


Date.prototype.yyyymmdd = function() {
	   var yyyy = this.getFullYear().toString();
	   var mm = (this.getMonth()+1).toString(); // getMonth() is zero-based
	   var dd  = this.getDate().toString();
	   return yyyy +"-"+ (mm[1]?mm:"0"+mm[0]) +"-"+ (dd[1]?dd:"0"+dd[0]); // padding
	};	
	
var d = new Date();
d.setDate(d.getDate()-1);



$(function(){
	$("#menuBar").css("width",menuWidth);
	$("#menuBar").css("height","100%");
	$("#menuBar").css("position","absolute");
	$("#menuBar").css("top",0);
	$("#menuBar").css("left",0);
	
	$("#newLoading").css("top",($(window).height()/2-$(window).height()*(1/20)));
	$("#newLoading").css("left",($(window).width()+menuWidth)/2-$(window).height()*(1/20));
	$("#newLoading").css("width",$(window).height()*(1/10));
	$("#newLoading").css("height",$(window).height()*(1/10));
	
	$("#logo").css("margin-top",menuWidth/2); //이미지마크로고	
	$("#logo3").css("width",menuWidth); //all right reserverd.
	
	$("#middleLine").css("margin-top",$(window).height()/2);
	$("#middleLine").css("margin-left",menuWidth+15);
	
	$("#chart_name").css("margin-left",chart_nameLeft);
	$("#chart_name2").css("margin-left",chart_name2Left);
	$("#whole_chart_name").css("margin-left",whole_chart_name_left);
	
	$("#chart_name").css("margin-top",header_name_margin_top);	
	$("#chart_name2").css("margin-top",$(window).height()/2+header_name_margin_top);	
	$("#whole_chart_name").css("margin-top",header_name_margin_top);
	
	
	$("#logo3").html("Version "+currentVersion+"<div style='height:50px;'></div> COPYRIGHT 2016 TOYOTA FINANCIAL ALL RIGHT RESERVED.");
	
	
	//메뉴 추가.
	var menus = ""
	+"<div id='menuMain' class='menuButton' onclick='location.href=\"SP_Both.html\"'>MAIN</div>"
	+"<div id='menuLexus' class='menuButton' onclick='location.href=\"SP_Lexus.html\"'>LEXUS BY DEALER</div>"
	+"<div id='menuToyota' class='menuButton' onclick='location.href=\"SP_Toyota.html\"'>TOYOTA BY DEALER</div>"
	//+"<div id='menuWhole' class='menuButton' onclick='location.href=\"SP_WholeSale.html\"'>Whole Sale</div>"
	//+"<div id='menuWhole' class='menuButton' onclick='location.href=\"SP_Comment.html\"'>COMMENT</div>"
	
	+"";
	$("#menus").html(menus);


	/*
	div#chart_id div div div svg g g g text{ font-size:14px; }	
	*/
	/*for(var i in $("div#chart_id div div div svg g g g text")){
		console.log(i+" : "+i.length);
		
	}
	*/
	//alert($("div#chart_id div div div svg g g g text").text());
	
});



var ld = [ //[ '지점', '목표 금액', '현재 금액 ', '목표M/S','현재M/S' ], 
			[ "강남(테스트)", 1321, 231, 31.1,13.15 ], //"강남", 
			[ "서초(문정수)", 1332, 221, 26.7,14.28 ], //"서초",
			[ "용산(문정수)", 1523, 361, 34.8,22.58 ], //"용산", 
			[ "분당(이주훈)", 1269, 659, 30.3,24.39 ], //"분당", 
			[ "부산(이일형)", 507, 622, 30.9,28.57 ], //"부산", 
			[ "광주(이주훈)", 886, 191, 27.3,36.36], //"광주",			
			[ "인천(이일형)", 1040, 88, 31.4,40 ], //"인천", 
			[ "대구(문정수)", 584, 371, 30.8,28.57], //"대구",
			[ "대전(이주훈)", 189, 38, 17.9,8.33 ], //"대전",
			[ "합계"     , 8870, 2773, 30.0,24.18 ], //"합계",
         ];



var td = [ //[ '지점', '목표 금액', '현재 금액 ', '목표M/S','현재M/S' ], 
			[ "강남(테스트)", 307, 172, 24.5,22.7],
			[ "서초(이일형)", 243, 90, 21.3,9.7], 
			[ "용산(이일형)", 294, 108, 24.0,16.0 ], 
			[ "분당(이주훈)", 292, 109, 26.7,12.0 ],
			[ "부산(이일형)", 68,  149, 32.4,22.2 ], 
			[ "광주(이주훈)", 230, 21, 17.6,50.0 ], 
			[ "인천(이일형)", 298, 218, 33.3,17.6 ],			
			[ "대구(문정수)", 178, 93, 27.3,9.1 ],
			[ "대전(이주훈)", 65, 77, 27.3,54.5 ],
			[ "합계"     , 1975, 1041, 25.0,18.9 ], //"합계",
       ];

var wd = [ //[ '지점', '목표 금액', '현재 금액 ', '목표M/S','현재M/S' ], 
			[ "첫달", 307, 172, 24.5,22.7],
			[ "둘째달", 243, 90, 21.3,9.7], 
			[ "셋째달", 294, 108, 24.0,16.0 ], 
      ];
//var dealer = 


var today="20160126";



/*
var ld = [ //[ '지점', '목표 금액', '현재 금액 ', '목표M/S','현재M/S' ], 
			[ "1", 0, 0, 0,0 ], //"강남", 
			[ "2", 0, 0, 0,0 ], //"서초",
			[ "3", 0, 0, 0,0 ], //"용산", 
			[ "4", 0, 0, 0,0 ], //"분당", 
			[ "5", 0, 0, 0,0 ], //"부산", 
			[ "6", 0, 0, 0,0], //"광주",			
			[ "7", 0, 0, 0,0 ], //"인천", 
			[ "8", 0, 0, 0,0], //"대구",
			[ "9", 0, 0, 0,0 ], //"대전",
			[ "합계", 0, 0, 0,0 ], //"합계",
         ];



var td = [ //[ '지점', '목표 금액', '현재 금액 ', '목표M/S','현재M/S' ], 
			[ "1", 0, 0, 0,0],
			[ "2", 0, 0, 0,0], 
			[ "3", 0, 0, 0,0 ], 
			[ "4", 0, 0, 0,0 ],
			[ "5", 0, 0, 0,0 ], 
			[ "6", 0, 0, 0,0 ], 
			[ "7", 0, 0, 0,0 ],			
			[ "8", 0, 0, 0,0 ],
			[ "9", 0, 0, 0,0 ],
			[ "합계"     , 0, 0, 0,0 ], //"합계",
       ];
*/
var arrayLexus = new Array( 
		new Array(20), 
		new Array(20),
		new Array(20),
		new Array(20),
		new Array(20),
		new Array(20),
		new Array(20),
		new Array(20),
		new Array(20),
		new Array(20)
	);

var arrayToyota = new Array( 
		new Array(20), 
		new Array(20),
		new Array(20),
		new Array(20),
		new Array(20),
		new Array(20),
		new Array(20),
		new Array(20),
		new Array(20),
		new Array(20)
	);









/*
function createTable(dataSet, id){ //데이터 셋을 이용해서 테이블을 만들어준다.
	var i,html="";
	var SP_data = dataSet;
	//html+="<p style='margin:0'>(금액 : 백만, 점유율 : %)</p>";
	html+="<tr style='background: #111111;''><td>Dealer</td><td>목표금액</td><td>현재금액</td><td>목표M/S</td><td>현재M/S</td></tr>";	
	for(i =0;i<SP_data.length-1;i++){
		html+="<tr>";
		for(var j=0;j<SP_data[i].length;j++){
			html+="<td>"+SP_data[i][j].toLocaleString()+"</td>";	
		}		
		html += "</tr>";
	}
	html += "<tr style='background: #111111;'>";
	for(var j=0;j<SP_data[i].length;j++){
		html+="<td>"+SP_data[i][j].toLocaleString()+"</td>";	
	}		
	html += "</tr>";	
	$(id).html(html);	
}

*/





