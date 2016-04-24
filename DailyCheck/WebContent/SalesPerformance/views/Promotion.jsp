<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<html>
<head>
<%@ include file="/SalesPerformance/import/include.jsp"%>
<%@ page import="java.util.ArrayList, java.util.HashSet" %>

<% 


class PS{
	String PRO_NO;
	String MDEL_CD;
	int SALES_CNT;
	boolean PRO_YN;	
	
	PS( String PRO_NO, String MDEL_CD, int SALES_CNT, boolean PRO_YN ){
		this.PRO_NO = PRO_NO;
		this.MDEL_CD = MDEL_CD;
		this.SALES_CNT = SALES_CNT;
		this.PRO_YN = PRO_YN;	
	}
}


/* 임시 데이터 셋 */
ArrayList<PS>       ps = new ArrayList<PS>();
ArrayList<String> sort = new ArrayList<String>();


//===================================================
ps.add(new PS("P13010001","CT200h",5,true));
ps.add(new PS("P13010001","CT200h",2,false));

ps.add(new PS("P13010001","RX450h",5,true));
ps.add(new PS("P13010001","RX450h",2,false));

ps.add(new PS("P13030026","CT200h",2,true));
ps.add(new PS("P13030026","CT200h",2,false));

sort.add("저금리 프로모션");
sort.add("저금리 프로모션");
sort.add("저금리 프로모션");
sort.add("저금리 프로모션");
sort.add("할인쿠폰 프로모션");
//====================================================

ArrayList<String> sort2 = new ArrayList<String>(new HashSet<String>(sort));
System.out.println(sort2);
/*
P13010001	LS460(운용) 차량용품 지원
P13030026	CT200h(운용) 차량용품 지원
P13060001	LS600h 차량용품 지원
P13060002	RX450h 차량용품 지원
P13070003	RX350 차량용품 지원
P14030008	아발론 TMKR 보조금 프로모션
*/



%>

<script>
var LProData = [
               /*[id, name, normal_val, promotion_val],*/
               [1,"저금리 프로모션","LS","#ff0000"],
               [2,"저금리 프로모션","LS","#0000ff"],
               [3,"저금리 프로모션","ES","#ff2222"],
               [4,"저금리 프로모션","ES","#2222ff"],
               [5,"저금리 프로모션","GS","#ff4444"],
               [6,"저금리 프로모션","GS","#4444ff"],
               [7,"저금리 프로모션","LS","#ff0000"],
               [8,"저금리 프로모션","LS","#ff0000"],
               
               
               ];



</script>



<script>
      //google.charts.load('current', {'packages':['corechart']});
      
      function drawChart1(obj) {
   		var thisGraphX = obj.width;
   		var thisGraphY = obj.height;
   		var thisGraphLeft = obj.left;
   		var thisGraphTop = obj.top;
   		var thisGraphMargin = obj.margin;
   		var thisLineWidth = obj.lineWidth;
   		var thisGraphHead_left = obj.graphHead_left;
   		var thisGraphHead_top = obj.graphHead_top;
   		var thisGraphHead_title = obj.graphHead_title;
   		
   		var thisMatrixX = 0;
   		var thisSubMatrixX = 0;	
   		var thisMatrixMarginX = 0;
   		var thisMatrixMarginY = 0;
   		var thisDiv = "#"+obj.on_id;
   		var thisHeadDiv = "#"+obj.on_head_id;
   		
   		var table = obj.dataTable;
   		var barMax = obj.barMax;
   		var lineMax = obj.lineMax;
   		
   		var thisSubTitle = obj.graphHead_subTitle;
   		var thisLegendFontSize = obj.legendFontSize;
   		var thisBarWith = obj.barWidth;
   		var thisGraphColor = obj.graphColor;
   		var thisIsStacked = (obj.isStacked)?true:false;
   	  	
   		
   		/*
   		console.log(thisDiv);
   		console.log(thisGraphX);
   		console.log(thisMatrixMarginX);
    	*/  
		 
		//$(thisDiv).css("width", thisGraphX - thisMatrixMarginX * 2);   		
		$(thisDiv).css("height", thisGraphY - thisMatrixMarginY * 2 - thisGraphMargin/2);
		$(thisDiv).css("width", thisGraphY*2 - thisMatrixMarginY * 2);   		
		
		//$(thisDiv).css("left", thisGraphLeft);
		$(thisDiv).css("top", thisGraphTop);
		$(thisDiv).css("margin", thisGraphMargin);
		$(thisDiv).css("margin-left", 15+leftSpace+obj.left);
		
		//$("table").css("margin-left", menuWidth+15+leftSpace+400);
		
		
		$(thisHeadDiv).css("width", thisGraphX - thisMatrixMarginX * 2);
		$(thisHeadDiv).css("margin-left",thisGraphLeft);	
		$(thisHeadDiv).css("margin-top",thisGraphHead_top);	    		
    	
		//alert(obj.data);
		
        var data = google.visualization.arrayToDataTable(obj.data);

        var options = {
          	title: obj.title,
          	titleTextStyle:{ 
          		color: "white",
          		/*fontName: <string>,*/
          		/*fontSize: <number>,*/
          		bold:   true,
          		italic: true 
          	},
			backgroundColor: "#292929",
			pieHole: 0.5,
			pieSliceTextStyle: {
				color: "black", 
				/*fontName: <string>,*/ 
				fontSize: 16
			},
			legend: {
				position: 'right', 
				textStyle: {color: 'white', fontSize: 16}
			},
			chartArea: obj.chartArea,
			width: "30px",
			slices: obj.series,
	        tooltip:{
	        	textStyle: {
	        		color: "black",
	        		/*fontName: <string>,*/
	        		fontSize: 20,
	        		bold: true,
	        		italic: false
	        	}, 
	        	showColorCode: true,
	        	ignoreBounds:false,
	        },
          
        };
        
        //alert(obj.on_id);

        var chart = new google.visualization.PieChart(document.getElementById(obj.on_id));
        chart.draw(data, options);
        
    	$("#newLoading").hide();
      }
