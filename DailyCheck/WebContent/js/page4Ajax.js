function postWithAjax() {
	$.post("func/page4Func.jsp", { //바꿔줄것.
		id:$("input[name='mydate']").val(),//날짜 선택 추가...
		
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
		
		WEB_disk1 : $("#WEB_disk1").val(),
		WEB_disk2 : $("#WEB_disk2").val(),
		WEB_disk3 : $("#WEB_disk3").val(),
		WEB_disk4 : $("#WEB_disk4").val(),
		
		SPAM_disk1 : $("#SPAM_disk1").val(),
		SPAM_disk2 : $("#SPAM_disk2").val(),		
		
		NWCPU_val : $("#NWCPU_val").val(),
		NWmemory_val : $("#NWmemory_val").val(),
		NSCPU_val : $("#NSCPU_val").val(),
		NSmemory_val : $("#NSmemory_val").val(),


		
		ifany : $("#ifany").val(),

	}, function(data) {
		//alert(4);
		$('#popup').trigger('click');
		//성공하면 여기
	});

}

function getWithAjax() { // page1.jsp ~ func/page1Func.jsp와 연계됨.

	$.ajax({
		url : 'func/page4Func.jsp', //바꿔줄것
		type : 'get',
		dataType : 'json',
		data : {
            id : $("input[name='mydate']").val()
        },
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
			
			$("#WEB_disk1").val(data.WEB_disk1).textinput("refresh");
			$("#WEB_disk2").val(data.WEB_disk2).textinput("refresh");
			$("#WEB_disk3").val(data.WEB_disk3).textinput("refresh");
			$("#WEB_disk4").val(data.WEB_disk4).textinput("refresh");
			
			$("#SPAM_disk1").val(data.SPAM_disk1).textinput("refresh");
			$("#SPAM_disk2").val(data.SPAM_disk2).textinput("refresh");
			
			$("#NWCPU_val").val(data.NWCPU_val).textinput("refresh");
			$("#NWmemory_val").val(data.NWmemory_val).textinput("refresh");
			$("#NSCPU_val").val(data.NSCPU_val).textinput("refresh");
			$("#NSmemory_val").val(data.NSmemory_val).textinput("refresh");		
			
			$("#ifany").val(data.ifany).textinput("refresh");			
		}
	});

}
