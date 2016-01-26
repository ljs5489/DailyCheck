
function getSalesWithAjaxLexus() { // page1.jsp ~ func/page1Func.jsp와 연계됨.

	$.ajax({
		url : 'func/getSalesData.jsp', //바꿔줄것
		type : 'get',
		dataType : 'json',
		data : {
            id : today,//$("input[name='mydate']").val()
            code : 'A271'
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
				
				//console.log(ld[i][0]);
				//console.log(arrayLexus[i][1]);
				//console.log(arrayToyota[i][14]);
				
				ld[i][0]=(arrayLexus[i][1]+"(" + arrayLexus[i][3] + ")"); //목표금액
				ld[i][1]=Number(arrayLexus[i][5]); //목표금액
				ld[i][2]=Number(arrayLexus[i][13]); //현재 금액
				ld[i][3]=Number(arrayLexus[i][6]); //타겟MS
				ld[i][4]=Number(arrayLexus[i][9]); //현재MS

			}	
	
			//drawChart(); //lexus
			google.charts.setOnLoadCallback(drawChart);
	
		}
	});
}

function getSalesWithAjaxToyota() { // page1.jsp ~ func/page1Func.jsp와 연계됨.

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
					//console.log("temp "+i+" : "+j+" : "+temp[i][j]);
					//console.log("arrayToyota "+i+" : "+j+" : "+arrayToyota[i][j]);
					
					arrayToyota[i][j] = temp[i][j]; 
					tempText += "("+i+","+j+")"+arrayToyota[i][j]+", ";
					//console.log(i+"행 "+j+"열"+arrayToyota[i][j]); //1614

				}
				
				//console.log(td[i][0]);
				//console.log(arrayToyota[i][1]);
				//console.log(arrayToyota[i][14]);
				
				
				td[i][0]=(arrayToyota[i][1]+"(" + arrayToyota[i][3] + ")"); //목표금액
				td[i][1]=Number(arrayToyota[i][5]); //목표금액
				td[i][2]=Number(arrayToyota[i][13]); //현재 금액
				td[i][3]=Number(arrayToyota[i][6]); //타겟MS
				td[i][4]=Number(arrayToyota[i][9]); //현재MS

			}	
			//drawChart2(); //lexus
			google.charts.setOnLoadCallback(drawChart2);

		}
	});
}
