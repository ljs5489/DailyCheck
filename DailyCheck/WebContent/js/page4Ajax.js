function postWithAjax() {
	$.post("func/page4Func.jsp", { //바꿔줄것.
		checktime : $("#checktime").val(),
		checker : $("#checker").val(),
		
		NWCPU : $("#NWCPU").val(),
		NWmemory : $("#NWmemory").val(),
		NWvaccine : $("#NWvaccine").val(),
		NWupdate : $("#NWupdate").val(),
		NWstatus : $("#NWstatus").val(),
		NSCPU : $("#NSCPU").val(),
		NSmemory : $("#NSmemory").val(),
		NSvaccine : $("#NSvaccine").val(),
		NSupdate : $("#NSupdate").val(),
		NSstatus : $("#NSstatus").val(),
		ifany : $("#ifany").val(),

	}, function(data) {
		//성공하면 여기
	});

}

function getWithAjax() { // page1.jsp ~ func/page1Func.jsp와 연계됨.

	$.ajax({
		url : 'func/page4Func.jsp', //바꿔줄것
		type : 'get',
		dataType : 'json',
		success : function(data) {
			
			$("#checktime").val(data.checktime).textinput('refresh');
			$("#checker").val(data.checker).selectmenu('refresh');		
			//alert($("#ebilling").val(data.ebilling));
			
			$("#NWCPU").val(data.NWCPU).flipswitch("refresh");
			$("#NWmemory").val(data.NWmemory).flipswitch("refresh");
			$("#NWvaccine").val(data.NWvaccine).flipswitch("refresh");
			$("#NWupdate").val(data.NWupdate).flipswitch("refresh");
			$("#NWstatus").val(data.NWstatus).flipswitch("refresh");
			$("#NSCPU").val(data.NSCPU).flipswitch("refresh");
			$("#NSmemory").val(data.NSmemory).flipswitch("refresh");
			$("#NSvaccine").val(data.NSvaccine).flipswitch("refresh");
			$("#NSupdate").val(data.NSupdate).flipswitch("refresh");
			$("#NSstatus").val(data.NSstatus).flipswitch("refresh");
			$("#ifany").val(data.ifany).textinput("refresh");			
		}
	});

}
