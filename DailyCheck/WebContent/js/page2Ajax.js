function postWithAjax() {
	
	$.post("func/page2Func.jsp", {
		id:$("input[name='mydate']").val(),//날짜 선택 추가...
		
		checktime : $("#checktime").val(),
		checker : $("#checker").val(),
		
		WEB_CPU : $("#WEB_CPU").val(),
		WEB_memory : $("#WEB_memory").val(),
		WEB_value : $("#WEB_value").val(),
		WEB_vaccine : $("#WEB_vaccine").val(),
		WEB_update : $("#WEB_update").val(),
		WEB_status : $("#WEB_status").val(),
		DBM_CPU : $("#DBM_CPU").val(),
		DBM_memory : $("#DBM_memory").val(),
		DBM_value : $("#DBM_value").val(),
		DBM_vaccine : $("#DBM_vaccine").val(),
		DBM_update : $("#DBM_update").val(),
		DBM_DB : $("#DBM_DB").val(),
		DBM_status : $("#DBM_status").val(),
		DEW_CPU : $("#DEW_CPU").val(),
		DEW_memory : $("#DEW_memory").val(),
		DEW_value : $("#DEW_value").val(),
		DEW_vaccine : $("#DEW_vaccine").val(),
		DEW_update : $("#DEW_update").val(),
		DEW_status : $("#DEW_status").val(),
		MAIL_CPU : $("#MAIL_CPU").val(),
		MAIL_memory : $("#MAIL_memory").val(),
		MAIL_value : $("#MAIL_value").val(),
		MAIL_vaccine : $("#MAIL_vaccine").val(),
		MAIL_update : $("#MAIL_update").val(),
		MAIL_status : $("#MAIL_status").val(),
		APP_CPU : $("#APP_CPU").val(),
		APP_memory : $("#APP_memory").val(),
		APP_value : $("#APP_value").val(),
		APP_vaccine : $("#APP_vaccine").val(),
		APP_update : $("#APP_update").val(),
		APP_status : $("#APP_status").val(),
		FAX_CPU : $("#FAX_CPU").val(),
		FAX_memory : $("#FAX_memory").val(),
		FAX_value : $("#FAX_value").val(),
		FAX_vaccine : $("#FAX_vaccine").val(),
		FAX_update : $("#FAX_update").val(),
		FAX_status : $("#FAX_status").val(),
		ADN_CPU : $("#ADN_CPU").val(),
		ADN_memory : $("#ADN_memory").val(),
		ADN_value : $("#ADN_value").val(),
		ADN_vaccine : $("#ADN_vaccine").val(),
		ADN_update : $("#ADN_update").val(),
		ADN_status : $("#ADN_status").val(),
		VRS_CPU : $("#VRS_CPU").val(),
		VRS_memory : $("#VRS_memory").val(),
		VRS_value : $("#VRS_value").val(),
		VRS_vaccine : $("#VRS_vaccine").val(),
		VRS_update : $("#VRS_update").val(),
		VRS_status : $("#VRS_status").val(),
		FILE_CPU : $("#FILE_CPU").val(),
		FILE_memory : $("#FILE_memory").val(),
		FILE_value : $("#FILE_value").val(),
		FILE_vaccine : $("#FILE_vaccine").val(),
		FILE_update : $("#FILE_update").val(),
		FILE_status : $("#FILE_status").val(),
		DEVN_CPU : $("#DEVN_CPU").val(),
		DEVN_memory : $("#DEVN_memory").val(),
		DEVN_value : $("#DEVN_value").val(),
		DEVN_vaccine : $("#DEVN_vaccine").val(),
		DEVN_update : $("#DEVN_update").val(),
		DEVN_DB : $("#DEVN_DB").val(),
		DEVN_status : $("#DEVN_status").val(),
		MSVM1_CPU : $("#MSVM1_CPU").val(),
		MSVM1_memory : $("#MSVM1_memory").val(),
		MSVM1_value : $("#MSVM1_value").val(),
		MSVM1_vaccine : $("#MSVM1_vaccine").val(),
		MSVM1_update : $("#MSVM1_update").val(),
		MSVM1_status : $("#MSVM1_status").val(),
		MSVM2_CPU : $("#MSVM2_CPU").val(),
		MSVM2_memory : $("#MSVM2_memory").val(),
		MSVM2_value : $("#MSVM2_value").val(),
		MSVM2_vaccine : $("#MSVM2_vaccine").val(),
		MSVM2_update : $("#MSVM2_update").val(),
		MSVM2_status : $("#MSVM2_status").val(),
		LYNC_CPU : $("#LYNC_CPU").val(),
		LYNC_memory : $("#LYNC_memory").val(),
		LYNC_value : $("#LYNC_value").val(),
		LYNC_vaccine : $("#LYNC_vaccine").val(),
		LYNC_update : $("#LYNC_update").val(),
		LYNC_status : $("#LYNC_status").val(),
		ADV1_CPU : $("#ADV1_CPU").val(),
		ADV1_memory : $("#ADV1_memory").val(),
		ADV1_value : $("#ADV1_value").val(),
		ADV1_vaccine : $("#ADV1_vaccine").val(),
		ADV1_update : $("#ADV1_update").val(),
		ADV1_status : $("#ADV1_status").val(),
		ADV2_CPU : $("#ADV2_CPU").val(),
		ADV2_memory : $("#ADV2_memory").val(),
		ADV2_value : $("#ADV2_value").val(),
		ADV2_vaccine : $("#ADV2_vaccine").val(),
		ADV2_update : $("#ADV2_update").val(),
		ADV2_status : $("#ADV2_status").val(),
		
		WEB_value_2 : $("#WEB_value_2").val(),
		DBM_value_2 : $("#DBM_value_2").val(),
		DEW_value_2 : $("#DEW_value_2").val(),
		MAIL_value_2 : $("#MAIL_value_2").val(),
		APP_value_2 : $("#APP_value_2").val(),
		FAX_value_2 : $("#FAX_value_2").val(),
		ADN_value_2 : $("#ADN_value_2").val(),
		VRS_value_2 : $("#VRS_value_2").val(),
		FILE_value_2 : $("#FILE_value_2").val(),
		DEVN_value_2 : $("#DEVN_value_2").val(),
		MSVM1_value_2 : $("#MSVM1_value_2").val(),
		MSVM2_value_2 : $("#MSVM2_value_2").val(),
		LYNC_value_2 : $("#LYNC_value_2").val(),
		ADV1_value_2 : $("#ADV1_value_2").val(),
		ADV2_value_2 : $("#ADV2_value_2").val(),
		WEB_disk1 : $("#WEB_disk1").val(),
		WEB_disk2 : $("#WEB_disk2").val(),
		WEB_disk3 : $("#WEB_disk3").val(),
		WEB_disk4 : $("#WEB_disk4").val(),
		DBM_disk1 : $("#DBM_disk1").val(),
		DBM_disk2 : $("#DBM_disk2").val(),
		DBM_disk3 : $("#DBM_disk3").val(),
		DBM_disk4 : $("#DBM_disk4").val(),
		DBM_disk5 : $("#DBM_disk5").val(),
		DBM_disk6 : $("#DBM_disk6").val(),
		
		
		DEW_disk1 : $("#DEW_disk1").val(),
		DEW_disk2 : $("#DEW_disk2").val(),
		MAIL_disk1 : $("#MAIL_disk1").val(),
		MAIL_disk2 : $("#MAIL_disk2").val(),
		MAIL_disk3 : $("#MAIL_disk3").val(),
		MAIL_disk4 : $("#MAIL_disk4").val(),
		APP_disk1 : $("#APP_disk1").val(),
		APP_disk2 : $("#APP_disk2").val(),
		APP_disk3 : $("#APP_disk3").val(),
		APP_disk4 : $("#APP_disk4").val(),
		
		FAX_disk1 : $("#FAX_disk1").val(),
		FAX_disk2 : $("#FAX_disk2").val(),
		
		FAX_disk3 : $("#FAX_disk3").val(),
		FAX_disk4 : $("#FAX_disk4").val(),
		
		
		ADN_disk1 : $("#ADN_disk1").val(),
		ADN_disk2 : $("#ADN_disk2").val(),
		ADN_disk3 : $("#ADN_disk3").val(),
		ADN_disk4 : $("#ADN_disk4").val(),
		VRS_disk1 : $("#VRS_disk1").val(),
		VRS_disk2 : $("#VRS_disk2").val(),
		VRS_disk3 : $("#VRS_disk3").val(),
		VRS_disk4 : $("#VRS_disk4").val(),
		FILE_disk1 : $("#FILE_disk1").val(),
		FILE_disk2 : $("#FILE_disk2").val(),
		FILE_disk3 : $("#FILE_disk3").val(),
		FILE_disk4 : $("#FILE_disk4").val(),
		DEVN_disk1 : $("#DEVN_disk1").val(),
		DEVN_disk2 : $("#DEVN_disk2").val(),
		DEVN_disk3 : $("#DEVN_disk3").val(),
		DEVN_disk4 : $("#DEVN_disk4").val(),
		
		
		/* ================ 2017-02-27 스토리지 추가. ================ */
		DEVN_disk5 : $("#DEVN_disk5").val(),
		DEVN_disk6 : $("#DEVN_disk6").val(),		
		/* ================ 2017-02-27 스토리지 추가. ================ */
		
		
		MSVM1_disk1 : $("#MSVM1_disk1").val(),
		MSVM1_disk2 : $("#MSVM1_disk2").val(),
		MSVM1_disk3 : $("#MSVM1_disk3").val(),
		MSVM1_disk4 : $("#MSVM1_disk4").val(),
		MSVM1_disk5 : $("#MSVM1_disk5").val(),
		MSVM1_disk6 : $("#MSVM1_disk6").val(),
		MSVM1_disk7 : $("#MSVM1_disk7").val(),
		MSVM1_disk8 : $("#MSVM1_disk8").val(),
		MSVM1_disk9 : $("#MSVM1_disk9").val(),
		MSVM1_disk10 : $("#MSVM1_disk10").val(),
		MSVM2_disk1 : $("#MSVM2_disk1").val(),
		MSVM2_disk2 : $("#MSVM2_disk2").val(),
		MSVM2_disk3 : $("#MSVM2_disk3").val(),
		MSVM2_disk4 : $("#MSVM2_disk4").val(),
		MSVM2_disk5 : $("#MSVM2_disk5").val(),
		MSVM2_disk6 : $("#MSVM2_disk6").val(),
		MSVM2_disk7 : $("#MSVM2_disk7").val(),
		MSVM2_disk8 : $("#MSVM2_disk8").val(),
		MSVM2_disk9 : $("#MSVM2_disk9").val(),
		MSVM2_disk10 : $("#MSVM2_disk10").val(),
		LYNC_disk1 : $("#LYNC_disk1").val(),
		LYNC_disk2 : $("#LYNC_disk2").val(),
		LYNC_disk3 : $("#LYNC_disk3").val(),
		LYNC_disk4 : $("#LYNC_disk4").val(),
		ADV1_disk1 : $("#ADV1_disk1").val(),
		ADV1_disk2 : $("#ADV1_disk2").val(),
		ADV2_disk1 : $("#ADV2_disk1").val(),
		ADV2_disk2 : $("#ADV2_disk2").val(),	
		
		
		TAX1_CPU:$("#TAX1_CPU").val(),	
		TAX1_memory:$("#TAX1_memory").val(),	
		TAX1_value:$("#TAX1_value").val(),	
		TAX1_value_2:$("#TAX1_value_2").val(),	
		TAX1_vaccine:$("#TAX1_vaccine").val(),	
		TAX1_update:$("#TAX1_update").val(),	
		TAX1_status:$("#TAX1_status").val(),	
		TAX1_disk1:$("#TAX1_disk1").val(),	
		TAX1_disk2:$("#TAX1_disk2").val(),	
		
		
		
		
		TAX2_CPU:$("#TAX2_CPU").val(),	
		TAX2_memory:$("#TAX2_memory").val(),	
		TAX2_value:$("#TAX2_value").val(),	
		TAX2_value_2:$("#TAX2_value_2").val(),	
		TAX2_vaccine:$("#TAX2_vaccine").val(),	
		TAX2_update:$("#TAX2_update").val(),	
		TAX2_status:$("#TAX2_status").val(),	
		TAX2_disk1:$("#TAX2_disk1").val(),	
		TAX2_disk2:$("#TAX2_disk2").val(),	
		
		
		WEB_H_CPU:$("#WEB_H_CPU").val(),	
		WEB_H_memory:$("#WEB_H_memory").val(),	
		WEB_H_value:$("#WEB_H_value").val(),	
		WEB_H_value_2:$("#WEB_H_value_2").val(),	
		WEB_H_vaccine:$("#WEB_H_vaccine").val(),	
		WEB_H_update:$("#WEB_H_update").val(),	
		WEB_H_status:$("#WEB_H_status").val(),	
		DBM_H_CPU:$("#DBM_H_CPU").val(),	
		DBM_H_memory:$("#DBM_H_memory").val(),	
		DBM_H_value:$("#DBM_H_value").val(),	
		DBM_H_value_2:$("#DBM_H_value_2").val(),	
		DBM_H_vaccine:$("#DBM_H_vaccine").val(),	
		DBM_H_update:$("#DBM_H_update").val(),	
		DBM_H_status:$("#DBM_H_status").val(),	
		MAIL_H_CPU:$("#MAIL_H_CPU").val(),	
		MAIL_H_memory:$("#MAIL_H_memory").val(),	
		MAIL_H_value:$("#MAIL_H_value").val(),	
		MAIL_H_value_2:$("#MAIL_H_value_2").val(),	
		MAIL_H_vaccine:$("#MAIL_H_vaccine").val(),	
		MAIL_H_update:$("#MAIL_H_update").val(),	
		MAIL_H_status:$("#MAIL_H_status").val(),	
		APP_H_CPU:$("#APP_H_CPU").val(),	
		APP_H_memory:$("#APP_H_memory").val(),	
		APP_H_value:$("#APP_H_value").val(),	
		APP_H_value_2:$("#APP_H_value_2").val(),	
		APP_H_vaccine:$("#APP_H_vaccine").val(),	
		APP_H_update:$("#APP_H_update").val(),	
		APP_H_status:$("#APP_H_status").val(),	

		WEB_H_disk1:$("#WEB_H_disk1").val(),	
		WEB_H_disk2:$("#WEB_H_disk2").val(),	
		DBM_H_disk1:$("#DBM_H_disk1").val(),	
		DBM_H_disk2:$("#DBM_H_disk2").val(),	
		MAIL_H_disk1:$("#MAIL_H_disk1").val(),	
		MAIL_H_disk2:$("#MAIL_H_disk2").val(),	
		APP_H_disk1:$("#APP_H_disk1").val(),	
		APP_H_disk2:$("#APP_H_disk2").val(),	
		
		MAIL_H_disk3:$("#MAIL_H_disk3").val(),	
		MAIL_H_disk4:$("#MAIL_H_disk4").val(),	
		MAIL_H_disk5:$("#MAIL_H_disk5").val(),	
		MAIL_H_disk6:$("#MAIL_H_disk6").val(),	
		MAIL_H_disk7:$("#MAIL_H_disk7").val(),	
		MAIL_H_disk8:$("#MAIL_H_disk8").val(),	
		MAIL_H_disk9:$("#MAIL_H_disk9").val(),	
		MAIL_H_disk10:$("#MAIL_H_disk10").val(),	
		MAIL_H_disk11:$("#MAIL_H_disk11").val(),	
		MAIL_H_disk12:$("#MAIL_H_disk12").val(),	
		APP_H_disk3:$("#APP_H_disk3").val(),	
		APP_H_disk4:$("#APP_H_disk4").val(),	
		APP_H_disk5:$("#APP_H_disk5").val(),	
		APP_H_disk6:$("#APP_H_disk6").val(),	
		APP_H_disk7:$("#APP_H_disk7").val(),	
		APP_H_disk8:$("#APP_H_disk8").val(),	
		APP_H_disk9:$("#APP_H_disk9").val(),	
		APP_H_disk10:$("#APP_H_disk10").val(),	
		APP_H_disk11:$("#APP_H_disk11").val(),	
		APP_H_disk12:$("#APP_H_disk12").val(),	
		
		ifany : $("#ifany").val(),

	}, function() {
		//성공하면 여기
		//alert(2);
		$('#popup').trigger('click');
	});

}

