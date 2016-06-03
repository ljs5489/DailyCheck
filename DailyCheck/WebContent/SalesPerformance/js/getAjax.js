
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
					
					arrays[i][j] = temp[i][j]; 
					tempText += "("+i+","+j+")"+arrays[i][j]+", ";
				}	
				
				console.log(tempText);
				
				table[i+1][0]=(arrays[i][1]+"(" + arrays[i][3] + ")"); //목표금액
				table[i+1][1]=Number(arrays[i][5]); //목표금액
				table[i+1][2]=Number(arrays[i][13]); //현재 금액
				table[i+1][3]=Number(arrays[i][6]); //타겟MS
				table[i+1][4]=Number(arrays[i][9]); //현재MS
			}		
			//drawChart(); //lexus
			//google.charts.setOnLoadCallback(drawCharts(obj));	
			google.charts.setOnLoadCallback(function(){drawCharts(obj)});
		}
	});
}

/*
  var staffData = [ //[ '지점', '목표 금액', '현재 금액 ', '목표M/S','현재M/S' ],
           [ '지점', '목표 금액', '현재 금액 ', '목표M/S', '현재M/S' ],
			[ "표제헌", 7320, 172, 24.5,22.7],
			[ "문정수", 6120, 90, 21.3,9.7], 
			[ "이일형", 3180, 108, 24.0,16.0 ], 
			[ "이주훈", 3380, 109, 26.7,12.0 ],
			[ "합계", 20000,  149, 32.4,22.2 ], 
			//[ "합계"     , 1975, 1041, 25.0,18.9 ], //"합계",
      ];
  */
function getStaffSales(obj) { //오직 StaffTarget.jsp에서만 쓰임.
	var table = obj.dataTable;
	var result = [
	              [ '지점', '목표 금액', '현재 금액 ', '달성율(%)' ],
	              ["표제헌",0,0,0], //사람, 목표매출, 실제매출
	              ["문정수",0,0,0],
	              ["이일형",0,0,0],
	              ["이주훈",0,0,0],
	              ["합계"  ,0,0,0],
	              ];
	
	
	function addSales(val,i){		
		//합계
		result[5][1] += Number(arrays[i][5]);
		result[5][2] += Number(arrays[i][13]);
		
		switch(val){	
		case "표제헌":
			result[1][1] += Number(arrays[i][5]);
			result[1][2] += Number(arrays[i][13]);
			break;
		case "문정수":
			result[2][1] += Number(arrays[i][5]);
			result[2][2] += Number(arrays[i][13]);
			break;
		case "이일형":
			result[3][1] += Number(arrays[i][5]);
			result[3][2] += Number(arrays[i][13]);
			break;
		case "이주훈":
			result[4][1] += Number(arrays[i][5]);
			result[4][2] += Number(arrays[i][13]);
			break;					
		}		
	}
	
	
	$.ajax({
		url : 'func/getSalesData.jsp', //바꿔줄것
		type : 'get',
		dataType : 'json',
		data : {
            id : today,
            code : "A271"
        },
		success : function(dataSet) {					
			var dataSetArray = dataSet.salesDataSet;
			var temp = dataSetArray.split(',');
			for(var i=0;i<temp.length;i++){
				temp[i]=temp[i].split('/');
			}	
			
			for(var i=0;i<temp.length-2;i++){
				var tempText="";
				for(var j=0;j<temp[i].length;j++){					
					arrays[i][j] = temp[i][j]; 
					tempText += "("+i+","+j+")"+arrays[i][j]+", ";
				}	
				addSales(arrays[i][3],i);
			}		
			//===============================================
			$.ajax({
				url : 'func/getSalesData.jsp', //바꿔줄것
				type : 'get',
				dataType : 'json',
				data : {
		            id : today,
		            code : "A272"
		        },
				success : function(dataSet) {					
					var dataSetArray = dataSet.salesDataSet;
					var temp = dataSetArray.split(',');
					for(var i=0;i<temp.length;i++){
						temp[i]=temp[i].split('/');
					}			
					
					for(var i=0;i<temp.length-2;i++){
						var tempText="";
						for(var j=0;j<temp[i].length;j++){					
							arrays[i][j] = temp[i][j]; 
							tempText += "("+i+","+j+")"+arrays[i][j]+", ";
						}								
						addSales(arrays[i][3],i);							
					}
					
					
					for(var i=1;i<=4;i++){
						result[i][3]=Math.floor(result[i][2]/result[i][1]*10000)/100;
					}
					
					console.log("표제헌");
					console.log(result[0][1]);
					console.log(result[0][2]);			
					console.log(result[0][3]);	

					console.log("문정수");
					console.log(result[1][1]);
					console.log(result[1][2]);	
					console.log(result[1][3]);	

					console.log("이일형");
					console.log(result[2][1]);
					console.log(result[2][2]);
					console.log(result[2][3]);	

					console.log("이주훈");
					console.log(result[3][1]);
					console.log(result[3][2]);
					console.log(result[3][3]);	
					
					obj.dataTable = result;
					google.charts.setOnLoadCallback(function(){drawCharts(obj)});
				}
			});
			//===============================================


		}
	});
}
