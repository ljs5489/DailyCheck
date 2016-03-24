<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<%@ include file="/SalesPerformance/import/include.jsp"%>

<script>
var LProData = [
               /*[id, name, normal_val, promotion_val],*/
               [1,"저금리 프로모션","30","20"],
               [2,"저금리 프로모션","30","20"],
               [3,"저금리 프로모션","30","20"],
               [4,"저금리 프로모션","30","20"],
               [5,"저금리 프로모션","30","20"]
               
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
		$(thisDiv).css("width", thisGraphY - thisMatrixMarginY * 2);   		
		
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
				position: 'top', 
				textStyle: {color: 'white', fontSize: 16}
			},
			chartArea: obj.chartArea,
			width: "30px",
			slices: {
	            0: { color: "#2478FF" },
		        1: { color: "#53FF4C" }
	           /* 1: { color: 'transparent' }*/
	          },
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

	function changeVal(chart, id){
		var normal = 0;
		var promotion = 0;
		
		//alert($('[data-id=L2]'));
		//alert('[data-id='+id+']');
		//alert($('[data-id='+id+']'));
		
		normal    = Number($('[data-id='+id+']').attr("data-val1"));
		promotion = Number($('[data-id='+id+']').attr("data-val2"));

		
		chart.data = [
			             ['Type', 'Sales'],
			             ['Normal',    normal],
			             ['Promotion', promotion],
			           ];
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
	             ['Normal',    50],
	             ['Promotion', 120],
	           ];

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
	             ['Normal',    78],
	             ['Promotion', 100],
	           ];
	//this.isStacked = true;
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

		$("#menuPromotion").css("background-color","#cccccc");
		$("#menuPromotion").css("color","#111111");
		$("#menuPromotion").css("font-weight","bold");

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
	
	});
</script>

</head>
<body>
	<!-- <div id="chart_name1" class="chart_name">123</div> -->
	<div id="chart_id1"></div>	
	
	<div class="promotionMenu" style="height:35%; width:50%; position:absolute; left:45%; top: 10%; border:2px double white; box-shadow: 3px 3px 2px grey; border-radius: 5px; overflow-x:hidden; overflow-y:auto;" id="menus">
		<h3 style="padding-left:15px; color:white;">Lexus Promotion List</h3>	
		<%	for(int i=1;i<=5;i++){ %>
			<div class='promotionButton' data-id="L<%= i %>" data-val1="<%= (i+20)*i %>" data-val2="<%= (i+80)*i %>" onclick="changeVal(new chart1,'L<%= i %>');">저금리 프로모션</div>				
		<% 	} %>
		
	</div>

	<!-- <div id="chart_name2" class="chart_name">345</div> -->
	<div id="chart_id2"></div>
	
	
	
	<div class="promotionMenu"  style="height:35%; width:50%; position:absolute; left:45%; top: 60%; border:2px double white; box-shadow: 3px 3px 2px grey; border-radius: 5px;   overflow-x:hidden; overflow-y:auto;" id="menus">
		<h3 style="padding-left:15px; color:white;">Toyota Promotion List</h3>	
		<%	for(int i=1;i<=15;i++){ %>
			<div class='promotionButton' data-id="T<%= i %>" data-val1="<%= (i+20)*i %>" data-val2="<%= (i+80)*i %>" onclick="changeVal(new chart2,'T<%= (i+1) %>');">저금리 프로모션</div>				
		<% 	} %>
	</div>


	<%@ include file="/SalesPerformance/import/nav.jsp"%>


	<img style="position: fixed;" id="newLoading"
		src="../img/support-loading.gif" />


</body>
</html>