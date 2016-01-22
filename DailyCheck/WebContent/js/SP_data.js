


var ld = [
			[ "강남(JS MOON)", 1614, 347, 31.1,10.3 ], //"강남", 
			[ "서초(JS MOON)", 1258, 294, 26.7,7.4 ], //"서초", 
			[ "용산(JS MOON)", 1523, 696, 34.8,26.9 ], //"용산", 
			[ "분당(JH LEE)", 1269, 894, 30.3,34.5 ], //"분당", 
			[ "인천(IH LEE)", 1040, 701, 30.9,51.7 ], //"인천", 
			[ "부산(IH LEE)", 507, 247, 27.3,26.7 ], //"부산", 
			[ "대구(JS MOON)", 584, 283, 31.4,33.3 ], //"대구",
			[ "광주(JH LEE)", 886, 430, 30.8,42.1 ], //"광주", 
			[ "대전(JH LEE)", 189, 38, 17.9,9.1 ], //"대전",
			[ "합계"     , 8870, 3934, 30.0,26.4 ], //"합계",
         ];



var td = [
			[ "강남(IH LEE)", 307, 172, 24.5,22.7 ],
			[ "서초(IH LEE)", 243, 90, 21.3,9.7 ], 
			[ "용산(IH LEE)", 294, 245, 24.0,16.0 ], 
			[ "분당(JH LEE)", 292, 109, 26.7,12.0 ],
			[ "인천(IH LEE)", 298, 185, 32.4,18.8 ], 
			[ "부산(IH LEE)", 68,  21, 17.6,9.1 ], 
			[ "대구(JS MOON)", 178, 280, 33.3,54.5 ],
			[ "광주(JH LEE)", 230, 110, 27.3,22.2 ], 
			[ "대전(JH LEE)", 65, 77, 27.3,50.0 ],
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







