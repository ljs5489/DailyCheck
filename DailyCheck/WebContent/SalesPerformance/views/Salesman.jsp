<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.ArrayList, tools.*, pages.*, java.text.SimpleDateFormat, java.util.Calendar "%>
<html>
<head>
<%@ include file="/SalesPerformance/import/include.jsp"%>


<%

Calendar cal = Calendar.getInstance();
SimpleDateFormat sdf = new SimpleDateFormat("yyyymmdd");
//System.out.println(sdf.format(cal.getTime()) + "Sales Performance 자료 가져오기...");

//System.out.println("simple data format : "+sdf.toString());
//System.out.println("SalesMan ...");



class DS{
	String salesMan;
	String dealerName;
	double target;
	double funded;
	double target_ms;
	double ms_all;
}


ArrayList<Sales> sales = SalesDAO.selectWholeData("A271");
ArrayList<Sales> sales2 = SalesDAO.selectWholeData("A272");

DS data[]  = new DS[10];
DS data2[] = new DS[10];

int i = 0;
for(Sales temp : sales){
	data[i] = new DS();
	
	//System.out.println(temp.getDealer());
	data[i].salesMan   = temp.getTfskr_sales_rep();
	data[i].dealerName = temp.getDealer();
	data[i].target     = Double.parseDouble(temp.getTarget_amt());
	data[i].funded     = Double.parseDouble(temp.getTm_t_funded_amt());
	data[i].target_ms  = Double.parseDouble(temp.getTarget_ms());
	data[i].ms_all     = Double.parseDouble(temp.getMs_all());
	
	i++;
}
i = 0;
for(Sales temp : sales2){
	data2[i] = new DS();
	
	//System.out.println(temp.getDealer());
	data2[i].salesMan   = temp.getTfskr_sales_rep();
	data2[i].dealerName = temp.getDealer();
	data2[i].target     = Double.parseDouble(temp.getTarget_amt());
	data2[i].funded     = Double.parseDouble(temp.getTm_t_funded_amt());
	data2[i].target_ms  = Double.parseDouble(temp.getTarget_ms());
	data2[i].ms_all     = Double.parseDouble(temp.getMs_all());
	
	i++;
}



%>

<style>
.sheetTab{
	
}
</style>

