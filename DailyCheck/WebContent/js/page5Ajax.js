function postWithAjax() {
	
	
	//alert($("#E_B_rst").val()); //teset
	//alert($("#E_B_cnt").val()); //test
	
	
	$.post("func/page5Func.jsp", { //바꿔줄것.
		id:$("input[name='mydate']").val(),//날짜 선택 추가...
		
		checktime : $("#checktime").val(),
		checker : $("#checker").val(),
		ebilling : $("#ebilling").val(),
		funding_MMS : $("#funding_MMS").val(),
		funding_SMS : $("#funding_SMS").val(),
		del_M : $("#del_M").val(),
		leave_Mng : $("#leave_Mng").val(),
		fax_SMS : $("#fax_SMS").val(),
		
		E_B_rst : $("#E_B_rst").val(),
		E_B_cnt : $("#E_B_cnt").val(),
		
		
		
		C_stat_updat:$("#C_stat_updat").val(),
		init_CD_rate:$("#init_CD_rate").val(),
		LSRMDLY_daily_backup:$("#LSRMDLY_daily_backup").val(),
		syspolicy_history:$("#syspolicy_history").val(),
		Vintage_analysis:$("#Vintage_analysis").val(),
		sett_accumulated_cashflow:$("#sett_accumulated_cashflow").val(),
		sett_accumulated_cashflow_2:$("#sett_accumulated_cashflow_2").val(),
		C_termination:$("#C_termination").val(),
		del_rate_statictics:$("#del_rate_statictics").val(),
		fund_repayment_noti:$("#fund_repayment_noti").val(),
		E_Bill_pubi_noti:$("#E_Bill_pubi_noti").val(),



		
		
		
		
		ifany : $("#ifany").val(),


	},function(data) {
		//성공하면 여기

		$('#popup').trigger('click');
	});

}

function getWithAjax() { // page1.jsp ~ func/page1Func.jsp와 연계됨.

	
	
	$.ajax({
		url : 'func/page5Func.jsp', //바꿔줄것
		type : 'get',
		dataType : 'json',
		data : {
            id : $("input[name='mydate']").val()
        },
		success : function(data) {
			
			$("#checktime").val(data.checktime).textinput('refresh');
			$("#checker").val(data.checker).selectmenu('refresh');		
			$("#ebilling").val(data.ebilling).flipswitch("refresh"); 
			$("#funding_MMS").val(data.funding_MMS).flipswitch("refresh"); 
			$("#funding_SMS").val(data.funding_SMS).flipswitch("refresh"); 
			$("#del_M").val(data.del_M).flipswitch("refresh"); 
			$("#leave_Mng").val(data.leave_Mng).flipswitch("refresh"); 
			$("#fax_SMS").val(data.fax_SMS).flipswitch("refresh"); 
			
			$("#E_B_rst").val(data.E_B_rst).flipswitch("refresh"); 
			$("#E_B_cnt").val(data.E_B_cnt).textinput("refresh"); 
			
			$("#C_stat_updat").val(data.C_stat_updat).flipswitch("refresh");
			$("#init_CD_rate").val(data.init_CD_rate).flipswitch("refresh");
			$("#LSRMDLY_daily_backup").val(data.LSRMDLY_daily_backup).flipswitch("refresh");
			$("#syspolicy_history").val(data.syspolicy_history).flipswitch("refresh");
			$("#Vintage_analysis").val(data.Vintage_analysis).flipswitch("refresh");
			$("#sett_accumulated_cashflow").val(data.sett_accumulated_cashflow).flipswitch("refresh");
			$("#sett_accumulated_cashflow_2").val(data.sett_accumulated_cashflow_2).flipswitch("refresh");
			$("#C_termination").val(data.C_termination).flipswitch("refresh");
			$("#del_rate_statictics").val(data.del_rate_statictics).flipswitch("refresh");
			$("#fund_repayment_noti").val(data.fund_repayment_noti).flipswitch("refresh");
			$("#E_Bill_pubi_noti").val(data.E_Bill_pubi_noti).flipswitch("refresh");
			
			$("#ifany").val(data.ifany).textinput("refresh"); 
			
			
			//alert(data.E_B_rst); //teset
			//alert(data.E_B_cnt); //test
		}
	});

}
