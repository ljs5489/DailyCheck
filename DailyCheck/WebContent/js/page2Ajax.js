function postWithAjax() {
	$.post("func/page2Func.jsp", {
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
		ifany : $("#ifany").val(),

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
			$("#ifany").val(data.ifany).textinput('refresh');

			
		}
	});

}
