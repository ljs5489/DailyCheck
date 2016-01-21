


var ld = [
			[ "강남(MJS)", 1614, 347, 31.1,10.3 ], //"강남", 
			[ "서초(MJS)", 1258, 294, 26.7,7.4 ], //"서초", 
			[ "용산(MJS)", 1523, 696, 34.8,26.9 ], //"용산", 
			[ "분당(LJH)", 1269, 894, 30.3,34.5 ], //"분당", 
			[ "인천(LIH)", 1040, 701, 30.9,51.7 ], //"인천", 
			[ "부산(LIH)", 507, 247, 27.3,26.7 ], //"부산", 
			[ "대구(MJS)", 584, 283, 31.4,33.3 ], //"대구",
			[ "광주(LJH)", 886, 430, 30.8,42.1 ], //"광주", 
			[ "대전(PJH)", 189, 38, 17.9,9.1 ], //"대전",
			[ "합계"     , 8870, 3934, 30.0,26.4 ], //"합계",
         ];



var td = [
			[ "강남(LIH)", 307, 172, 24.5,22.7 ],
			[ "서초(LIH)", 243, 90, 21.3,9.7 ], 
			[ "용산(LIH)", 294, 245, 24.0,16.0 ], 
			[ "분당(LJH)", 292, 109, 26.7,12.0 ],
			[ "인천(LIH)", 298, 185, 32.4,18.8 ], 
			[ "부산(LIH)", 68,  21, 17.6,9.1 ], 
			[ "대구(MJS)", 178, 280, 33.3,54.5 ],
			[ "광주(LJH)", 230, 110, 27.3,22.2 ], 
			[ "대전(PJH)", 65, 77, 27.3,50.0 ],
			[ "합계"     , 1975, 1293, 25,19.0 ], //"합계",
       ];
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
	html+="<tr style='background: #111111;''><td>Dealer</td><td>목표인수액</td><td>현재인수액</td><td>목표점유율</td><td>현재점유율</td></tr>";	
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







