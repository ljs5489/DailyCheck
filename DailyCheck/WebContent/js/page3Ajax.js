function postWithAjax() {
	$.post("func/page3Func.jsp", { //바꿔줄것.
		id:$("input[name='mydate']").val(),//날짜 선택 추가...
		
		checktime : $("#checktime").val(),
		checker : $("#checker").val(),
		
		MOBH1_CPU : $("#MOBH1_CPU").val(),
		MOBH1_memory : $("#MOBH1_memory").val(),
		MOBH1_m_val : $("#MOBH1_m_val").val(),
		MOBH1_vaccine : $("#MOBH1_vaccine").val(),
		MOBH1_update : $("#MOBH1_update").val(),
		MOBH1_status : $("#MOBH1_status").val(),
		MOBH1_disk1 : $("#MOBH1_disk1").val(),
		MOBH1_disk2 : $("#MOBH1_disk2").val(),
		MOBH1_disk3 : $("#MOBH1_disk3").val(),
		MOBH1_disk4 : $("#MOBH1_disk4").val(),
		DC2_CPU : $("#DC2_CPU").val(),
		DC2_memory : $("#DC2_memory").val(),
		DC2_m_val : $("#DC2_m_val").val(),
		DC2_vaccine : $("#DC2_vaccine").val(),
		DC2_update : $("#DC2_update").val(),
		DC2_status : $("#DC2_status").val(),
		DC2_disk1 : $("#DC2_disk1").val(),
		DC2_disk2 : $("#DC2_disk2").val(),
		WEB1_CPU : $("#WEB1_CPU").val(),
		WEB1_memory : $("#WEB1_memory").val(),
		WEB1_m_val : $("#WEB1_m_val").val(),
		WEB1_vaccine : $("#WEB1_vaccine").val(),
		WEB1_update : $("#WEB1_update").val(),
		WEB1_status : $("#WEB1_status").val(),
		WEB1_disk1 : $("#WEB1_disk1").val(),
		WEB1_disk2 : $("#WEB1_disk2").val(),
		DB1_CPU : $("#DB1_CPU").val(),
		DB1_memory : $("#DB1_memory").val(),
		DB1_m_val : $("#DB1_m_val").val(),
		DB1_vaccine : $("#DB1_vaccine").val(),
		DB1_update : $("#DB1_update").val(),
		DB1_DB : $("#DB1_DB").val(),
		DB1_status : $("#DB1_status").val(),
		DB1_disk1 : $("#DB1_disk1").val(),
		DB1_disk2 : $("#DB1_disk2").val(),
		DB1_disk3 : $("#DB1_disk3").val(),
		DB1_disk4 : $("#DB1_disk4").val(),
		MOBH2_CPU : $("#MOBH2_CPU").val(),
		MOBH2_memory : $("#MOBH2_memory").val(),
		MOBH2_m_val : $("#MOBH2_m_val").val(),
		MOBH2_vaccine : $("#MOBH2_vaccine").val(),
		MOBH2_update : $("#MOBH2_update").val(),
		MOBH2_status : $("#MOBH2_status").val(),
		MOBH2_disk1 : $("#MOBH2_disk1").val(),
		MOBH2_disk2 : $("#MOBH2_disk2").val(),
		MOBH2_disk3 : $("#MOBH2_disk3").val(),
		MOBH2_disk4 : $("#MOBH2_disk4").val(),
		DC1_CPU : $("#DC1_CPU").val(),
		DC1_memory : $("#DC1_memory").val(),
		DC1_m_val : $("#DC1_m_val").val(),
		DC1_vaccine : $("#DC1_vaccine").val(),
		DC1_update : $("#DC1_update").val(),
		DC1_status : $("#DC1_status").val(),
		DC1_disk1 : $("#DC1_disk1").val(),
		DC1_disk2 : $("#DC1_disk2").val(),
		WEB2_CPU : $("#WEB2_CPU").val(),
		WEB2_memory : $("#WEB2_memory").val(),
		WEB2_m_val : $("#WEB2_m_val").val(),
		WEB2_vaccine : $("#WEB2_vaccine").val(),
		WEB2_update : $("#WEB2_update").val(),
		WEB2_status : $("#WEB2_status").val(),
		WEB2_disk1 : $("#WEB2_disk1").val(),
		WEB2_disk2 : $("#WEB2_disk2").val(),
		DB2_CPU : $("#DB2_CPU").val(),
		DB2_memory : $("#DB2_memory").val(),
		DB2_m_val : $("#DB2_m_val").val(),
		DB2_vaccine : $("#DB2_vaccine").val(),
		DB2_update : $("#DB2_update").val(),
		DB2_DB : $("#DB2_DB").val(),
		DB2_status : $("#DB2_status").val(),
		DB2_disk1 : $("#DB2_disk1").val(),
		DB2_disk2 : $("#DB2_disk2").val(),
		
		MOBH1_disk1_2 : $("#MOBH1_disk1_2").val(),
		MOBH1_disk2_2 : $("#MOBH1_disk2_2").val(),
		MOBH1_disk3_2 : $("#MOBH1_disk3_2").val(),
		MOBH1_disk4_2 : $("#MOBH1_disk4_2").val(),
		DB1_disk1_2 : $("#DB1_disk1_2").val(),
		DB1_disk2_2 : $("#DB1_disk2_2").val(),
		DB1_disk3_2 : $("#DB1_disk3_2").val(),
		DB1_disk4_2 : $("#DB1_disk4_2").val(),
		MOBH2_disk1_2 : $("#MOBH2_disk1_2").val(),
		MOBH2_disk2_2 : $("#MOBH2_disk2_2").val(),
		MOBH2_disk3_2 : $("#MOBH2_disk3_2").val(),
		MOBH2_disk4_2 : $("#MOBH2_disk4_2").val(),
	
		ifany : $("#ifany").val(),


	}, function(data) {
		//성공하면 여기
	});

}

