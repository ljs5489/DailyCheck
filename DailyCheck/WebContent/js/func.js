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
		//$("#myNavbar ul").animate({'marginTop': '-138px'},500);
	} else {// 안보이는 상태
		$("#myNavbar ul").css("margin-top", "0px");
		//$("#myNavbar ul").animate({'marginTop': '0px'},500);
	}
	//else{
	//	$("#myNavbar ul").css("margin-top","0px");		
	//}

	/*	if ($("#myNavbar ul").css("display") == "block") {// 안보이는상태
		$(".ui-content").hide();
	} else {// 보이는 상태
		$("#myNavbar ul").show();
	}*/
}

