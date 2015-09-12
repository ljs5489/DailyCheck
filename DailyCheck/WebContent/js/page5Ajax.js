function postWithAjax() {
	$.post("func/page5Func.jsp", { //바꿔줄것.
		checktime : $("#checktime").val(),
		checker : $("#checker").val(),
		ebilling : $("#ebilling").val(),
		fin_SMS : $("#fin_SMS").val(),
		funding_SMS : $("#funding_SMS").val(),
		del_M : $("#del_M").val(),
		leave_Mng : $("#leave_Mng").val(),
		fax_SMS : $("#fax_SMS").val(),
		ifany : $("#ifany").val(),


	}, function(data) {
		//성공하면 여기
	});

}

function getWithAjax() { // page1.jsp ~ func/page1Func.jsp와 연계됨.

	$.ajax({
		url : 'func/page5Func.jsp', //바꿔줄것
		type : 'get',
		dataType : 'json',
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