function getWithAjax() { // page1.jsp ~ func/page1Func.jsp와 연계됨.

	$.ajax({
		url : 'func/page3Func.jsp', //바꿔줄것
		type : 'get',
		dataType : 'json',
		data : {
            id : $("input[name='mydate']").val()
        },
		success : function(data) {
			
			$("#checktime").val(data.checktime).textinput('refresh');
			$("#checker").val(data.checker).selectmenu('refresh');		
			//alert($("#ebilling").val(data.ebilling));
			
			$("#MOBH1_CPU").val(data.MOBH1_CPU).flipswitch("refresh");
			$("#MOBH1_memory").val(data.MOBH1_memory).flipswitch("refresh");
			$("#MOBH1_m_val").val(data.MOBH1_m_val).textinput("refresh");
			$("#MOBH1_vaccine").val(data.MOBH1_vaccine).flipswitch("refresh");
			$("#MOBH1_update").val(data.MOBH1_update).flipswitch("refresh");
			$("#MOBH1_status").val(data.MOBH1_status).flipswitch("refresh");
			
			$("#MOBH1_disk1").val(data.MOBH1_disk1).textinput("refresh");
			$("#MOBH1_disk2").val(data.MOBH1_disk2).textinput("refresh");
			$("#MOBH1_disk3").val(data.MOBH1_disk3).textinput("refresh");
			$("#MOBH1_disk4").val(data.MOBH1_disk4).textinput("refresh");
			
			$("#DC2_CPU").val(data.DC2_CPU).flipswitch("refresh");
			$("#DC2_memory").val(data.DC2_memory).flipswitch("refresh");
			$("#DC2_m_val").val(data.DC2_m_val).textinput("refresh");
			$("#DC2_vaccine").val(data.DC2_vaccine).flipswitch("refresh");
			$("#DC2_update").val(data.DC2_update).flipswitch("refresh");
			$("#DC2_status").val(data.DC2_status).flipswitch("refresh");
			$("#DC2_disk1").val(data.DC2_disk1).textinput("refresh");
			$("#DC2_disk2").val(data.DC2_disk2).textinput("refresh");
			
			$("#WEB1_CPU").val(data.WEB1_CPU).flipswitch("refresh");
			$("#WEB1_memory").val(data.WEB1_memory).flipswitch("refresh");
			$("#WEB1_m_val").val(data.WEB1_m_val).textinput("refresh");
			$("#WEB1_vaccine").val(data.WEB1_vaccine).flipswitch("refresh");
			$("#WEB1_update").val(data.WEB1_update).flipswitch("refresh");
			$("#WEB1_status").val(data.WEB1_status).flipswitch("refresh");
			$("#WEB1_disk1").val(data.WEB1_disk1).textinput("refresh");
			$("#WEB1_disk2").val(data.WEB1_disk2).textinput("refresh");
			
			$("#DB1_CPU").val(data.DB1_CPU).flipswitch("refresh");
			$("#DB1_memory").val(data.DB1_memory).flipswitch("refresh");
			$("#DB1_m_val").val(data.DB1_m_val).textinput("refresh");
			$("#DB1_vaccine").val(data.DB1_vaccine).flipswitch("refresh");
			$("#DB1_update").val(data.DB1_update).flipswitch("refresh");
			$("#DB1_DB").val(data.DB1_DB).flipswitch("refresh");
			$("#DB1_status").val(data.DB1_status).flipswitch("refresh");
			$("#DB1_disk1").val(data.DB1_disk1).textinput("refresh");
			$("#DB1_disk2").val(data.DB1_disk2).textinput("refresh");
			$("#DB1_disk3").val(data.DB1_disk3).textinput("refresh");
			$("#DB1_disk4").val(data.DB1_disk4).textinput("refresh");
			
			$("#MOBH2_CPU").val(data.MOBH2_CPU).flipswitch("refresh");
			$("#MOBH2_memory").val(data.MOBH2_memory).flipswitch("refresh");
			$("#MOBH2_m_val").val(data.MOBH2_m_val).textinput("refresh");
			$("#MOBH2_vaccine").val(data.MOBH2_vaccine).flipswitch("refresh");
			$("#MOBH2_update").val(data.MOBH2_update).flipswitch("refresh");
			$("#MOBH2_status").val(data.MOBH2_status).flipswitch("refresh");
			$("#MOBH2_disk1").val(data.MOBH2_disk1).textinput("refresh");
			$("#MOBH2_disk2").val(data.MOBH2_disk2).textinput("refresh");
			$("#MOBH2_disk3").val(data.MOBH2_disk3).textinput("refresh");
			$("#MOBH2_disk4").val(data.MOBH2_disk4).textinput("refresh");
			
			$("#DC1_CPU").val(data.DC1_CPU).flipswitch("refresh");
			$("#DC1_memory").val(data.DC1_memory).flipswitch("refresh");
			$("#DC1_m_val").val(data.DC1_m_val).textinput("refresh");
			$("#DC1_vaccine").val(data.DC1_vaccine).flipswitch("refresh");
			$("#DC1_update").val(data.DC1_update).flipswitch("refresh");
			$("#DC1_status").val(data.DC1_status).flipswitch("refresh");
			$("#DC1_disk1").val(data.DC1_disk1).textinput("refresh");
			$("#DC1_disk2").val(data.DC1_disk2).textinput("refresh");
			
			$("#WEB2_CPU").val(data.WEB2_CPU).flipswitch("refresh");
			$("#WEB2_memory").val(data.WEB2_memory).flipswitch("refresh");
			$("#WEB2_m_val").val(data.WEB2_m_val).textinput("refresh");
			$("#WEB2_vaccine").val(data.WEB2_vaccine).flipswitch("refresh");
			$("#WEB2_update").val(data.WEB2_update).flipswitch("refresh");
			$("#WEB2_status").val(data.WEB2_status).flipswitch("refresh");
			$("#WEB2_disk1").val(data.WEB2_disk1).textinput("refresh");
			$("#WEB2_disk2").val(data.WEB2_disk2).textinput("refresh");
			
			$("#DB2_CPU").val(data.DB2_CPU).flipswitch("refresh");
			$("#DB2_memory").val(data.DB2_memory).flipswitch("refresh");
			$("#DB2_m_val").val(data.DB2_m_val).textinput("refresh");
			$("#DB2_vaccine").val(data.DB2_vaccine).flipswitch("refresh");
			$("#DB2_update").val(data.DB2_update).flipswitch("refresh");
			$("#DB2_DB").val(data.DB2_DB).flipswitch("refresh");
			$("#DB2_status").val(data.DB2_status).flipswitch("refresh");
			$("#DB2_disk1").val(data.DB2_disk1).textinput("refresh");
			$("#DB2_disk2").val(data.DB2_disk2).textinput("refresh");
			
			$("#MOBH1_disk1_2").val(data.MOBH1_disk1_2).textinput("refresh");
			$("#MOBH1_disk2_2").val(data.MOBH1_disk2_2).textinput("refresh");
			$("#MOBH1_disk3_2").val(data.MOBH1_disk3_2).textinput("refresh");
			$("#MOBH1_disk4_2").val(data.MOBH1_disk4_2).textinput("refresh");
			$("#DB1_disk1_2").val(data.DB1_disk1_2).textinput("refresh");
			$("#DB1_disk2_2").val(data.DB1_disk2_2).textinput("refresh");
			$("#DB1_disk3_2").val(data.DB1_disk3_2).textinput("refresh");
			$("#DB1_disk4_2").val(data.DB1_disk4_2).textinput("refresh");
			$("#MOBH2_disk1_2").val(data.MOBH2_disk1_2).textinput("refresh");
			$("#MOBH2_disk2_2").val(data.MOBH2_disk2_2).textinput("refresh");
			$("#MOBH2_disk3_2").val(data.MOBH2_disk3_2).textinput("refresh");
			$("#MOBH2_disk4_2").val(data.MOBH2_disk4_2).textinput("refresh");
			
			$("#ifany").val(data.ifany).textinput("refresh");
			
		}
	});

}