<script>
	table1_1 = [
	          ['Dealer', 'Target', 'Result']          
	          <% for(DS temp : data){ %> 
	          	  <% if(
	          			temp.dealerName.equals("TOT")==false
	          	  	 && temp.salesMan.equals("문정수") == true  
	          		){ %>
	        	  ,["<%= temp.dealerName %>", <%= temp.target_ms %>, <%= temp.ms_all %>]
	              <% } %>
	          <% } %>     
	        ];
	
	table1_2 = [
		          ['Dealer', 'Target', 'Result']		          
		          
		          <% for(DS temp : data2){ %> 
		          	  <% if(
		          			temp.dealerName.equals("TOT")==false
		          	  	 && temp.salesMan.equals("문정수") == true  
		          		){ %>
		        	  ,["<%= temp.dealerName %>", <%= temp.target_ms %>, <%= temp.ms_all %>]
		              <% } %>
		          <% } %>     
		        ];
	table2_1 = [
		          ['Dealer', 'Target', 'Result']          
		          <% for(DS temp : data){ %> 
		          	  <% if(
		          			temp.dealerName.equals("TOT")==false
		          	  	 && temp.salesMan.equals("이일형") == true  
		          		){ %>
		        	  ,["<%= temp.dealerName %>", <%= temp.target_ms %>, <%= temp.ms_all %>]
		              <% } %>
		          <% } %>     
		        ];
		
	table2_2 = [
		          ['Dealer', 'Target', 'Result']		          
		          
		          <% for(DS temp : data2){ %> 
		          	  <% if(
		          			temp.dealerName.equals("TOT")==false
		          	  	 && temp.salesMan.equals("이일형") == true  
		          		){ %>
		        	  ,["<%= temp.dealerName %>", <%= temp.target_ms %>, <%= temp.ms_all %>]
		              <% } %>
		          <% } %>     
		        ];
	table3_1 = [
		          ['Dealer', 'Target', 'Result']          
		          <% for(DS temp : data){ %> 
		          	  <% if(
		          			temp.dealerName.equals("TOT")==false
		          	  	 && temp.salesMan.equals("이주훈") == true  
		          		){ %>
		        	  ,["<%= temp.dealerName %>", <%= temp.target_ms %>, <%= temp.ms_all %>]
		              <% } %>
		          <% } %>     
		        ];
	
	table3_2 = [
		          ['Dealer', 'Target', 'Result']
		          <% for(DS temp : data2){ %> 
		          	  <% if(
		          			temp.dealerName.equals("TOT")==false
		          	  	 && temp.salesMan.equals("이주훈") == true  
		          		){ %>
		        	  ,["<%= temp.dealerName %>", <%= temp.target_ms %>, <%= temp.ms_all %>]
		              <% } %>
		          <% } %>     
		        ];
	
	
	
	
	
	pie_chart1_1 = [
	     ['Type', 'Sales']                  
	     <% for(DS temp : data){ %> 
	     	<% if(
	     			temp.dealerName.equals("TOT")==false
	     	  	 && temp.salesMan.equals("문정수") == true  
	     		){ %>
	   	  ,["<%= temp.dealerName %>", <%= temp.funded %> ]
	         <% } %>
	     <% } %>     	             
	   ];
	pie_chart1_2 = [
	       	     ['Type', 'Sales']                  
	       	     <% for(DS temp : data2){ %> 
	       	     	<% if(
	       	     			temp.dealerName.equals("TOT")==false
	       	     	  	 && temp.salesMan.equals("문정수") == true  
	       	     		){ %>
	       	   	  ,["<%= temp.dealerName %>", <%= temp.funded %> ]
	       	         <% } %>
	       	     <% } %>     	             
	       	   ];
	pie_chart2_1 = [
	       	     ['Type', 'Sales']                  
	       	     <% for(DS temp : data){ %> 
	       	     	<% if(
	       	     			temp.dealerName.equals("TOT")==false
	       	     	  	 && temp.salesMan.equals("이일형") == true  
	       	     		){ %>
	       	   	  ,["<%= temp.dealerName %>", <%= temp.funded %> ]
	       	         <% } %>
	       	     <% } %>     	             
	       	   ];
  	pie_chart2_2 = [
  	       	     ['Type', 'Sales']                  
  	       	     <% for(DS temp : data2){ %> 
  	       	     	<% if(
  	       	     			temp.dealerName.equals("TOT")==false
  	       	     	  	 && temp.salesMan.equals("이일형") == true  
  	       	     		){ %>
  	       	   	  ,["<%= temp.dealerName %>", <%= temp.funded %> ]
  	       	         <% } %>
  	       	     <% } %>     	             
  	       	   ];
       	
   	pie_chart3_1 = [
   	       	     ['Type', 'Sales']                  
   	       	     <% for(DS temp : data){ %> 
   	       	     	<% if(
   	       	     			temp.dealerName.equals("TOT")==false
   	       	     	  	 && temp.salesMan.equals("이주훈") == true  
   	       	     		){ %>
   	       	   	  ,["<%= temp.dealerName %>", <%= temp.funded %> ]
   	       	         <% } %>
   	       	     <% } %>     	             
   	       	   ];
     pie_chart3_2 = [
       	         ['Type', 'Sales']                  
       	          <% for(DS temp : data2){ %> 
       	           	<% if(
       	       	     	temp.dealerName.equals("TOT")==false
       	       	       	 && temp.salesMan.equals("이주훈") == true  
       	       	     	){ %>
       	       	  ,["<%= temp.dealerName %>", <%= temp.funded %> ]
       	            <% } %>
       	          <% } %>     	             
       	       ];
	$(function(){
		$(".sheetTab").click(function(){
			$(".sheetTab").css("background-color","#bbbbbb");
			
			$(this).css("background-color","#272727");
			
			
		});	
		
		
	});

</script>

<script type="text/javascript">
    
    


function drawBarColors(obj) {
	
	//alert(obj);
	
	
    var data = google.visualization.arrayToDataTable(obj.table);
    //0: { color: "#2478FF" },
   // 1: { color: "#53FF4C" }
    var options = {
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
     chartArea:{
     	left:0,
     	top:0,
     	width:'100%',
     	height:'100%'
     },
    legend:{
    	
    	textStyle: {
    		color: 'white', 
    		fontSize: 16}
   	},
    backgroundColor:'#292929',
      title: 'Performance of Sales by Dealer',
      titleTextStyle:{
      	color: "white",
      	/*fontName: <string>,
      	fontSize: <number>,
      	bold: <boolean>,
      	italic: <boolean>*/
      	
      },
      chartArea: {width: '50%'},
      /*
		color1 : "#2478FF",
		color2 : "#53FF4C",
		color3 : "#5BE1E1", 
		color4 : "#AF4BAD",	
      */
      colors: ['#2478FF', '#53FF4C'],
      hAxis: {
   	  textStyle: { 
   		  color: "white",
    	/*	  
    	  fontName: <string>,
    	  fontSize: <number>,
    	  bold: <boolean>,
    	  italic: <boolean>
    	  */
    		  },
        title: 'M/S',
        minValue: 0,
        titleTextStyle:{
        	color: "white",
        	//fontName: <string>,
        	//fontSize: <number>,
        	//bold: false,
        	//italic: false
        	
        },
      },
      vAxis: {
       	  textStyle: { 
       		  color: "white",
        	/*	  
        	  fontName: <string>,
        	  fontSize: <number>,
        	  bold: <boolean>,
        	  italic: <boolean>
        	  */
        		  },
       
       // title: 'Dealer',
        titleTextStyle:{
        	//color: "white",
        	/*fontName: <string>,
        	fontSize: <number>,
        	bold: <boolean>,
        	italic: <boolean>*/
        	
        },

      }
    };
    var chart = new google.visualization.BarChart(document.getElementById(obj.chart));    
    chart.draw(data, options);
  }
