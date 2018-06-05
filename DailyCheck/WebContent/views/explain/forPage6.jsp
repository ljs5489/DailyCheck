<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div data-role="panel" id="myPanel">
	<h2>How To Use</h2>
	
	<p><b>Site Administration(IPT)</b></p>
	<p>Site Administration(IPT) 실행 - 'Ctrl + E'로 접속. 파란 커맨드 창에서 아래 명령어 실행
	<br/><b>display alarm</b> 실행 후 F3. 최근 시간의 오류 있는지 확인
	<br/><b>list trunk:</b> trunk group 3개 있는지 확인 No. 1,2,10
	<br/><b>status trunk 1:</b> F7로 다음 장으로 넘어갈 수 있음. in-service인지 확인
	<br/><b>status trunk 2:</b> F7로 다음 장으로 넘어갈 수 있음. in-service인지 확인
	<br/><b>status trunk 10:</b> F7로 다음 장으로 넘어갈 수 있음. in-service인지 확인
	<br/><b>status health:</b> idle(%) 확인 후 기입.</p>
	
	<br/><br/><p><b>IPT GATEWAY</b></p>
	<p>Putty로 10.1.209.155:22로 접속
	<br/><b>show faults:</b> ALM LES is off인지 확인
	<br/><b>show temp:</b> 온도 확인 후 기입(Temperature)</p>
	
	<br/>
		<a href="#page6" data-rel="close"
		class="ui-btn ui-btn-inline ui-shadow ui-corner-all ui-btn-a ui-icon-delete ui-btn-icon-left">Close
		panel</a>
</div>