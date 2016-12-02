function postWithAjax() {
	console.log($("#ifany").val());
	
	$.post("func/page1Func.jsp", {
		id:$("input[name='mydate']").val(),//날짜 선택 추가...
		
		checktime : $("#checktime").val(),
		checker : $("#checker").val(),

		ars : $("#ars").val(),
		mail : $("#mail").val(),
		fax : $("#fax").val(),
		vrs : $("#vrs").val(),
		messanger : $("#messanger").val(),
		leaseloan : $("#leaseloan").val(),

		visual : $("#visual").val(),
		images : $("#images").val(),
		font : $("#font").val(),
		links : $("#links").val(),
		bbs : $("#bbs").val(),
		indexsize : $("#indexsize").val(),
		
		tra1time : $("#tra1time").val(),
		tra1val : $("#tra1val").val(),
		tra2time : $("#tra2time").val(),
		tra2val : $("#tra2val").val(),
		
		WMtime : $("#WMtime").val(),
		WMstate : $("#WMstate").val(),
		WMpump : $("#WMpump").val(),
		WMaircon : $("#WMaircon").val(),
		WMtemperature : $("#WMtemperature").val(),

		WEtime : $("#WEtime").val(),
		WEstate : $("#WEstate").val(),
		WEpump : $("#WEpump").val(),
		WEaircon : $("#WEaircon").val(),
		WEtemperature : $("#WEtemperature").val(),

		EMtime : $("#EMtime").val(),
		EMstate : $("#EMstate").val(),
		EMpump : $("#EMpump").val(),
		EMaircon : $("#EMaircon").val(),
		EMtemperature : $("#EMtemperature").val(),


		ifany : $("#ifany").val(),
		
		EEtime : $("#EEtime").val(),
		EEstate : $("#EEstate").val(),
		EEpump : $("#EEpump").val(),
		EEaircon : $("#EEaircon").val(),
		EEtemperature : $("#EEtemperature").val(),


	}, function() {
		//성공하면 여기
		//alert(1);
		$('#popup').trigger('click');
	});

}

function getWithAjax() { // page1.jsp ~ func/page1Func.jsp와 연계됨.
	$.ajax({
		url : "func/page1Func.jsp",
		type : 'get',
		data : {
            id : $("input[name='mydate']").val()
        },
		dataType : 'json',
		
		success : function(data) {
			$("#checktime").val(data.checktime).textinput('refresh');
			$("#checker").val(data.checker).selectmenu('refresh');
			
			$("#ars").val(data.ars).flipswitch("refresh");
			$("#mail").val(data.mail).flipswitch("refresh");
			$("#fax").val(data.fax).flipswitch("refresh");
			$("#vrs").val(data.vrs).flipswitch("refresh");
			$("#messanger").val(data.messanger).flipswitch("refresh");
			$("#leaseloan").val(data.leaseloan).flipswitch("refresh");

			$("#visual").val(data.visual).flipswitch("refresh");
			$("#images").val(data.images).flipswitch("refresh");
			$("#font").val(data.font).flipswitch("refresh");
			$("#links").val(data.links).flipswitch("refresh");
			$("#bbs").val(data.bbs).flipswitch("refresh");
			$("#indexsize").val(data.indexsize).textinput('refresh');
			
			$("#tra1time").val(data.tra1time).textinput('refresh');
			$("#tra1val").val(data.tra1val).textinput('refresh');
			$("#tra2time").val(data.tra2time).textinput('refresh');
			$("#tra2val").val(data.tra2val).textinput('refresh');

			$("#WMtime").val(data.WMtime).textinput('refresh');
			$("#WMstate").val(data.WMstate).flipswitch("refresh");
			$("#WMpump").val(data.WMpump).flipswitch("refresh");
			$("#WMaircon").val(data.WMaircon).flipswitch("refresh");
			$("#WMtemperature").val(data.WMtemperature).textinput('refresh');			
			
			$("#WEtime").val(data.WEtime).textinput('refresh');			
			$("#WEstate").val(data.WEstate).flipswitch("refresh");
			$("#WEpump").val(data.WEpump).flipswitch("refresh");
			$("#WEaircon").val(data.WEaircon).flipswitch("refresh");
			$("#WEtemperature").val(data.WEtemperature).textinput('refresh');
			
			$("#EMtime").val(data.EMtime).textinput('refresh');		
			$("#EMstate").val(data.EMstate).flipswitch("refresh");
			$("#EMpump").val(data.EMpump).flipswitch("refresh");
			$("#EMaircon").val(data.EMaircon).flipswitch("refresh");
			$("#EMtemperature").val(data.EMtemperature).textinput('refresh');			
			
			$("#EEtime").val(data.EEtime).textinput('refresh');
			$("#EEstate").val(data.EEstate).flipswitch("refresh");
			$("#EEpump").val(data.EEpump).flipswitch("refresh");
			$("#EEaircon").val(data.EEaircon).flipswitch("refresh");
			$("#EEtemperature").val(data.EEtemperature).textinput('refresh');
			
			$("#ifany").val(data.ifany).textinput('refresh');
			
		}
	});

}