</script>

<script>      
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
				/*
	            0: { color: "#2478FF" },
		        1: { color: "#53FF4C" },
		        2: { color: "GREEN" },
		        3: { color: "#42ddac" },
		        */
	            /*2: { color: 'transparent' }*/
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

var chart1 = function(pie_chart){
	this.title = "Lexus Funded Amount Ratio";
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
	this.data = pie_chart;

}	

</script>

<script>

var chart2 = function(pie_chart){
	this.title = "Toyota Funded Amount Ratio";
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
	this.data = pie_chart;
	//this.isStacked = true;
	//===============================================
}	

</script>


<script>


function drawChart(person){
	var obj1={};
	var obj2={};
	
	switch(person){
	case 1:
		drawChart1(new chart1(pie_chart1_1));
		drawChart1(new chart2(pie_chart1_2));
		obj1.table = table1_1;
		obj1.chart = "chart_div1";
		google.charts.setOnLoadCallback(drawBarColors(obj1));
		
		obj2.table = table1_2;
		obj2.chart = "chart_div2";
		google.charts.setOnLoadCallback(drawBarColors(obj2));		
		break;
	case 2:
		drawChart1(new chart1(pie_chart2_1));
		drawChart1(new chart2(pie_chart2_2));
		obj1.table = table2_1;
		obj1.chart = "chart_div1";
		google.charts.setOnLoadCallback(drawBarColors(obj1));
		
		obj2.table = table2_2;
		obj2.chart = "chart_div2";
		google.charts.setOnLoadCallback(drawBarColors(obj2));	
		break;
	case 3:
		drawChart1(new chart1(pie_chart3_1));
		drawChart1(new chart2(pie_chart3_2));
		obj1.table = table3_1;
		obj1.chart = "chart_div1";
		google.charts.setOnLoadCallback(drawBarColors(obj1));
		
		obj2.table = table3_2;
		obj2.chart = "chart_div2";
		google.charts.setOnLoadCallback(drawBarColors(obj2));	
		break;
	
	
	}
	
	

	

	
}


var sheetTab = 1;

//Override용
function onResized(){
	menuWidth = $(window).width()/10;	
	drawChart(sheetTab);	 
}

<%@ page import= " tools.EnvVal " %>

$(function(){	
	
		//nextPage = "<%=EnvVal.NEXT_LexusTarget%>";
		
		selectedMenu("menuSalesman",2);

		if (testing) {
			//테스트용=====================================				
			google.charts.setOnLoadCallback(function(){
				drawChart(sheetTab);
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

	
	<div id = "chart_div1" style="height:50%; width:85%; position:absolute; left:25%; top: 0px; border-radius: 5px; overflow:hidden;" id="menus"></div>
	<div id = "chart_div2" style="height:50%; width:85%; position:absolute; left:25%; bottom: 0px; border-radius: 5px; overflow:hidden;" id="menus"></div>
	<div id="chart_id1"></div>		
	<div id="chart_id2"></div>
	

	
	<div class="sheetTab" onclick="sheetTab=1; drawChart(sheetTab);" style="background-color: #272727; position:fixed; right:16%; top:10px; width:8%; color:white; border-left:2px solid gray; border-top:2px solid gray; padding-left:15px;">
		JS Moon 
	</div>		
	<div class="sheetTab" onclick="sheetTab=2; drawChart(sheetTab);" style="background-color: #bbbbbb; position:fixed; right:8%; top:10px; width:8%; color:white; border-left:2px solid gray; border-top:2px solid gray; padding-left:15px;">
		IH Lee 
	</div>	
	<div class="sheetTab" onclick="sheetTab=3; drawChart(sheetTab);" style="background-color: #bbbbbb; position:fixed; right:0%; top:10px; width:8%; color:white; border-left:2px solid gray; border-top:2px solid gray; padding-left:15px;">
		JH Lee 
	</div>


	<%@ include file="/SalesPerformance/import/nav.jsp"%>


	<img style="position: fixed;" id="newLoading"
		src="../img/support-loading.gif" />


</body>
</html>