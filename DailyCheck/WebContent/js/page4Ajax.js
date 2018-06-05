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

		TAX2_CPU:$("#TAX2_CPU").val(),
		TAX2_memory:$("#TAX2_memory").val(),
		TAX2_value:$("#TAX2_value").val(),
		TAX2_value_2:$("#TAX2_value_2").val(),
		TAX2_vaccine:$("#TAX2_vaccine").val(),
		TAX2_update:$("#TAX2_update").val(),
		TAX2_status:$("#TAX2_status").val(),
		TAX2_disk1:$("#TAX2_disk1").val(),
		TAX2_disk2:$("#TAX2_disk2").val(),

		
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
			

			$("#TAX2_CPU").val(data.TAX2_CPU).flipswitch('refresh');
			$("#TAX2_memory").val(data.TAX2_memory).flipswitch('refresh');
			$("#TAX2_value").val(data.TAX2_value).textinput('refresh');
			$("#TAX2_value_2").val(data.TAX2_value_2).textinput('refresh');
			$("#TAX2_vaccine").val(data.TAX2_vaccine).flipswitch('refresh');
			$("#TAX2_update").val(data.TAX2_update).flipswitch('refresh');
			$("#TAX2_status").val(data.TAX2_status).flipswitch('refresh');
			$("#TAX2_disk1").val(data.TAX2_disk1).textinput('refresh');
			$("#TAX2_disk2").val(data.TAX2_disk2).textinput('refresh');
			
			$("#ifany").val(data.ifany).textinput("refresh");			
		}
	});

}
