function getCurrentTime() {
	var currentdate = new Date();
	var datetime = ("0" + currentdate.getHours()).slice(-2) + ":" + ("0" + currentdate.getMinutes()).slice(-2);
	return datetime;
}
Date.prototype.yyyymmdd = function() {
	
	var yyyy = this.getFullYear().toString();
	var mm = (this.getMonth() + 1).toString();
	var dd = this.getDate().toString();

	return yyyy + '-' + (mm[1] ? mm : '0' + mm[0]) + '-'
			+ (dd[1] ? dd : '0' + dd[0]);
}

function setTime(obj) {
	$(obj).val(getCurrentTime());
}

function setTabEventHandler() {
	if ($("#myNavbar ul").css("margin-top") == "0px") {// 보이는상태
		$("#myNavbar ul").css("margin-top", "-172px");
		// $("#myNavbar ul").animate({'marginTop': '-138px'},500);
	} else {// 안보이는 상태
		$("#myNavbar ul").css("margin-top", "0px");
		// $("#myNavbar ul").animate({'marginTop': '0px'},500);
	}
	// else{
	// $("#myNavbar ul").css("margin-top","0px");
	// }

	/*
	 * if ($("#myNavbar ul").css("display") == "block") {// 안보이는상태
	 * $(".ui-content").hide(); } else {// 보이는 상태 $("#myNavbar ul").show(); }
	 */
}
function convertDate(usDate) {
	var dateParts = usDate.split(/(\d{1,2})\/(\d{1,2})\/(\d{4})/);
	return dateParts[3] + "-" + dateParts[1] + "-" + dateParts[2];
}

$(function() {
	$("#headerTest").on('tap', function() {
		setTabEventHandler();
		console.log('tap');
	});

	$("#up_arrow").on('tap', function() {
		window.scrollTo(0, 0);
	});
	$("#myGet").on('click', function() {
		getWithAjax();

	});
	$("#myPost").on('click', function() {
		postWithAjax();
	});


	$("#test").on('tap', function() {
		//$('#popup').trigger('click');
		/*
		 * console.log($("#checkTime").val()); console.log("mail: " +
		 * $("#mail").val()); console.log("ars: " + $("#ars").val());
		 * console.log($("#checker").val()); console.log("3" +
		 * $("#ifany").val());
		 * 
		 * $("#ars").val("on").flipswitch("refresh");
		 * $("#checkTime").val("test").textinput('refresh');
		 * $("#checker").val("jslee").selectmenu('refresh');
		 */
		// 결국은 AJAX으로 해야할듯 하다.
		// http://stackoverflow.com/questions/15063218/how-to-receive-data-sent-by-ajax-in-a-jsp-file
		// 참조
	});
	
	//===================================
	$('#mydate').datepicker({
		onSelect : function(dateText, inst) {
			$("input[name='mydate']").val(convertDate(dateText));
			getWithAjax();
		}
	});
	//===================================
	
	$("input[name='mydate']").val((new Date()).yyyymmdd());

	getWithAjax();

});
