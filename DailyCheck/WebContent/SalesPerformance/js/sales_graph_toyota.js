var toyotaChart = $("#chart_id2");


function drawChart2() {	
	
	var thisGraphX = TGraphX;
	var thisGraphY = TGraphY; 
	var thisMatrixX= TMatrixX;
	var thisSubMatrixX = TSubMatrixX;
	var thisMatrixMarginX = TMatrixMarginX;
	var thisMatrixMarginY = TMatrixMarginY;
	
	var thisGraphLeft = TGraphLeft;
	var thisGraphTop = TGraphTop;
	var thisGraphMargin = TGraphMargin;
	
	var thisLineWidth = TLineWidth;
	//var chart_nameLeft = chart_name2Left;
	
	$("#chart_id2").css("width",thisGraphX-thisMatrixMarginX * 2);
	$("#chart_id2").css("height",thisGraphY-thisMatrixMarginY * 2);
	$("#matrix_id2").css("width",thisMatrixX-thisMatrixMarginX * 2);
	$("#sub_matrix_id2").css("width",thisSubMatrixX-thisMatrixMarginX * 2);
	
	$("#chart_name2").css("width",thisGraphX-thisMatrixMarginX * 2);

	$("#matrix_id2").css("right",thisMatrixMarginX);
	$("#sub_matrix_id2").css("right",thisMatrixMarginX);
	$("#sub_matrix_id2").css("bottom",thisMatrixMarginY);
	
	$("#chart_id2").css("left",thisGraphLeft);
	$("#chart_id2").css("bottom",thisGraphTop);
	$("#chart_id2").css("margin",thisGraphMargin);
	
	//$("#chart_name2").css("margin-left",chart_nameLeft);

	

	var data = google.visualization.arrayToDataTable([
			[ '지점', '목표 금액', '현재 금액 ', '목표M/S','현재M/S' ], 
			[ td[0][0], td[0][1], td[0][2], td[0][3],td[0][4] ], 
			[ td[1][0], td[1][1], td[1][2], td[1][3],td[1][4] ],
			[ td[2][0], td[2][1], td[2][2], td[2][3],td[2][4] ], 
			[ td[3][0], td[3][1], td[3][2], td[3][3],td[3][4] ],
			[ td[4][0], td[4][1], td[4][2], td[4][3],td[4][4] ], 
			[ td[5][0], td[5][1], td[5][2], td[5][3],td[5][4] ],
			[ td[6][0], td[6][1], td[6][2], td[6][3],td[6][4] ], 
			[ td[7][0], td[7][1], td[7][2], td[7][3],td[7][4] ],
			[ td[8][0], td[8][1], td[8][2], td[8][3],td[8][4] ], 		
	//[ "총합", , 168, 0.80 ],
	]);
	
	
	// data.addColumn({type:'string', role:'annotation'}); // annotation role col. -- not enabled for bar charts
	// data.addColumn({type:'string', role:'annotationText'}); // annotationText col. -- not enabled for bar charts
	  
	
	var options = {
		backgroundColor : '#292929', //배경색
		/*
		title : '[Toyota] Feb Sales Goal', //제목
		titleTextStyle : {
			color : 'white'
		},
		*/

		hAxis : {
			showTextEvery : 1, //얼마나 건너뛸지 정한다.
			textStyle : {
				color : '#D9E8F7', //강남, 서초, 용산등등의 색깔
				bold : false,
			}
		},
		vAxes : {
			0 : { //왼쪽 y축
				viewWindowMode : 'explicit',
				viewWindow : {
					max : 80, //최대값
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
					max : 400, //최대값
					min : 0  //최소값
				},
				gridlines : {
					color :  'transparent' //가로선 색깔
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
		colors : [  graphColor.color1,graphColor.color2,graphColor.color3, graphColor.color4 ], //#A7CF25도 있음. 차트의 색깔.
		chartArea : {
			left : "4%",
			top : "15%",
			width : "92%",
			height : "70%",
		},
		animation : {
			duration : 2000,
			easing : 'out',
			startup : true,

		},
		bar : {
			groupWidth : "30%",
		},
		legend : { //범례
			position : 'bottom',
			textStyle : {
				color : '#D9E8F7',
				fontSize: 20,
			}
		},
		lineWidth: thisLineWidth,
		focusTarget : "datum",

		
	};
	$(function() {
		var chart = new google.visualization.ComboChart(document.getElementById('chart_id2'));
		chart.draw(data, options);

		$("#chart_name2").html(
				"<div style='left:1%; width:10%; bottom:15px; position:absolute; text-align:left; font-weight: normal;'>M/S(%)</div>"
				+"TOYOTA 영업 목표<br/>"
				+"<div class='chart_name_sub'>"+ToyotaTitle+"("+d.yyyymmdd()+")</div>"
				+"<div style='right:1%; width:10%; bottom:15px; position:absolute; text-align:right; font-weight: normal;'>금액(백 만원)</div>"
			);	
		$("#newLoading").hide();
		$("#middleLine").show();

	});

}