</script>

<script>
/*
$(".promotionButton").click(function(){
	alert($(this));
	
	
});
*/

	function changeVal(id){
		var normal = 0;
		var promotion = 0;
		
		//alert($('[data-id=L2]'));
		//alert('[data-id='+id+']');
		//alert($('[data-id='+id+']'));
		
		normal       = 10;//Number($('[data-id='+id+']').attr("data-val1"));
		promotion    = 20;//Number($('[data-id='+id+']').attr("data-val2"));
		promotion_yn = 30;//Number($('[data-id='+id+']').attr("data-val3"));
		
		
		if(id==1){
			
			
		}
		chart.data = [
			             ['Type', 'Sales'],
			             ['Camry',   11718],
			             ['Prius', 1110],
			             ['Rav', 15710],
			             ['Toyota86', 204],
			             ['Rav', 870],
			             ['Toyota86', 140],
			             ['RX', 16500],
			             ['GS', 12550],
			             ['Rav123', 330],
			             ['To', 5805],
			             ['Rv', 6053],
			             ['T86', 160],
			           ];
			
			/*[
			             ['Type', 'Sales','Color'],
			             <% for(int i=0;i<9;i++){ %>
			             	['LS', 100,200],			             	 
			            	 
			             <% } %>
			             
			             
			           ];*/
		drawChart1(chart);
	}

</script>


<script>

var chart1 = function(){
	this.title = "Lexus Promotion Ratio";
	this.on_id = "chart_id1"; //#chart_id에 그린다.
	this.on_head_id = "chart_name1";	
	this.sort = "A271";	
	this.graphHead_left = menuWidth+15+leftSpace;	
	this.graphHead_top = 0;
	this.graphHead_title = "월별 영업 목표/실적";
	this.graphHead_subTitle = currentMonth+"월달 전일자까지  ";

	this.graphHead_title_left = "M/S(%)";
	this.graphHead_title_right = "금액(백만)";
	//---------------------------
	this.dataTable = stackedData1; //데이터 셋 설정
	//---------------------------
	
	//graph 설정======================================
	this.width = $(window).width()*(5/10);
	this.height = $(window).height()/2;
	this.left = menuWidth+40;
	this.top = 0;
	this.margin = 15;
	this.lineWidth = 5; //선의 굵기

	this.chartArea = {						
			left : "8%",
			top : "15%",
			width : "80%",
			height : "80%",			
		};
	this.data = [
	             ['Type', 'Sales'],
	             ['Camry',    78],
	             ['Prius', 10],
	             ['Rav', 50],
	             ['Toyota86', 20],
	             ['Rav', 80],
	             ['Toyota86', 10],
	             ['RX', 100],
	             ['GS', 120],
	             ['Rav123', 30],
	             ['To', 50],
	             ['Rv', 60],
	             ['T86', 10],
	             ['GS', 120],
	             ['Rav123', 30],
	             ['To', 50],
	             ['Rv', 60],
	             ['T86', 10],
	           ];
	this.series = {
            0: { color: "#0000ff" },
	        1: { color: "#1111ff" },
	        2: { color: "#2222ff" },
            3: { color: '#3333ff' },
            4: { color: '#4444ff' },
            5: { color: '#5555ff' },		           
            6: { color: '#ff0000' },
            7: { color: '#ff1111' },
            8: { color: '#ff2222' },
            9: { color: '#ff3333' },
            10: { color: '#ff4444' },
            11: { color: '#ff5555' },
            12: { color: '#ff6666' },
            13: { color: '#ff7777' },
            14: { color: '#ff8888' },
            15: { color: '#ff9999' },
            16: { color: '#ffaaaa' },
            
            
          };
}	

</script>

<script>

