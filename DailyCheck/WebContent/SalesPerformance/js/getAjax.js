
function getSalesWithAjax(obj) { // page1.jsp ~ func/page1Func.jsp와 연계됨.
	var table = obj.dataTable;
	//alert(obj.sort);
	$.ajax({
		url : 'func/getSalesData.jsp', //바꿔줄것
		type : 'get',
		dataType : 'json',
		data : {
            id : today,//$("input[name='mydate']").val()
            code : obj.sort
        },
		success : function(dataSet) {					
			var dataSetArray = dataSet.salesDataSet;
			var temp = dataSetArray.split(',');
			for(var i=0;i<temp.length;i++){
				temp[i]=temp[i].split('/');
			}
			//     [ '지점', '목표 금액', '현재 금액 ', '목표M/S', '현재M/S' ],
			
			table[0][0]="지점";
			table[0][1]="목표 금액";
			table[0][2]="현재 금액";
			table[0][3]="목표M/S"
			table[0][4]="현재M/S";
			
			for(var i=0;i<temp.length-2;i++){
				var tempText="";
				for(var j=0;j<temp[i].length;j++){
					
					arrayLexus[i][j] = temp[i][j]; 
					tempText += "("+i+","+j+")"+arrayLexus[i][j]+", ";
					//console.log(i+"행 "+j+"열"+arrayLexus[i][j]); //1614

				}	
				
				console.log(tempText);
				
				table[i+1][0]=(arrayLexus[i][1]+"(" + arrayLexus[i][3] + ")"); //목표금액
				table[i+1][1]=Number(arrayLexus[i][5]); //목표금액
				table[i+1][2]=Number(arrayLexus[i][13]); //현재 금액
				table[i+1][3]=Number(arrayLexus[i][6]); //타겟MS
				table[i+1][4]=Number(arrayLexus[i][9]); //현재MS
			}		
			//drawChart(); //lexus
			//google.charts.setOnLoadCallback(drawCharts(obj));	
			google.charts.setOnLoadCallback(function(){drawCharts(obj)});
		}
	});
}
/*
function getSalesWithAjaxToyota(obj) { // page1.jsp ~ func/page1Func.jsp와 연계됨.
	$.ajax({
		url : 'func/getSalesData.jsp', //바꿔줄것
		type : 'get',
		dataType : 'json',
		data : {
            id : today,//$("input[name='mydate']").val()
            code : 'A272'
        },
		success : function(dataSet) {		
			var dataSetArray = dataSet.salesDataSet;
			var temp = dataSetArray.split(',');
			for(var i=0;i<temp.length;i++){
				temp[i]=temp[i].split('/');
			}
			
			for(var i=0;i<temp.length-1;i++){
				var tempText="";
				for(var j=0;j<temp[i].length;j++){					
					arrayToyota[i][j] = temp[i][j]; 
					tempText += "("+i+","+j+")"+arrayToyota[i][j]+", ";
				}				
				td[i][0]=(arrayToyota[i][1]+"(" + arrayToyota[i][3] + ")"); //목표금액
				td[i][1]=Number(arrayToyota[i][5]); //목표금액
				td[i][2]=Number(arrayToyota[i][13]); //현재 금액
				td[i][3]=Number(arrayToyota[i][6]); //타겟MS
				td[i][4]=Number(arrayToyota[i][9]); //현재MS
			}	
			google.charts.setOnLoadCallback(drawCharts(obj));

		}
	});
}
*/
