function getCurrentTime() {
	var currentdate = new Date();
	var datetime = "" // + currentdate.getFullYear() + "/" +
	// (currentdate.getMonth() + 1) + "/" +
			// currentdate.getDate() + " "
			+ currentdate.getHours() + ":" + currentdate.getMinutes();
	// + ":"
	// + currentdate.getSeconds();
	return datetime;
}

function setTime(obj) {
	$(obj).val(getCurrentTime());
}

function setTabEventHandler() {
	if ($("#myNavbar ul").css("margin-top") == "0px") {// 보이는상태
		$("#myNavbar ul").css("margin-top", "-138px");
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
		//$('#popup').trigger('click');

	});
	$("#myPost").on('click', function() {
		postWithAjax();
		//$('#popup').trigger('click');
	});

	$("#test").on('tap', function() {
		$('#popup').trigger('click');
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

});
