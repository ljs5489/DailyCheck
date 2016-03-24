/*

google.charts.load('current', { 'packages' : [ 'corechart' ] });
google.charts.setOnLoadCallback(drawVisualization);

function drawVisualization() {
	// Some raw data (not necessarily accurate)
	var data = google.visualization.arrayToDataTable([
			[ 'Month', 'M/S', '목표' ], [ 'Lexus', 28, 34 ], [ '강남', 23, 36 ],
			[ '서초', 25, 29 ], [ '용산', 33, 38 ], [ '분당', 29, 35 ],
			[ '부산', 35, 36 ], [ '인천', 27, 37 ], [ '광주', 33, 32 ],
			[ '대구', 31, 38 ], [ '대전', 4, 20 ] ]);

	var options = {
		
		colors : ['white','green','#004411'], //바
		
		title : '11~12월 렉서스 점유율 목표 달성 현황',
		titleTextStyle : { color : 'white' },
		vAxis : {
			title : 'Performance',
			titleTextStyle : {
				color : 'white'
			}

		},
		hAxis : {
			title : 'Dealer',
			textStyle : {
				color : 'white'
			}

		},
		seriesType : 'bars',
		series : {
			1 : {
				type : 'line'
			}
		},
		backgroundColor : '#363636',
		animation : {
			duration : 1000,
			easing : 'out',
			startup : true,

		},
		annotations : {
			textStyle : {
				fontName : 'Times-Roman',
				fontSize : 18,
				bold : true,
				italic : true,
				// The color of the text.
				color : '#871b47',
				// The color of the text outline.
				auraColor : '#d799ae',
				// The transparency of the text.
				opacity : 0.8
			}
		}

	};

	var chart = new google.visualization.ComboChart(document
			.getElementById('chart_div'));
	chart.draw(data, options);
}

*/