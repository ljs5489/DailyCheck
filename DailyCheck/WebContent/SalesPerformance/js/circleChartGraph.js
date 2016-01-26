

google.charts.setOnLoadCallback(drawCircleChart);

function drawCircleChart() {
	var data1 = google.visualization.arrayToDataTable([ 
	        [ 'Label', 'Value' ],
			[ '목표금액', 4427 ]
	       ]);
	var data2 = google.visualization.arrayToDataTable([ 
	            [ 'Label', 'Value' ],
	  			[ 'M/S', 23.2 ]
	       ]);
	var data3 = google.visualization.arrayToDataTable([ 
	            [ 'Label', 'Value' ],
	  			[ '목표금액', 4936 ]
	        ]);
	var data4 = google.visualization.arrayToDataTable([ 
	            [ 'Label', 'Value' ],
	  			[ 'M/S', 23.2 ]
	  	   ]);
	var options1 = {
		width : scaleWidth,
		height : scaleWidth,
		redFrom : 0,
		redTo : 8870*(3/4),
		yellowFrom : 8870*(3/4),
		yellowTo : 8870*(4/4),
		greenFrom : 8870*(4/4),
		greenTo : 8870*(5/4),
		minorTicks : 10,
		max : 8870*(5/4)
	};
	var options2 = {
			width : scaleWidth,
			height : scaleWidth,
			redFrom : 90,
			redTo : 100,
			yellowFrom : 75,
			yellowTo : 90,
			minorTicks : 10,
			max : 30*(5/4)
		};
	var options3 = {
			width : scaleWidth,
			height : scaleWidth,
			redFrom : 90,
			redTo : 100,
			yellowFrom : 75,
			yellowTo : 90,
			minorTicks : 3,
			max:1975 * (5/4)
		};
	var options4 = {
			width : scaleWidth,
			height : scaleWidth,
			redFrom : 90,
			redTo : 100,
			yellowFrom : 75,
			yellowTo : 90,
			minorTicks : 5
		};

	var chart = new google.visualization.Gauge(document.getElementById('circleChart1'));
	chart.draw(data1, options1);
	var chart = new google.visualization.Gauge(document.getElementById('circleChart2'));
	chart.draw(data2, options2);
	var chart = new google.visualization.Gauge(document.getElementById('circleChart3'));
	chart.draw(data3, options3);
	var chart = new google.visualization.Gauge(document.getElementById('circleChart4'));
	chart.draw(data4, options4);
}

$(function(){
	$("#circleChart1").width(scaleWidth);
	$("#circleChart1").height(scaleWidth);
	$("#circleChart1").css("left",menuWidth+15);
	$("#circleChart1").css("top",15);
	//$("#circleChart1").css("left",menuWidth);
	
	$("#circleChart2").width(scaleWidth);
	$("#circleChart2").height(scaleWidth);
	$("#circleChart2").css("left",menuWidth+15);
	$("#circleChart2").css("top",scaleWidth+15);
	
	$("#circleChart3").width(scaleWidth);
	$("#circleChart3").height(scaleWidth);
	$("#circleChart3").css("left",menuWidth+15);
	$("#circleChart3").css("bottom",scaleWidth+15);
	
	$("#circleChart4").width(scaleWidth);
	$("#circleChart4").height(scaleWidth);
	$("#circleChart4").css("left",menuWidth+15);
	$("#circleChart4").css("bottom",15);
});