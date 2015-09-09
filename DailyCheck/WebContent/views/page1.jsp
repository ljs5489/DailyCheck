<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>


</head>
<body>
	<%
		String checkTime = "", checker = "", ars = "", mail = "", fax = "", vrs = "", messanger = "",
				leaseloan = "", visual = "", images = "", font = "", links = "", bbs = "", indexsize = "",
				WMtime = "", WMstate = "", WMpump = "", WMaircon = "", WMtemperature = "", WEtime = "",
				WEstate = "", WEpump = "", WEaircon = "", WEtemperature = "", EMtime = "", EMstate = "",
				EMpump = "", EMaircon = "", EMtemperature = "", EEtime = "", EEstate = "", EEpump = "",
				EEaircon = "", EEtemperature = "", ifany = "";
		String id = GetDate.getDate(); //날짜는 변경될 수 있음!
		Precheck precheck = PrecheckDAO.selectById(id);

		//조회=========================================
		if (precheck != null && request.getMethod().equals("GET")) {
			System.out.println("GET!!!");
			checkTime = precheck.getCheckTime();
			checker = precheck.getChecker();
			ars = precheck.getArs();
			mail = precheck.getMail();
			fax = precheck.getFax();

			vrs = precheck.getVrs();
			messanger = precheck.getMessanger();
			leaseloan = precheck.getLeaseloan();
			visual = precheck.getVisual();
			images = precheck.getImages();
			font = precheck.getFont();
			links = precheck.getLinks();

			bbs = precheck.getBbs();
			indexsize = precheck.getIndexsize();

			WMtime = precheck.getWMtime();
			WMstate = precheck.getWMstate();
			WMpump = precheck.getWMpump();
			WMaircon = precheck.getWMaircon();
			WMtemperature = precheck.getWMtemperature();

			WEtime = precheck.getWEtime();
			WEstate = precheck.getWEstate();
			WEpump = precheck.getWEpump();
			WEaircon = precheck.getWEaircon();
			WEtemperature = precheck.getWEtemperature();

			EMtime = precheck.getEMtime();
			EMstate = precheck.getEMstate();
			EMpump = precheck.getEMpump();
			EMaircon = precheck.getEMaircon();
			EMtemperature = precheck.getEMtemperature();

			EEtime = precheck.getEEtime();
			EEstate = precheck.getEEstate();
			EEpump = precheck.getEEpump();
			EEaircon = precheck.getEEaircon();
			EEtemperature = precheck.getEEtemperature();

			System.out.println("EEtime:" + EEtime);

			System.out.println("EEstate:" + EEstate);
			System.out.println("EEpump:" + EEpump);
			System.out.println("EEaircon:" + EEaircon);

			ifany = precheck.getIfany();

		}
		//----------------------------------------------
		if (request.getMethod().equals("POST")) {
			System.out.println("POST!!!");
			String data1 = request.getParameter("sg");
			String data2 = request.getParameter("st");
			System.out.println(data1);
			System.out.println(data2);
			/*
			RequestParameter param = new RequestParameter(request);
			checkTime = param.getString("checkTime", "");
			checker = param.getString("checker", "");
			ars = param.getString("ars", "123");
			mail = param.getString("mail", "123");
			fax = param.getString("fax", "");
			vrs = param.getString("vrs", "");
			messanger = param.getString("messanger", "");
			leaseloan = param.getString("leaseloan", "");
			visual = param.getString("visual", "");
			images = param.getString("images", "");
			font = param.getString("font", "");
			links = param.getString("links", "");
			bbs = param.getString("bbs", "");
			indexsize = param.getString("indexsize", "");
			
			WMtime = param.getString("WMtime", "");
			WMstate = param.getString("WMstate", "");
			WMpump = param.getString("WMpump", "");
			WMaircon = param.getString("WMaircon", "");
			WMtemperature = param.getString("WMtemperature", "");
			System.out.println("WMtemperature:" + WMtemperature);
			
			WEtime = param.getString("WEtime", "");
			WEstate = param.getString("WEstate", "");
			WEpump = param.getString("WEpump", "");
			WEaircon = param.getString("WEaircon", "");
			WEtemperature = param.getString("WEtemperature", "");
			System.out.println("WEtemperature:" + WEtemperature);
			
			EMtime = param.getString("EMtime", "");
			EMstate = param.getString("EMstate", "");
			EMpump = param.getString("EMpump", "");
			EMaircon = param.getString("EMaircon", "");
			EMtemperature = param.getString("EMtemperature", "");
			
			EEtime = param.getString("EEtime", "");
			EEstate = param.getString("EEstate", "");
			EEpump = param.getString("EEpump", "");
			EEaircon = param.getString("EEaircon", "");
			EEtemperature = param.getString("EEtemperature", "");
			
			ifany = param.getString("ifany", "");
			
			//-----------------------------------------------------------------
			if (precheck == null) {
				PrecheckDAO.insertInfo(id, checkTime, checker, ars, mail, fax, vrs, messanger, leaseloan, visual,
						images, font, links, bbs, indexsize, WMtime, WMstate, WMpump, WMaircon, WMtemperature,
						WEtime, WEstate, WEpump, WEaircon, WEtemperature, EMtime, EMstate, EMpump, EMaircon,
						EMtemperature, EEtime, EEstate, EEpump, EEaircon, EEtemperature, ifany);
			} else {
				//update
				PrecheckDAO.updateInfo(id, checkTime, checker, ars, mail, fax, vrs, messanger, leaseloan, visual,
						images, font, links, bbs, indexsize, WMtime, WMstate, WMpump, WMaircon, WMtemperature,
						WEtime, WEstate, WEpump, WEaircon, WEtemperature, EMtime, EMstate, EMpump, EMaircon,
						EMtemperature, EEtime, EEstate, EEpump, EEaircon, EEtemperature, ifany);
				System.out.println("업데이트 해야함!");
			}
			*/
		}

		//String queryString = request.getQueryString().replaceAll("sid=[a-zA-Z0-9]+&?", "");
		//String listUrl = "studentList.jsp?" + queryString;
	%>

	<form method="post">
		<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->
		<div data-role="page" id="page">
			<%@ include file="explain/forPage1.jsp"%>
			<%@ include file="/../include/header.jsp"%>

			<div data-role="main" class="ui-content">
				<h2 id="test">●Pre Check</h2>
				<!-- set -------------->
				<div class="ui-grid-a">
					<div class="ui-block-a">
						<label for="currentTime">점검 시간:</label> <input type="tel"
							name="checkTime" id="checkTime" data-clear-btn="true"
							onclick="setTime($(this))">
					</div>
					<div class="ui-block-b">
						<label for="day">점검자:</label> <select data-theme="b"
							name="checker" id="checker" data-mini="true">
							<option value="splim">임성필</option>
							<option value="shhan">한승훈</option>
							<option value="mpark">박민</option>
							<option value="sylee">이송연</option>
							<option value="jslee">이진수</option>
						</select>
					</div>
				</div>
				<!-- /set -------------->

				<h3>Connect Status</h3>
				<hr />
				<!-- set -->
				<div class="ui-grid-b">
					<div class="ui-block-a">
						<label for="ars">ARS:</label><select type="checkbox"
							data-role="flipswitch" name="ars" id="ars">
							<option value="off">Bad</option>
							<option value="on" selected>Good</option>
						</select><br>
					</div>
					<div class="ui-block-b">
						<label for="mail">Mail:</label><select type="checkbox"
							data-role="flipswitch" name="mail" id="mail">
							<option value="off">Bad</option>
							<option value="on" selected>Good</option>
						</select><br>
					</div>
					<div class="ui-block-c">
						<label for="fax">Fax:</label><select type="checkbox"
							data-role="flipswitch" name="fax" id="fax">
							<option value="off">Bad</option>
							<option value="on" selected>Good</option>
						</select><br>
					</div>
				</div>
				<!-- /set -->
				<!-- set -->
				<div class="ui-grid-b">
					<div class="ui-block-a">
						<label for="vrs">VRS:</label> <input type="checkbox"
							data-role="flipswitch" name="vrs" id="vrs" data-on-text="Good"
							data-off-text="Bad" <%=(("on").equals(vrs)) ? "checked" : ""%>><br>
					</div>
					<div class="ui-block-b">
						<label for="messanger">Messanger:</label> <input type="checkbox"
							data-role="flipswitch" name="messanger" id="messanger"
							data-on-text="Good" data-off-text="Bad"
							<%=(("on").equals(messanger)) ? "checked" : ""%>><br>
					</div>
					<div class="ui-block-c">
						<label for="leaseloan">Lease Loan:</label> <input type="checkbox"
							data-role="flipswitch" name="leaseloan" id="leaseloan"
							data-on-text="Good" data-off-text="Bad"
							<%=(("on").equals(leaseloan)) ? "checked" : ""%>><br>
					</div>
				</div>
				<!-- /set -->

				<h3>Homepage</h3>
				<hr />
				<!-- set -->
				<div class="ui-grid-b">
					<div class="ui-block-a">
						<label for="visual">Visual:</label> <input type="checkbox"
							data-role="flipswitch" name="visual" id="visual"
							data-on-text="Good" data-off-text="Bad"
							<%=(("on").equals(visual)) ? "checked" : ""%>><br>
					</div>
					<div class="ui-block-b">
						<label for="images">Images:</label> <input type="checkbox"
							data-role="flipswitch" name="images" id="images" data-on-text="Y"
							data-off-text="N" <%=(("on").equals(images)) ? "checked" : ""%>><br>
					</div>
					<div class="ui-block-c">
						<label for="font">Font:</label> <input type="checkbox"
							data-role="flipswitch" name="font" id="font" data-on-text="Y"
							data-off-text="N" <%=(("on").equals(font)) ? "checked" : ""%>><br>
					</div>
				</div>
				<!-- /set -->
				<!-- HomePage set -->
				<div class="ui-grid-b">
					<div class="ui-block-a">
						<label for="links">Links(5 Test):</label> <input type="checkbox"
							data-role="flipswitch" name="links" id="links" data-on-text="Y"
							data-off-text="N" <%=(("on").equals(links)) ? "checked" : ""%>>
					</div>
					<div class="ui-block-b">
						<label for="bbs">BBS(Notice):</label> <input type="checkbox"
							data-role="flipswitch" name="bbs" id="bbs" data-on-text="Y"
							data-off-text="N" <%=(("on").equals(bbs)) ? "checked" : ""%>>
					</div>
					<div class="ui-block-c">
						<label for="indexsize">Index.asp(Size):</label> <input type="tel"
							name="indexsize" id="indexsize" data-clear-btn="true"
							value="<%=indexsize%>">
					</div>
				</div>
				<!-- /HomePage set -->

				<br /> <br />

				<h3>IT ROOM(West)</h3>
				<hr />
				<!-- IT ROOM (W) set -->
				<div class="ui-grid-a">
					<div class="ui-block-a">
						<h2>Morning</h2>
					</div>
					<div class="ui-block-b">
						<label for="WMtime">Time:</label> <input type="tel" name="WMtime"
							id="WMtime" data-clear-btn="true" onclick="setTime($(this))"
							value="<%=WMtime%>">
					</div>
				</div>
				<div class="ui-grid-c">
					<div class="ui-block-a">
						<label for="WMstate">State:</label> <input type="checkbox"
							data-mini="true" data-role="flipswitch" name="WMstate"
							id="WMstate" data-on-text="Good" data-off-text="Bad"
							<%=(("on").equals(WMstate)) ? "checked" : ""%>>
					</div>
					<div class="ui-block-b">
						<label for="WMpump">Pump:</label> <input type="checkbox"
							data-mini="true" data-role="flipswitch" name="WMpump" id="WMpump"
							data-on-text="N" data-off-text="A"
							<%=(("on").equals(WMpump)) ? "checked" : ""%>>
					</div>
					<div class="ui-block-c">
						<label for="WMaircon">Aircon:</label> <input type="checkbox"
							data-mini="true" data-role="flipswitch" name="WMaircon"
							id="WMaircon" data-on-text="N" data-off-text="A"
							<%=(("on").equals(WMaircon)) ? "checked" : ""%>>
					</div>
					<div class="ui-block-d">
						<label for="WMtemperature">Temperature:</label> <input type="tel"
							name="WMtemperature" id="WMtemperature"
							value="<%=WMtemperature%>">
					</div>

				</div>
				<!-- /IT ROOM (W) set -->
				<!-- IT ROOM (W) set -->
				<div class="ui-grid-a">
					<div class="ui-block-a">
						<h2>Evening</h2>
					</div>
					<div class="ui-block-b">
						<label for="WEtime">Time:</label> <input type="tel" name="WEtime"
							id="WEtime" data-clear-btn="true" onclick="setTime($(this))"
							value="<%=WEtime%>">
					</div>
				</div>
				<div class="ui-grid-c">
					<div class="ui-block-a">
						<label for="WEstate">State:</label> <input type="checkbox"
							data-mini="true" data-role="flipswitch" name="WEstate"
							id="WEstate" data-on-text="Good" data-off-text="Bad"
							<%=(("on").equals(WEstate)) ? "checked" : ""%>>
					</div>
					<div class="ui-block-b">
						<label for="WEpump">Pump:</label> <input type="checkbox"
							data-mini="true" data-role="flipswitch" name="WEpump" id="WEpump"
							data-on-text="N" data-off-text="A"
							<%=(("on").equals(WEpump)) ? "checked" : ""%>>
					</div>
					<div class="ui-block-c">
						<label for="WEaircon">Aircon:</label> <input type="checkbox"
							data-mini="true" data-role="flipswitch" name="WEaircon"
							id="WEaircon" data-on-text="N" data-off-text="A"
							<%=(("on").equals(WEaircon)) ? "checked" : ""%>>
					</div>
					<div class="ui-block-d">
						<label for="WEtemperature">Temperature:</label> <input type="tel"
							name="WEtemperature" id="WEtemperature" data-clear-btn="true"
							value="<%=WEtemperature%>">
					</div>

				</div>
				<!-- /IT ROOM (W) set -->
				<br /> <br />

				<h3>IT ROOM(East)</h3>
				<hr />
				<!-- IT ROOM (E) set -->
				<div class="ui-grid-a">
					<div class="ui-block-a">
						<h2>Morning</h2>
					</div>
					<div class="ui-block-b">
						<label for="EMtime">Time:</label> <input type="tel" name="EMtime"
							id="EMtime" data-clear-btn="true" onclick="setTime($(this))"
							value="<%=EMtime%>">
					</div>
				</div>
				<!-- IT ROOM (E) set -->
				<div class="ui-grid-c">
					<div class="ui-block-a">
						<label for="EMstate">State:</label> <input type="checkbox"
							data-mini="true" data-role="flipswitch" name="EMstate"
							id="EMstate" data-on-text="Good" data-off-text="Bad"
							<%=(("on").equals(EMstate)) ? "checked" : ""%>>
					</div>
					<div class="ui-block-b">
						<label for="EMpump">Pump:</label> <input type="checkbox"
							data-mini="true" data-role="flipswitch" name="EMpump" id="EMpump"
							data-on-text="N" data-off-text="A"
							<%=(("on").equals(EMpump)) ? "checked" : ""%>>
					</div>
					<div class="ui-block-c">
						<label for="EMaircon">Aircon:</label> <input type="checkbox"
							data-mini="true" data-role="flipswitch" name="EMaircon"
							id="EMaircon" data-on-text="N" data-off-text="A"
							<%=(("on").equals(EMaircon)) ? "checked" : ""%>>
					</div>
					<div class="ui-block-d">
						<label for="EMtemperature">Temperature:</label> <input type="tel"
							name="EMtemperature" id="EMtemperature" data-clear-btn="true"
							value="<%=EMtemperature%>">
					</div>

				</div>
				<!-- /IT ROOM (E) set -->

				<!-- IT ROOM (E) set -->
				<div class="ui-grid-a">
					<div class="ui-block-a">
						<h2>Evening</h2>
					</div>
					<div class="ui-block-b">
						<label for="EEtime">Time:</label> <input type="tel" name="EEtime"
							id="EEtime" data-clear-btn="true" onclick="setTime($(this))"
							value="<%=EMtime%>">
					</div>
				</div>
				<!-- IT ROOM (E) set -->
				<div class="ui-grid-c">
					<div class="ui-block-a">
						<label for="EEstate">State:</label> <input type="checkbox"
							data-mini="true" data-role="flipswitch" name="EEstate"
							id="EEstate" data-on-text="Good" data-off-text="Bad"
							<%=(("on").equals(EEstate)) ? "checked" : ""%>>
					</div>
					<div class="ui-block-b">
						<label for="EEpump">Pump:</label> <input type="checkbox"
							data-mini="true" data-role="flipswitch" name="EEpump" id="EEpump"
							data-on-text="N" data-off-text="A"
							<%=(("on").equals(EEpump)) ? "checked" : ""%>>
					</div>
					<div class="ui-block-c">
						<label for="EEaircon">Aircon:</label> <input type="checkbox"
							data-mini="true" data-role="flipswitch" name="EEaircon"
							id="EEaircon" data-on-text="N" data-off-text="A"
							<%=(("on").equals(EEaircon)) ? "checked" : ""%>>
					</div>
					<div class="ui-block-d">
						<label for="EEtemperature">Temperature:</label> <input type="tel"
							name="EEtemperature" id="EEtemperature" data-clear-btn="true"
							value="<%=EEtemperature%>">
					</div>

				</div>
				<!-- /IT ROOM (E) set -->
				<div class="ui-field-contain">
					<label for="info">If Any:</label>
					<textarea name="ifany" id="ifany"><%=ifany%></textarea>
				</div>
				<%@ include file="/../include/bottomTools.jsp"%>
				<%@ include file="/../include/bottomGoUp.jsp"%>
			</div>

			<%@ include file="/../include/footer.jsp"%>
		</div>

		<!-- /page -------------------------------------------------------------------------------------------------------------------------------------------------->



	</form>

	<script>
		function postWithAjax() {
			$.post("func/page1Func.jsp", {
				
				ifany : $("#ifany").val(),
				
				ars : $("#ars").val(),
				mail : $("#mail").val(),
				fax : $("#fax").val(),
				
				checker: $("#checker").val(),
				checkTime : $("#checkTime").val()
				
			}, function(data) {
				alert("Data Loaded?");
			});

		}

		$("#test").on('click', function() {
			console.log($("#checkTime").val());
			console.log("mail: " + $("#mail").val());
			console.log("ars: " + $("#ars").val());
			console.log($("#checker").val());
			console.log("3" + $("#ifany").val());
			
			$("#ars").val("on").flipswitch("refresh");
			$("#checkTime").val("hello").textinput('refresh');
			$("#checker").val("jslee").selectmenu('refresh');

			//결국은 AJAX으로 해야할듯 하다.			
			//http://stackoverflow.com/questions/15063218/how-to-receive-data-sent-by-ajax-in-a-jsp-file
			//참조
		});
	</script>
</body>
</html>