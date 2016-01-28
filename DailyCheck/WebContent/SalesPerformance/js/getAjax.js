
function getSalesWithAjax(obj) { // page1.jsp ~ func/page1Func.jsp와 연계됨.
	var table = obj.dataTable;
	
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
			
			for(var i=0;i<temp.length-1;i++){
				var tempText="";
				for(var j=0;j<temp[i].length;j++){
					//console.log("temp "+i+" : "+j+" : "+temp[i][j]);
					//console.log("arrayLexus "+i+" : "+j+" : "+arrayLexus[i][j]);
					
					arrayLexus[i][j] = temp[i][j]; 
					tempText += "("+i+","+j+")"+arrayLexus[i][j]+", ";
					//console.log(i+"행 "+j+"열"+arrayLexus[i][j]); //1614

				}				
				
				table[i][0]=(arrayLexus[i][1]+"(" + arrayLexus[i][3] + ")"); //목표금액
				table[i][1]=Number(arrayLexus[i][5]); //목표금액
				table[i][2]=Number(arrayLexus[i][13]); //현재 금액
				table[i][3]=Number(arrayLexus[i][6]); //타겟MS
				table[i][4]=Number(arrayLexus[i][9]); //현재MS
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
