function postWithAjax() {
	$.ajax({
		url : 'func/page6Func.jsp',
		type : 'post',
		dataType : 'json',
		data : {
			checktime : $("#checktime").val(),
			checker : $("#checker").val(),
			trunk : $("#trunk").val(),
			idle : $("#idle").val(),
			temperature : $("#temperature").val(),
			in_serv_tru1 : $("#in_serv_tru1").val(),
			in_serv_tru2 : $("#in_serv_tru2").val(),
			gateway : $("#gateway").val(),
			ipt_alarm : $("#ipt_alarm").val(),
			ifany : $("#ifany").val(),			
		},
		success : function(data) {		
			console.log("post성공");  
			$("#checktime").val(data.checktime).textinput('refresh');
			$("#checker").val(data.checker).selectmenu('refresh');			
			$("#trunk").val(data.trunk).flipswitch("refresh");	
			$("#idle").val(data.idle).flipswitch("refresh");	
			$("#temperature").val(data.temperature).flipswitch("refresh");	
			$("#in_serv_tru1").val(data.in_serv_tru1).flipswitch("refresh");	
			$("#in_serv_tru2").val(data.in_serv_tru2).flipswitch("refresh");	
			$("#gateway").val(data.gateway).flipswitch("refresh");
			$("#ipt_alarm").val(data.ipt_alarm).textinput("refresh");				
			$("#ifany").val(data.ifany).textinput('refresh');
			
		},
		error:function(request,status,error){  
			//console.log("post실패"+request+"/"+status+"/"+error);  
        }
	});

}

function getWithAjax() { // page1.jsp ~ func/page1Func.jsp와 연계됨.

	$.ajax({
		url : 'func/page6Func.jsp',
		type : 'get',
		dataType : 'json',
		success : function(data) {
		    console.log("get성공");  
			$("#checktime").val(data.checktime).textinput('refresh');
			$("#checker").val(data.checker).selectmenu('refresh');			
			$("#trunk").val(data.trunk).flipswitch("refresh");	
			$("#idle").val(data.idle).flipswitch("refresh");	
			$("#temperature").val(data.temperature).flipswitch("refresh");	
			$("#in_serv_tru1").val(data.in_serv_tru1).flipswitch("refresh");	
			$("#in_serv_tru2").val(data.in_serv_tru2).flipswitch("refresh");	
			$("#gateway").val(data.gateway).flipswitch("refresh");
			$("#ipt_alarm").val(data.ipt_alarm).textinput("refresh");				
			$("#ifany").val(data.ifany).textinput('refresh');
			
		},
		error:function(request,status,error){  
			//console.log("get실패"+request+"/"+status+"/"+error);  
        }
	});

}