var chart2 = function(){
	this.title = "Toyota Promotion Ratio";
	this.on_id = "chart_id2"; //#chart_id에 그린다.
	this.on_head_id = "chart_name2";	
	this.sort = "A271";	
	this.graphHead_left = menuWidth+15+leftSpace;	
	this.graphHead_top = $(window).height()/2;
	this.graphHead_title = "월별 영업 목표/실적";
	this.graphHead_subTitle = currentMonth+"월달 전일자까지  ";

	this.graphHead_title_left = "M/S(%)";
	this.graphHead_title_right = "금액(백만)";
	//---------------------------
	this.dataTable = stackedData1; //데이터 셋 설정
	//---------------------------
	
	//graph 설정======================================
	this.width =  $(window).width()*(5/10);
	this.height = $(window).height()/2;
	this.left = menuWidth+40;
	this.top = $(window).height()/2;
	this.margin = 15;
	this.lineWidth = 5; //선의 굵기

	this.barWidth = "30%";
	this.legendFontSize = 20;	
	this.barMax = 2000;

	this.lineMax = 100;
	this.series = {
			0 : { targetAxisIndex : 1, },
			1 : { targetAxisIndex : 1, },
			2 : { targetAxisIndex : 0, type : 'line', },
			3 : { targetAxisIndex : 0, type : 'line', },
		};

	this.chartArea = {						
			left : "8%",
			top : "15%",
			width : "80%",
			height : "80%",			
		};
	this.data = [
	             ['Type', 'Sales'],
	             ['Camry',   1718],
	             ['Prius', 1110],
	             ['Rav', 1570],
	             ['Toyota86', 204],
	             ['Rav', 870],
	             ['Toyota86', 140],
	             ['RX', 1600],
	             ['GS', 1250],
	             ['Rav123', 330],
	             ['To', 580],
	             ['Rv', 603],
	             ['T86', 160],
	           ];
	this.series = {
            0: { color: "#0000ff" },
	        1: { color: "#2222ff" },
	        2: { color: "#4444ff" },
            3: { color: '#6666ff' },
            4: { color: '#8888ff' },
            5: { color: '#aaaaff' },		           
            6: { color: '#ff0000' },
            7: { color: '#ff2222' },
            8: { color: '#ff4444' },
            9: { color: '#ff6666' },
            10: { color: '#ff8888' },
            11: { color: '#ffaaaa' },
            
          };
	//===============================================
}	

</script>


<script>


//Override용
function onResized(){
	menuWidth = $(window).width()/10;      	
	
	//getSalesWithAjax(new chart);
	//불러온 것으로 그려야 한다. 매번 요청하면 너무 느려진다.
	//google.charts.setOnLoadCallback(function(){
		drawChart1(new chart1);
		//drawChart1(new chart2);
	//});
	//google.charts.setOnLoadCallback(function(){
		//drawChart1(new chart1);
		drawChart1(new chart2);
	//});
	 
}

<%@ page import= " tools.EnvVal " %>

$(function(){	
	
		//nextPage = "<%=EnvVal.NEXT_LexusTarget%>";


		selectedMenu("menuPromotion",2);
		
		
		$(".promotionMenu div").click(function(){
			$(this).parent().find("div").css("background-color","#121212");		
			$(this).parent().find("div").css("font-weight","normal");
			$(this).parent().find("div").css("color","white");
			
			
			$(this).css("background-color","#cccccc");
			$(this).css("color","#111111");
			$(this).css("font-weight","bold");
		});
		
		
		
		
		if (testing) {
			//테스트용=====================================				
			google.charts.setOnLoadCallback(function(){
				drawChart1(new chart1);
				//drawChart1(new chart2);
			});
			google.charts.setOnLoadCallback(function(){
				//drawChart1(new chart1);
				drawChart1(new chart2);
			});
			//============================================		
		} else {
			//실제 데이터용==================================
			//getSalesWithAjax();
			//=============================================
		}
		
		
		$(".promotionMenu div").click();
		
		//alert(1)
		
	
	});
</script>

</head>
<body>
	<!-- <div id="chart_name1" class="chart_name">123</div> -->
	<div id="chart_id1"></div>	
	
	<div class="promotionMenu" style="height:35%; width:37%; position:absolute; left:58%; top: 10%; border:2px double white; box-shadow: 3px 3px 2px grey; border-radius: 5px; overflow-x:hidden; overflow-y:auto;" id="menus">
		<h3 style="padding-left:15px; color:white;">Lexus Promotion List</h3>	
		<%	for(int i=0;i<sort2.size();i++){ %>
			<div class='promotionButton' onclick="changeVal(1)"><%= sort2.get(i) %></div>				
		<% 	} %>
		
	</div>

	<!-- <div id="chart_name2" class="chart_name">345</div> -->
	<div id="chart_id2"></div>
	
	
	
	<div class="promotionMenu"  style="height:35%; width:37%; position:absolute; left:58%; top: 60%; border:2px double white; box-shadow: 3px 3px 2px grey; border-radius: 5px;   overflow-x:hidden; overflow-y:auto;" id="menus">
		<h3 style="padding-left:15px; color:white;">Toyota Promotion List</h3>	

	</div>


	<%@ include file="/SalesPerformance/import/nav.jsp"%>


	<img style="position: fixed;" id="newLoading"
		src="../img/support-loading.gif" />


</body>
</html>