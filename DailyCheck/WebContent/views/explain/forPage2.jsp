<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	

<div data-role="panel" id="myPanel">
	<h2>How To Use</h2>

		<p>
		<b>51(web),52(db),54(mail),55(app)</b><br/><br/>
		
		Putty로 ssh 접속 후 linux 로그인 (패스워드 문서 mantech 참조)<br/>
		리눅스 콘솔에서 명령어 입력<br/><br/>
		
		CPU 사용률 - top<br/>
		RAM 사용률 - sar -r 1<br/>
		*(pause)로 중지<br/><br/>
		
		
		<b>HDD 용량 확인</b><br/><br/>
		
		51(web),52(db) - 리눅스 콘솔에서 명령어 xsconsole 실행<br/>
		Xen console 화면에서 아래 화면으로 들어가 점검 시행<br/>
		HDD Usage : Disks and Storage Reposirories - LOCAL HDD<br/><br/>
		
		54(mail),55(app) - WEBPAGE http://10.1.208.56/ 접속<br/>
		왼쪽 메뉴 RESOURCES -> Physical Machines 접속 후 각 머신의 Storage 확인
		</p>

		
		
	
		<a href="#page2" data-rel="close"
		class="ui-btn ui-btn-inline ui-shadow ui-corner-all ui-btn-a ui-icon-delete ui-btn-icon-left">Close
		panel</a>
</div>