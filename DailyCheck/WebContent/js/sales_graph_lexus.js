
	google.load("visualization", "1", {
		packages : [ "corechart" ]
	});
	google.setOnLoadCallback(drawChart);
	function drawChart() {
		//$("#chart_id").css("width","500px");
		//$("#chart_id").css("height","400px");
		
		var thisGraphX = LGraphX;
		var thisGraphY = LGraphY; 
		var thisMatrixX= LMatrixX;
		var thisSubMatrixX = LSubMatrixX;
		
		var thisMatrixMarginX = LMatrixMarginX;
		var thisMatrixMarginY = LMatrixMarginY;
		
		var thisGraphLeft = LGraphLeft;
		var thisGraphTop = LGraphTop;
		var thisGraphMargin = LGraphMargin;
		
		var thisLineWidth = LLineWidth;
		//var chart_nameLeft = chart_nameLeft;
		
		$("#chart_id").css("width",thisGraphX-thisMatrixMarginX * 2);
		$("#chart_id").css("height",thisGraphY-thisMatrixMarginY * 2);
		$("#matrix_id").css("width",thisMatrixX-thisMatrixMarginX * 2);
		$("#sub_matrix_id").css("width",thisSubMatrixX-thisMatrixMarginX * 2);		

		$("#chart_name").css("width",thisGraphX-thisMatrixMarginX * 2);
		//$("#chart_name").css("margin-left",chart_nameLeft);
		
		$("#matrix_id").css("right",thisMatrixMarginX);
		$("#matrix_id").css("top",thisMatrixMarginY);
		$("#sub_matrix_id").css("right",thisMatrixMarginX);

		$("#chart_id").css("left",thisGraphLeft);
		$("#chart_id").css("top",thisGraphTop);
		$("#chart_id").css("margin",LGraphMargin);



			
		var data = google.visualization.arrayToDataTable([
				[ '지점', '목표인수금액', '현재인수금액', '목표점유율', '현재점유율' ],
				[ "강남", ld[0][1], ld[0][2], ld[0][3],ld[0][4] ], 
				[ "서초", ld[1][1], ld[1][2], ld[1][3],ld[1][4] ],
				[ "용산", ld[2][1], ld[2][2], ld[2][3],ld[2][4] ], 
				[ "분당", ld[3][1], ld[3][2], ld[3][3],ld[3][4] ],
				[ "인천", ld[4][1], ld[4][2], ld[4][3],ld[4][4] ], 
				[ "부산", ld[5][1], ld[5][2], ld[5][3],ld[5][4] ],
				[ "대구", ld[6][1], ld[6][2], ld[6][3],ld[6][4] ], 
				[ "광주", ld[7][1], ld[7][2], ld[7][3],ld[7][4] ],
				[ "대전", ld[8][1], ld[8][2], ld[8][3],ld[8][4] ], 				
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
					bold: true,
				},
			},
			vAxes : {
				0 : { //왼쪽 y축
					viewWindowMode : 'explicit',
					viewWindow : {
						max : 3000, //최대값
						min : 0  //최소값
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
						max : 100, //최대값
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
					targetAxisIndex : 0, //0은 0을 따름
					type : 'line',
					lineDashStyle: [2, 2, 20, 2, 20, 2]
					
				},
				1 : {
					targetAxisIndex : 0, //1은 0을 따름
					type : 'line',
					lineDashStyle: [2, 2, 20, 2, 20, 2]
				},
				2 : {
					targetAxisIndex : 1 //2는 1을 따름
				},
				3 : {
					targetAxisIndex : 1 //2는 1을 따름
				}, 
			},
			colors : [ "#DEB84F", "#14899D", "#17C67E","#eeeeee" ], //#A7CF25도 있음. 차트의 색깔.
			chartArea : {
				left :"8%",
				top : "15%",
				width : "85%",
				height : "70%",
			},
			animation : {
				duration : 2000,
				easing : 'out',
				startup : true,

			},
			bar : {
				groupWidth:"30%",				
			},
			legend : { //범례
				position: 'bottom', 
				textStyle: {
					color: '#D9E8F7', 
					//fontSize: 16
				}
			},
			lineWidth: thisLineWidth
		};
		
		
		
		$(function(){
			var chart = new google.visualization.ComboChart(document.getElementById('chart_id'));
			chart.draw(data, options);

		});
		
	}