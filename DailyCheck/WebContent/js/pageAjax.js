function postWithAjax() {
	$.post("func/page1Func.jsp", {
		//checktime : $("#checktime").val(),

	}, function(data) {
		//성공하면 여기
	});

}

function getWithAjax() { // page1.jsp ~ func/page1Func.jsp와 연계됨.
	$.ajax({
		url : 'func/page2Func.jsp',
		type : 'get',
		dataType : 'json',
		success : function(data) {
			/*
			$("#checktime").val(data.checktime).textinput('refresh');
			$("#checker").val(data.checker).selectmenu('refresh');			
			$("#ars").val(data.ars).flipswitch("refresh");			
			$("#ifany").val(data.ifany).textinput('refresh');
			*/
		}
	});

}
