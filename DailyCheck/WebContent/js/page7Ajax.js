function postWithAjax() {
	$.post("func/page7Func.jsp", {
		id:$("input[name='mydate']").val(),//날짜 선택 추가...
		
		checktime : $("#checktime").val(),
		checker : $("#checker").val(),
		
		network_conn : $("#network_conn").val(),
		firm_banking : $("#firm_banking").val(),
		vpn_21 : $("#vpn_21").val(),
		vpn_31 : $("#vpn_31").val(),
		vpn_200 : $("#vpn_200").val(),
		vpn_254 : $("#vpn_254").val(),
		network_err : $("#network_err").val(),
		internet_spd : $("#internet_spd").val(),
		traffic_IDC : $("#traffic_IDC").val(),
		internet_traffic : $("#internet_traffic").val(),
		ifany : $("#ifany").val(),


	}, function(data) {
		//성공하면 여기
	});

}

function getWithAjax() { // page1.jsp ~ func/page1Func.jsp와 연계됨.

	$.ajax({
		url : 'func/page7Func.jsp',
		type : 'get',
		dataType : 'json',
		data : {
            id : $("input[name='mydate']").val()
        },
		success : function(data) {
			
			$("#checktime").val(data.checktime).textinput('refresh');
			$("#checker").val(data.checker).selectmenu('refresh');		
			
			$("#network_conn").val(data.network_conn).flipswitch("refresh");
			$("#firm_banking").val(data.firm_banking).flipswitch("refresh");
			$("#vpn_21").val(data.vpn_21).flipswitch("refresh");
			$("#vpn_31").val(data.vpn_31).flipswitch("refresh");
			$("#vpn_200").val(data.vpn_200).flipswitch("refresh");
			$("#vpn_254").val(data.vpn_254).flipswitch("refresh");
			$("#network_err").val(data.network_err).textinput("refresh");
			$("#internet_spd").val(data.internet_spd).textinput("refresh");
			$("#traffic_IDC").val(data.traffic_IDC).textinput("refresh");
			$("#internet_traffic").val(data.internet_traffic).textinput("refresh");
			$("#ifany").val(data.ifany).textinput("refresh");

			
		}
	});

}
