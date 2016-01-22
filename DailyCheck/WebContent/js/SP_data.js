
var ld = [
			[ "강남(JS MOON)", 1614, 267, 31.1,13.15 ], //"강남", 
			[ "서초(JS MOON)", 1258, 173, 26.7,14.28 ], //"서초",
			[ "용산(JS MOON)", 1523, 361, 34.8,22.58 ], //"용산", 
			[ "분당(JH LEE)", 1269, 659, 30.3,24.39 ], //"분당", 
			[ "부산(IH LEE)", 507, 622, 30.9,28.57 ], //"부산", 
			[ "광주(JH LEE)", 886, 191, 27.3,36.36], //"광주",			
			[ "인천(IH LEE)", 1040, 88, 31.4,40 ], //"인천", 
			[ "대구(JS MOON)", 584, 371, 30.8,28.57], //"대구",
			[ "대전(JH LEE)", 189, 38, 17.9,8.33 ], //"대전",
			[ "합계"     , 8870, 2773, 30.0,24.18 ], //"합계",
         ];



var td = [
			[ "강남(IH LEE)", 307, 172, 24.5,22.7],
			[ "서초(IH LEE)", 243, 90, 21.3,9.7], 
			[ "용산(IH LEE)", 294, 108, 24.0,16.0 ], 
			[ "분당(JH LEE)", 292, 109, 26.7,12.0 ],
			[ "부산(IH LEE)", 68,  149, 32.4,22.2 ], 
			[ "광주(JH LEE)", 230, 21, 17.6,50.0 ], 
			[ "인천(IH LEE)", 298, 218, 33.3,17.6 ],			
			[ "대구(JS MOON)", 178, 93, 27.3,9.1 ],
			[ "대전(JH LEE)", 65, 77, 27.3,54.5 ],
			[ "합계"     , 1975, 1041, 25.0,18.9 ], //"합계",
       ];


var arrayLexus = new Array( 
			new Array(5), 
			new Array(5),
			new Array(5),
			new Array(5),
			new Array(5),
			new Array(5),
			new Array(5),
			new Array(5),
			new Array(5),
			new Array(5)
		);

var arrayToyota = new Array( 
		new Array(5), 
		new Array(5),
		new Array(5),
		new Array(5),
		new Array(5),
		new Array(5),
		new Array(5),
		new Array(5),
		new Array(5),
		new Array(5)
	);

function getSalesWithAjaxLexus() { // page1.jsp ~ func/page1Func.jsp와 연계됨.

	$.ajax({
		url : 'func/getSalesData.jsp', //바꿔줄것
		type : 'get',
		dataType : 'json',
		data : {
            id : '20160121',//$("input[name='mydate']").val()
            code : 'A271'
        },
		success : function(dataSet) {		
			var dataSetArray = dataSet.salesDataSet;
			var temp = dataSetArray.split(',');
			for(var i=0;i<temp.length;i++){
				temp[i]=temp[i].split('/');
			}
			
			for(var i=0;i<temp.length;i++){
				for(var j=0;j<temp[i].length;j++){
					
					arrayLexus[i][j] = temp[i][j]; 
					console.log(arrayLexus[i][j]); //1614
				}
			}
			

		}
	});

}




/*
function getWithAjax() { // page1.jsp ~ func/page1Func.jsp와 연계됨.

	$.ajax({
		url : 'func/salesData.jsp', //바꿔줄것
		type : 'get',
		dataType : 'json',
		data : {
            id : $("input[name='mydate']").val()
        },
		success : function(data) {
			
			$("#checktime").val(data.checktime).textinput('refresh');
			$("#checker").val(data.checker).selectmenu('refresh');		
			//alert($("#ebilling").val(data.ebilling));
			$("#ebilling").val(data.ebilling).flipswitch("refresh"); 
			$("#fin_SMS").val(data.fin_SMS).flipswitch("refresh"); 
			$("#funding_SMS").val(data.funding_SMS).flipswitch("refresh"); 
			$("#del_M").val(data.del_M).flipswitch("refresh"); 
			$("#leave_Mng").val(data.leave_Mng).flipswitch("refresh"); 
			$("#fax_SMS").val(data.fax_SMS).flipswitch("refresh"); 
			$("#ifany").val(data.ifany).textinput("refresh"); 
			
		}
	});

}

*/
function createTable(dataSet, id){ //데이터 셋을 이용해서 테이블을 만들어준다.
	var i,html="";
	var SP_data = dataSet;
	//html+="<p style='margin:0'>(금액 : 백만, 점유율 : %)</p>";
	html+="<tr style='background: #111111;''><td>Dealer</td><td>목표금액</td><td>현재금액</td><td>목표M/S</td><td>현재M/S</td></tr>";	
	for(i =0;i<SP_data.length-1;i++){
		html+="<tr>";
		for(var j=0;j<SP_data[i].length;j++){
			html+="<td>"+SP_data[i][j].toLocaleString()+"</td>";	
		}		
		html += "</tr>";
	}
	html += "<tr style='background: #111111;'>";
	for(var j=0;j<SP_data[i].length;j++){
		html+="<td>"+SP_data[i][j].toLocaleString()+"</td>";	
	}		
	html += "</tr>";	
	$(id).html(html);	
}







