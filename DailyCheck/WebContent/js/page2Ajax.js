function postWithAjax() {
	$.post("func/page1Func.jsp", {
		trunk : $("#trunk").val(),
		idle : $("#idle").val(),
		temperature : $("#temperature").val(),
		in_serv_tru1 : $("#in_serv_tru1").val(),
		in_serv_tru2 : $("#in_serv_tru2").val(),
		gateway : $("#gateway").val(),
		ipt_alarm : $("#ipt_alarm").val(),

	}, function(data) {
		// 성공하면 여기
	});

}

function getWithAjax() { // page1.jsp ~ func/page1Func.jsp와 연계됨.
	$.ajax({
		url : 'func/page2Func.jsp',
		type : 'get',
		dataType : 'json',
		success : function(data) {
			/*
			 * $("#checktime").val(data.checktime).textinput('refresh');
			 * $("#checker").val(data.checker).selectmenu('refresh');
			 * $("#ars").val(data.ars).flipswitch("refresh");
			 * $("#ifany").val(data.ifany).textinput('refresh');
			 */
		}
	});

}
