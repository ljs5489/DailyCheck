


function drawChart3() {
	var thisGraphX = WGraphX;
	var thisGraphY = WGraphY;

	var thisGraphLeft = WGraphLeft;
	var thisGraphTop = WGraphTop;
	var thisGraphMargin = WGraphMargin;
	var thisLineWidth = WLineWidth;
	//var chart_nameLeft = chart_nameLeft;
	
	var thisMatrixMarginX = 0;
	var thisMatrixMarginY = 0;


	
	$("#whole_chart_id").css("width", thisGraphX - thisMatrixMarginX * 2);
	$("#whole_chart_id").css("height", thisGraphY - thisMatrixMarginY * 2);
	$("#whole_chart_name").css("width", thisGraphX - thisMatrixMarginX * 2);
	$("#whole_chart_id").css("left", thisGraphLeft);
	$("#whole_chart_id").css("top", thisGraphTop);
	$("#whole_chart_id").css("margin", thisGraphMargin);

	var data = google.visualization.arrayToDataTable([
			[ '지점', '목표 금액', '현재 금액 ', '목표M/S', '현재M/S' ],
			[ wd[0][0], wd[0][1], wd[0][2], wd[0][3], wd[0][4] ],
			[ wd[1][0], wd[1][1], wd[1][2], wd[1][3], wd[1][4] ],
			[ wd[2][0], wd[2][1], wd[2][2], wd[2][3], wd[2][4] ],
	//[ "총합", , 168, 0.80 ],
	]);
	var options = {
		backgroundColor : '#292929', //배경색
		/*
		title : '[Lexus] Feb Sales Goal', //제목
		titleTextStyle : { color : 'white' },
		 */
		hAxis : {
			showTextEvery : 1, //얼마나 건너뛸지 정한다.
			textStyle : {
				color : '#D9E8F7', //강남, 서초, 용산등등의 색깔
				bold : true,
			},
		},
		vAxes : {
			0 : { //왼쪽 y축
				viewWindowMode : 'explicit',
				viewWindow : {
					max : 50, //최대값
					min : 0
				//최소값
				},
				gridlines : {
					color : ''//가로선 색깔
				},
				textStyle : {
					color : '#D9E8F7'
				},
			},

			1 : {//오른쪽 y축
				viewWindowMode : 'explicit',
				viewWindow : {
					max : 350, //최대값
					min : 0
				//최소값
				},
				gridlines : {
					color : 'transparent' //가로선 색깔
				},
				textStyle : {
					color : '#D9E8F7'
				},
				//format : "#%" //~%로 나온다.
				format : "#,###"
			},

		},
		seriesType : 'bars',
		series : {
			0 : {
				targetAxisIndex : 1, //0은 0을 따름
			/*type : 'line',*/
			/*	lineDashStyle: [2, 2, 20, 2, 20, 2]*/

			},
			1 : {
				targetAxisIndex : 1, //1은 0을 따름
			/*type : 'line',*/
			/*	lineDashStyle: [2, 2, 20, 2, 20, 2]*/
			},
			2 : {
				targetAxisIndex : 0, //2는 1을 따름
				type : 'line',
			},
			3 : {
				targetAxisIndex : 0, //2는 1을 따름
				type : 'line',
			},
		},
		colors : [ "#2478FF", "#53FF4C", "#FFA648", "#FFA9FF" ], //#A7CF25도 있음. 차트의 색깔.
		chartArea : {
			left : "5%",
			top : "15%",
			width : "90%",
			height : "70%",
		},

		animation : {
			duration : 1500,
			easing : 'out',
			startup : true,

		},

		bar : {
			groupWidth : "45%",
		},
		legend : { //범례
			position : 'bottom',
			textStyle : {
				color : '#D9E8F7',
			//fontSize: 16
			}
		},
		lineWidth : thisLineWidth
	};

	//$(function(){
	var chart = new google.visualization.ComboChart(document
			.getElementById('whole_chart_id'));
	chart.draw(data, options);
	$("#whole_chart_name").html(
			"<div style='left:3%; width:10%; bottom:5px; position:absolute; text-align:left;'>(%)</div>"
			+WholeTitle 
			+ d.yyyymmdd()
			+"<div style='right:2%; width:10%; bottom:5px; position:absolute; text-align:right;'>(백 만원)</div>"
		);
	$("#newLoading").hide();
	$("#middleLine").show();

	//});

}