function getWithAjax() { // page1.jsp ~ func/page1Func.jsp와 연계됨.

	$.ajax({
		url : 'func/page2Func.jsp',
		type : 'get',
		dataType : 'json',
		data : {
            id : $("input[name='mydate']").val()
        },
		success : function(data) {
			
			$("#checktime").val(data.checktime).textinput('refresh');
			$("#checker").val(data.checker).selectmenu('refresh');	
			
			$("#WEB_CPU").val(data.WEB_CPU).flipswitch('refresh');
			$("#WEB_memory").val(data.WEB_memory).flipswitch('refresh');
			$("#WEB_value").val(data.WEB_value).textinput('refresh');
			$("#WEB_vaccine").val(data.WEB_vaccine).flipswitch('refresh');
			$("#WEB_update").val(data.WEB_update).flipswitch('refresh');
			$("#WEB_status").val(data.WEB_status).flipswitch('refresh');
			$("#DBM_CPU").val(data.DBM_CPU).flipswitch('refresh');
			$("#DBM_memory").val(data.DBM_memory).flipswitch('refresh');
			$("#DBM_value").val(data.DBM_value).textinput('refresh');
			$("#DBM_vaccine").val(data.DBM_vaccine).flipswitch('refresh');
			$("#DBM_update").val(data.DBM_update).flipswitch('refresh');
			$("#DBM_DB").val(data.DBM_DB).flipswitch('refresh');
			$("#DBM_status").val(data.DBM_status).flipswitch('refresh');
			$("#DEW_CPU").val(data.DEW_CPU).flipswitch('refresh');
			$("#DEW_memory").val(data.DEW_memory).flipswitch('refresh');
			$("#DEW_value").val(data.DEW_value).textinput('refresh');
			$("#DEW_vaccine").val(data.DEW_vaccine).flipswitch('refresh');
			$("#DEW_update").val(data.DEW_update).flipswitch('refresh');
			$("#DEW_status").val(data.DEW_status).flipswitch('refresh');
			$("#MAIL_CPU").val(data.MAIL_CPU).flipswitch('refresh');
			$("#MAIL_memory").val(data.MAIL_memory).flipswitch('refresh');
			$("#MAIL_value").val(data.MAIL_value).textinput('refresh');
			$("#MAIL_vaccine").val(data.MAIL_vaccine).flipswitch('refresh');
			$("#MAIL_update").val(data.MAIL_update).flipswitch('refresh');
			$("#MAIL_status").val(data.MAIL_status).flipswitch('refresh');
			$("#APP_CPU").val(data.APP_CPU).flipswitch('refresh');
			$("#APP_memory").val(data.APP_memory).flipswitch('refresh');
			$("#APP_value").val(data.APP_value).textinput('refresh');
			$("#APP_vaccine").val(data.APP_vaccine).flipswitch('refresh');
			$("#APP_update").val(data.APP_update).flipswitch('refresh');
			$("#APP_status").val(data.APP_status).flipswitch('refresh');
			$("#FAX_CPU").val(data.FAX_CPU).flipswitch('refresh');
			$("#FAX_memory").val(data.FAX_memory).flipswitch('refresh');
			$("#FAX_value").val(data.FAX_value).textinput('refresh');
			$("#FAX_vaccine").val(data.FAX_vaccine).flipswitch('refresh');
			$("#FAX_update").val(data.FAX_update).flipswitch('refresh');
			$("#FAX_status").val(data.FAX_status).flipswitch('refresh');
			$("#ADN_CPU").val(data.ADN_CPU).flipswitch('refresh');
			$("#ADN_memory").val(data.ADN_memory).flipswitch('refresh');
			$("#ADN_value").val(data.ADN_value).textinput('refresh');
			$("#ADN_vaccine").val(data.ADN_vaccine).flipswitch('refresh');
			$("#ADN_update").val(data.ADN_update).flipswitch('refresh');
			$("#ADN_status").val(data.ADN_status).flipswitch('refresh');
			$("#VRS_CPU").val(data.VRS_CPU).flipswitch('refresh');
			$("#VRS_memory").val(data.VRS_memory).flipswitch('refresh');
			$("#VRS_value").val(data.VRS_value).textinput('refresh');
			$("#VRS_vaccine").val(data.VRS_vaccine).flipswitch('refresh');
			$("#VRS_update").val(data.VRS_update).flipswitch('refresh');
			$("#VRS_status").val(data.VRS_status).flipswitch('refresh');
			$("#FILE_CPU").val(data.FILE_CPU).flipswitch('refresh');
			$("#FILE_memory").val(data.FILE_memory).flipswitch('refresh');
			$("#FILE_value").val(data.FILE_value).textinput('refresh');
			$("#FILE_vaccine").val(data.FILE_vaccine).flipswitch('refresh');
			$("#FILE_update").val(data.FILE_update).flipswitch('refresh');
			$("#FILE_status").val(data.FILE_status).flipswitch('refresh');
			$("#DEVN_CPU").val(data.DEVN_CPU).flipswitch('refresh');
			$("#DEVN_memory").val(data.DEVN_memory).flipswitch('refresh');
			$("#DEVN_value").val(data.DEVN_value).textinput('refresh');
			$("#DEVN_vaccine").val(data.DEVN_vaccine).flipswitch('refresh');
			$("#DEVN_update").val(data.DEVN_update).flipswitch('refresh');
			$("#DEVN_DB").val(data.DEVN_DB).flipswitch('refresh');
			$("#DEVN_status").val(data.DEVN_status).flipswitch('refresh');
			$("#MSVM1_CPU").val(data.MSVM1_CPU).flipswitch('refresh');
			$("#MSVM1_memory").val(data.MSVM1_memory).flipswitch('refresh');
			$("#MSVM1_value").val(data.MSVM1_value).textinput('refresh');
			$("#MSVM1_vaccine").val(data.MSVM1_vaccine).flipswitch('refresh');
			$("#MSVM1_update").val(data.MSVM1_update).flipswitch('refresh');
			$("#MSVM1_status").val(data.MSVM1_status).flipswitch('refresh');
			$("#MSVM2_CPU").val(data.MSVM2_CPU).flipswitch('refresh');
			$("#MSVM2_memory").val(data.MSVM2_memory).flipswitch('refresh');
			$("#MSVM2_value").val(data.MSVM2_value).textinput('refresh');
			$("#MSVM2_vaccine").val(data.MSVM2_vaccine).flipswitch('refresh');
			$("#MSVM2_update").val(data.MSVM2_update).flipswitch('refresh');
			$("#MSVM2_status").val(data.MSVM2_status).flipswitch('refresh');
			$("#LYNC_CPU").val(data.LYNC_CPU).flipswitch('refresh');
			$("#LYNC_memory").val(data.LYNC_memory).flipswitch('refresh');
			$("#LYNC_value").val(data.LYNC_value).textinput('refresh');
			$("#LYNC_vaccine").val(data.LYNC_vaccine).flipswitch('refresh');
			$("#LYNC_update").val(data.LYNC_update).flipswitch('refresh');
			$("#LYNC_status").val(data.LYNC_status).flipswitch('refresh');
			$("#ADV1_CPU").val(data.ADV1_CPU).flipswitch('refresh');
			$("#ADV1_memory").val(data.ADV1_memory).flipswitch('refresh');
			$("#ADV1_value").val(data.ADV1_value).textinput('refresh');
			$("#ADV1_vaccine").val(data.ADV1_vaccine).flipswitch('refresh');
			$("#ADV1_update").val(data.ADV1_update).flipswitch('refresh');
			$("#ADV1_status").val(data.ADV1_status).flipswitch('refresh');
			$("#ADV2_CPU").val(data.ADV2_CPU).flipswitch('refresh');
			$("#ADV2_memory").val(data.ADV2_memory).flipswitch('refresh');
			$("#ADV2_value").val(data.ADV2_value).textinput('refresh');
			$("#ADV2_vaccine").val(data.ADV2_vaccine).flipswitch('refresh');
			$("#ADV2_update").val(data.ADV2_update).flipswitch('refresh');
			$("#ADV2_status").val(data.ADV2_status).flipswitch('refresh');
			
			$("#WEB_value_2").val(data.WEB_value_2).textinput('refresh');
			$("#DBM_value_2").val(data.DBM_value_2).textinput('refresh');
			$("#DEW_value_2").val(data.DEW_value_2).textinput('refresh');
			$("#MAIL_value_2").val(data.MAIL_value_2).textinput('refresh');
			$("#APP_value_2").val(data.APP_value_2).textinput('refresh');
			$("#FAX_value_2").val(data.FAX_value_2).textinput('refresh');
			$("#ADN_value_2").val(data.ADN_value_2).textinput('refresh');
			$("#VRS_value_2").val(data.VRS_value_2).textinput('refresh');
			$("#FILE_value_2").val(data.FILE_value_2).textinput('refresh');
			$("#DEVN_value_2").val(data.DEVN_value_2).textinput('refresh');
			$("#MSVM1_value_2").val(data.MSVM1_value_2).textinput('refresh');
			$("#MSVM2_value_2").val(data.MSVM2_value_2).textinput('refresh');
			$("#LYNC_value_2").val(data.LYNC_value_2).textinput('refresh');
			$("#ADV1_value_2").val(data.ADV1_value_2).textinput('refresh');
			$("#ADV2_value_2").val(data.ADV2_value_2).textinput('refresh');
			$("#WEB_disk1").val(data.WEB_disk1).textinput('refresh');
			$("#WEB_disk2").val(data.WEB_disk2).textinput('refresh');
			$("#WEB_disk3").val(data.WEB_disk3).textinput('refresh');
			$("#WEB_disk4").val(data.WEB_disk4).textinput('refresh');
			$("#DBM_disk1").val(data.DBM_disk1).textinput('refresh');
			$("#DBM_disk2").val(data.DBM_disk2).textinput('refresh');
			$("#DBM_disk3").val(data.DBM_disk3).textinput('refresh');
			$("#DBM_disk4").val(data.DBM_disk4).textinput('refresh');
			$("#DBM_disk5").val(data.DBM_disk5).textinput('refresh');
			$("#DBM_disk6").val(data.DBM_disk6).textinput('refresh');
			
			
			$("#DEW_disk1").val(data.DEW_disk1).textinput('refresh');
			$("#DEW_disk2").val(data.DEW_disk2).textinput('refresh');
			$("#MAIL_disk1").val(data.MAIL_disk1).textinput('refresh');
			$("#MAIL_disk2").val(data.MAIL_disk2).textinput('refresh');
			$("#MAIL_disk3").val(data.MAIL_disk3).textinput('refresh');
			$("#MAIL_disk4").val(data.MAIL_disk4).textinput('refresh');
			$("#APP_disk1").val(data.APP_disk1).textinput('refresh');
			$("#APP_disk2").val(data.APP_disk2).textinput('refresh');
			$("#APP_disk3").val(data.APP_disk3).textinput('refresh');
			$("#APP_disk4").val(data.APP_disk4).textinput('refresh');
			
			$("#FAX_disk1").val(data.FAX_disk1).textinput('refresh');
			$("#FAX_disk2").val(data.FAX_disk2).textinput('refresh');
			
			$("#FAX_disk3").val(data.FAX_disk3).textinput('refresh');
			$("#FAX_disk4").val(data.FAX_disk4).textinput('refresh');
			
			$("#ADN_disk1").val(data.ADN_disk1).textinput('refresh');
			$("#ADN_disk2").val(data.ADN_disk2).textinput('refresh');
			$("#ADN_disk3").val(data.ADN_disk3).textinput('refresh');
			$("#ADN_disk4").val(data.ADN_disk4).textinput('refresh');
			$("#VRS_disk1").val(data.VRS_disk1).textinput('refresh');
			$("#VRS_disk2").val(data.VRS_disk2).textinput('refresh');
			$("#VRS_disk3").val(data.VRS_disk3).textinput('refresh');
			$("#VRS_disk4").val(data.VRS_disk4).textinput('refresh');
			$("#FILE_disk1").val(data.FILE_disk1).textinput('refresh');
			$("#FILE_disk2").val(data.FILE_disk2).textinput('refresh');
			$("#FILE_disk3").val(data.FILE_disk3).textinput('refresh');
			$("#FILE_disk4").val(data.FILE_disk4).textinput('refresh');
			$("#DEVN_disk1").val(data.DEVN_disk1).textinput('refresh');
			$("#DEVN_disk2").val(data.DEVN_disk2).textinput('refresh');
			$("#DEVN_disk3").val(data.DEVN_disk3).textinput('refresh');
			$("#DEVN_disk4").val(data.DEVN_disk4).textinput('refresh');

			/* ================ 2017-02-27 스토리지 추가. ================ */
			$("#DEVN_disk5").val(data.DEVN_disk5).textinput('refresh');
			$("#DEVN_disk6").val(data.DEVN_disk6).textinput('refresh');
			/* ================ /2017-02-27 스토리지 추가. ================ */
			
			$("#MSVM1_disk1").val(data.MSVM1_disk1).textinput('refresh');
			$("#MSVM1_disk2").val(data.MSVM1_disk2).textinput('refresh');
			$("#MSVM1_disk3").val(data.MSVM1_disk3).textinput('refresh');
			$("#MSVM1_disk4").val(data.MSVM1_disk4).textinput('refresh');
			$("#MSVM1_disk5").val(data.MSVM1_disk5).textinput('refresh');
			$("#MSVM1_disk6").val(data.MSVM1_disk6).textinput('refresh');
			$("#MSVM1_disk7").val(data.MSVM1_disk7).textinput('refresh');
			$("#MSVM1_disk8").val(data.MSVM1_disk8).textinput('refresh');
			$("#MSVM1_disk9").val(data.MSVM1_disk9).textinput('refresh');
			$("#MSVM1_disk10").val(data.MSVM1_disk10).textinput('refresh');
			$("#MSVM2_disk1").val(data.MSVM2_disk1).textinput('refresh');
			$("#MSVM2_disk2").val(data.MSVM2_disk2).textinput('refresh');
			$("#MSVM2_disk3").val(data.MSVM2_disk3).textinput('refresh');
			$("#MSVM2_disk4").val(data.MSVM2_disk4).textinput('refresh');
			$("#MSVM2_disk5").val(data.MSVM2_disk5).textinput('refresh');
			$("#MSVM2_disk6").val(data.MSVM2_disk6).textinput('refresh');
			$("#MSVM2_disk7").val(data.MSVM2_disk7).textinput('refresh');
			$("#MSVM2_disk8").val(data.MSVM2_disk8).textinput('refresh');
			$("#MSVM2_disk9").val(data.MSVM2_disk9).textinput('refresh');
			$("#MSVM2_disk10").val(data.MSVM2_disk10).textinput('refresh');
			$("#LYNC_disk1").val(data.LYNC_disk1).textinput('refresh');
			$("#LYNC_disk2").val(data.LYNC_disk2).textinput('refresh');
			$("#LYNC_disk3").val(data.LYNC_disk3).textinput('refresh');
			$("#LYNC_disk4").val(data.LYNC_disk4).textinput('refresh');
			$("#ADV1_disk1").val(data.ADV1_disk1).textinput('refresh');
			$("#ADV1_disk2").val(data.ADV1_disk2).textinput('refresh');
			$("#ADV2_disk1").val(data.ADV2_disk1).textinput('refresh');
			$("#ADV2_disk2").val(data.ADV2_disk2).textinput('refresh');
			
			$("#TAX1_CPU").val(data.TAX1_CPU).flipswitch('refresh');
			$("#TAX1_memory").val(data.TAX1_memory).flipswitch('refresh');
			$("#TAX1_value").val(data.TAX1_value).textinput('refresh');
			$("#TAX1_value_2").val(data.TAX1_value_2).textinput('refresh');
			$("#TAX1_vaccine").val(data.TAX1_vaccine).flipswitch('refresh');
			$("#TAX1_update").val(data.TAX1_update).flipswitch('refresh');
			$("#TAX1_status").val(data.TAX1_status).flipswitch('refresh');
			$("#TAX1_disk1").val(data.TAX1_disk1).textinput('refresh');
			$("#TAX1_disk2").val(data.TAX1_disk2).textinput('refresh');
			
			
			
			$("#TAX2_CPU").val(data.TAX2_CPU).flipswitch('refresh');
			$("#TAX2_memory").val(data.TAX2_memory).flipswitch('refresh');
			$("#TAX2_value").val(data.TAX2_value).textinput('refresh');
			$("#TAX2_value_2").val(data.TAX2_value_2).textinput('refresh');
			$("#TAX2_vaccine").val(data.TAX2_vaccine).flipswitch('refresh');
			$("#TAX2_update").val(data.TAX2_update).flipswitch('refresh');
			$("#TAX2_status").val(data.TAX2_status).flipswitch('refresh');
			$("#TAX2_disk1").val(data.TAX2_disk1).textinput('refresh');
			$("#TAX2_disk2").val(data.TAX2_disk2).textinput('refresh');
			
			

			
			$("#WEB_H_CPU").val(data.WEB_H_CPU).flipswitch('refresh');
			$("#WEB_H_memory").val(data.WEB_H_memory).flipswitch('refresh');
			
			
			$("#WEB_H_value").val(data.WEB_H_value).textinput('refresh');			
			$("#WEB_H_value_2").val(data.WEB_H_value_2).textinput('refresh');	
			
			$("#WEB_H_vaccine").val(data.WEB_H_vaccine).flipswitch('refresh');
			$("#WEB_H_update").val(data.WEB_H_update).flipswitch('refresh');
			$("#WEB_H_status").val(data.WEB_H_status).flipswitch('refresh');
			
			
			$("#DBM_H_CPU").val(data.DBM_H_CPU).flipswitch('refresh');
			$("#DBM_H_memory").val(data.DBM_H_memory).flipswitch('refresh');			
			$("#DBM_H_value").val(data.DBM_H_value).textinput('refresh');
			$("#DBM_H_value_2").val(data.DBM_H_value_2).textinput('refresh');
			
			$("#DBM_H_vaccine").val(data.DBM_H_vaccine).flipswitch('refresh');
			$("#DBM_H_update").val(data.DBM_H_update).flipswitch('refresh');
			$("#DBM_H_status").val(data.DBM_H_status).flipswitch('refresh');
			
			
			$("#MAIL_H_CPU").val(data.MAIL_H_CPU).flipswitch('refresh');
			$("#MAIL_H_memory").val(data.MAIL_H_memory).flipswitch('refresh');
			$("#MAIL_H_value").val(data.MAIL_H_value).textinput('refresh');
			$("#MAIL_H_value_2").val(data.MAIL_H_value_2).textinput('refresh');
			
			$("#MAIL_H_vaccine").val(data.MAIL_H_vaccine).flipswitch('refresh');
			$("#MAIL_H_update").val(data.MAIL_H_update).flipswitch('refresh');
			$("#MAIL_H_status").val(data.MAIL_H_status).flipswitch('refresh');
			
			
			$("#APP_H_CPU").val(data.APP_H_CPU).flipswitch('refresh');
			$("#APP_H_memory").val(data.APP_H_memory).flipswitch('refresh');
			$("#APP_H_value").val(data.APP_H_value).textinput('refresh');
			$("#APP_H_value_2").val(data.APP_H_value_2).textinput('refresh');
			
			$("#APP_H_vaccine").val(data.APP_H_vaccine).flipswitch('refresh');
			$("#APP_H_update").val(data.APP_H_update).flipswitch('refresh');
			$("#APP_H_status").val(data.APP_H_status).flipswitch('refresh');
			
			$("#WEB_H_disk1").val(data.WEB_H_disk1).textinput('refresh');
			$("#WEB_H_disk2").val(data.WEB_H_disk2).textinput('refresh');
			$("#DBM_H_disk1").val(data.DBM_H_disk1).textinput('refresh');
			$("#DBM_H_disk2").val(data.DBM_H_disk2).textinput('refresh');
			$("#MAIL_H_disk1").val(data.MAIL_H_disk1).textinput('refresh');
			$("#MAIL_H_disk2").val(data.MAIL_H_disk2).textinput('refresh');
			$("#APP_H_disk1").val(data.APP_H_disk1).textinput('refresh');
			$("#APP_H_disk2").val(data.APP_H_disk2).textinput('refresh');
			
			
			
			$("#MAIL_H_disk3").val(data.MAIL_H_disk3).textinput('refresh');
			$("#MAIL_H_disk4").val(data.MAIL_H_disk4).textinput('refresh');
			$("#MAIL_H_disk5").val(data.MAIL_H_disk5).textinput('refresh');
			$("#MAIL_H_disk6").val(data.MAIL_H_disk6).textinput('refresh');
			$("#MAIL_H_disk7").val(data.MAIL_H_disk7).textinput('refresh');
			$("#MAIL_H_disk8").val(data.MAIL_H_disk8).textinput('refresh');
			$("#MAIL_H_disk9").val(data.MAIL_H_disk9).textinput('refresh');
			$("#MAIL_H_disk10").val(data.MAIL_H_disk10).textinput('refresh');
			$("#MAIL_H_disk11").val(data.MAIL_H_disk11).textinput('refresh');
			$("#MAIL_H_disk12").val(data.MAIL_H_disk12).textinput('refresh');
			$("#APP_H_disk3").val(data.APP_H_disk3).textinput('refresh');
			$("#APP_H_disk4").val(data.APP_H_disk4).textinput('refresh');
			$("#APP_H_disk5").val(data.APP_H_disk5).textinput('refresh');
			$("#APP_H_disk6").val(data.APP_H_disk6).textinput('refresh');
			$("#APP_H_disk7").val(data.APP_H_disk7).textinput('refresh');
			$("#APP_H_disk8").val(data.APP_H_disk8).textinput('refresh');
			$("#APP_H_disk9").val(data.APP_H_disk9).textinput('refresh');
			$("#APP_H_disk10").val(data.APP_H_disk10).textinput('refresh');
			$("#APP_H_disk11").val(data.APP_H_disk11).textinput('refresh');
			$("#APP_H_disk12").val(data.APP_H_disk12).textinput('refresh');
			
			$("#ifany").val(data.ifany).textinput('refresh');

			
		}
	});

}
