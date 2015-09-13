function postWithAjax() {
	$.post("func/page8Func.jsp", {
		checktime : $("#checktime").val(),
		checker : $("#checker").val(),
		
		web : $("#web").val(),
		dew : $("#dew").val(),
		app : $("#app").val(),
		ADV_1 : $("#ADV_1").val(),
		VRS : $("#VRS").val(),
		mail : $("#mail").val(),
		FAX_W : $("#FAX_W").val(),
		DBsafer_M : $("#DBsafer_M").val(),
		file_ : $("#file_").val(),
		VRS_DB : $("#VRS_DB").val(),
		DBM : $("#DBM").val(),
		ifany : $("#ifany").val(),		

	}, function(data) {
		//성공하면 여기
	});

}

function getWithAjax() { // page1.jsp ~ func/page1Func.jsp와 연계됨.
	$.ajax({
		url : 'func/page8Func.jsp',
		type : 'get',
		dataType : 'json',
		success : function(data) {
		
			$("#checktime").val(data.checktime).textinput('refresh');
			$("#checker").val(data.checker).selectmenu('refresh');	
						
			$("#web").val(data.web).flipswitch("refresh");
			$("#dew").val(data.dew).flipswitch("refresh");
			$("#app").val(data.app).flipswitch("refresh");
			$("#ADV_1").val(data.ADV_1).flipswitch("refresh");
			$("#VRS").val(data.VRS).flipswitch("refresh");
			$("#mail").val(data.mail).flipswitch("refresh");
			$("#FAX_W").val(data.FAX_W).flipswitch("refresh");
			$("#DBsafer_M").val(data.DBsafer_M).flipswitch("refresh");
			$("#file_").val(data.file_).flipswitch("refresh");
			$("#VRS_DB").val(data.VRS_DB).flipswitch("refresh");
			$("#DBM").val(data.DBM).flipswitch("refresh");
			$("#ifany").val(data.ifany).textinput("refresh");			
		}
	});

}
