function postWithAjax() {
	$.post("func/page1Func.jsp", {
		checker : $("#checker").val(),
		checkTime : $("#checkTime").val(),

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

		ifany : $("#ifany").val()

	}, function(data) {
		//alert("Data Loaded?");
		//location.href="#myPopupDialog";
		//var href = $('#myPopupDialog').attr('href');
		//window.location.href = href;

		$("#loadingComplete")[0].click();
	});

}

function getWithAjax() {
	$.ajax({  
        url:'func/page1Func.jsp',  
        type:'get',  
        dataType: 'json',  
        success: function(data) {  
        	alert(data.name);
        }  
    }); 

}

$("#test").on('tap', function() {
	$('#popup').trigger('click');

	console.log($("#checkTime").val());
	console.log("mail: " + $("#mail").val());
	console.log("ars: " + $("#ars").val());
	console.log($("#checker").val());
	console.log("3" + $("#ifany").val());

	$("#ars").val("on").flipswitch("refresh");
	$("#checkTime").val("test").textinput('refresh');
	$("#checker").val("jslee").selectmenu('refresh');

	//결국은 AJAX으로 해야할듯 하다.			
	//http://stackoverflow.com/questions/15063218/how-to-receive-data-sent-by-ajax-in-a-jsp-file
	//참조
});