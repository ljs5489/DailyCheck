
function drawCharts(obj) {
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

	//var chart_nameLeft = chart_nameLeft;

	$(thisDiv).css("width", thisGraphX - thisMatrixMarginX * 2);
	$(thisDiv).css("height", thisGraphY - thisMatrixMarginY * 2);
	
	$("#matrix_id").css("width", thisMatrixX - thisMatrixMarginX * 2);
	$("#sub_matrix_id").css("width", thisSubMatrixX - thisMatrixMarginX * 2);
	$("#matrix_id").css("right", thisMatrixMarginX);
	$("#matrix_id").css("top", thisMatrixMarginY);
	$("#sub_matrix_id").css("right", thisMatrixMarginX);

	$(thisDiv).css("left", thisGraphLeft);
	$(thisDiv).css("top", thisGraphTop);
	$(thisDiv).css("margin", thisGraphMargin);
	
	$(thisHeadDiv).css("width", thisGraphX - thisMatrixMarginX * 2);
	$(thisHeadDiv).css("margin-left",thisGraphHead_left);	
	$(thisHeadDiv).css("margin-top",thisGraphHead_top);	

	
	console.log(obj.dataTable);
	
	var data = google.visualization.arrayToDataTable(obj.dataTable);
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
				bold : false,
			},
		},
		vAxes : {
			0 : { //왼쪽 y축
				viewWindowMode : 'explicit',
				viewWindow : {
					max : lineMax, //최대값
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
					max : barMax, //최대값
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
		series : obj.series,
		colors : [  graphColor.color1,graphColor.color2,graphColor.color3, graphColor.color4 ], //#A7CF25도 있음. 차트의 색깔.
		chartArea : obj.chartArea,

		animation : {
			duration : 1500,
			easing : 'out',
			startup : true,

		},

		bar : {
			groupWidth : thisBarWith,
		},
		legend : { //범례
			position : 'bottom',
			textStyle : {
				color : '#D9E8F7',
				fontSize: thisLegendFontSize,
			}
		},
		lineWidth : thisLineWidth,
		focusTarget : "datum",
		/*isStacked: true*/

	};

	//$(function(){
	var chart = new google.visualization.ComboChart(document.getElementById(obj.on_id));
	chart.draw(data, options);
	$(thisHeadDiv).html(
			"<div style='left:1%; width:30%; bottom:15px; position:absolute; text-align:left; font-weight: normal;'>"+obj.graphHead_title_left+"</div>"
			+thisGraphHead_title+"<br/>"
			+"<div class='chart_name_sub'>"+thisSubTitle+"("+d.yyyymmdd()+")</div>"
			+"<div style='right:1%; width:30%; bottom:15px; position:absolute; text-align:right; font-weight: normal;'>"+obj.graphHead_title_right+"</div>"
		);
	$("#newLoading").hide();
	$("#middleLine").show();

	//});

}