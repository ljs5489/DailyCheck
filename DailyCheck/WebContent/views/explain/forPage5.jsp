<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div data-role="panel" id="myPanel">
	<h2>How To Use</h2>
	<p>	
	
	<b>Contract Status Update</b><br/>
	계약상태가 Applied인 건들을 매월 첫째날 MMS정보를 이용해 업데이트 한다. 
	<br/>월초에 전월 실행건의 계약상태가 Applied인 건을 대상으로 MMSDATA의 상태를 참조하여 LSGMACT의 상태를 업데이트 한다. 
	<br/>MMSDATA에 상태가 없는 경우는 등록오류건으로 상태를 업데이트 하지 않는다.
	
	<br/><p><b>Daily Delinquency</b><br/>
	일별 연체 상황 생성 - LSRMDLY_HISTORY, LSRMDAY
	<br/>LSRMDLY에서 연체중인것을 발췌하여 LSRMDLY_HISTORY 생성.
	<br/>채권상담 화면에서 오른쪽 상단 팝업호출에 전이율 선택시 나타나는 monthly Roll-over Rate화면에서 쓰이는 데이터를 생성함.
		
	<br/><p><b>ebilling</b><br/>
	E-mail 청구서 요청 고객에 대해서 청구일 9일전에 청구서 이메일을 발송하는 데이터를 생성함.
	
	<br/><p><b>FaxSms</b><br/>
	메일데이터, fax관련데이를 읽어서 fax발신자에게 SMS송신.
	<br/>딜러사의 Agent가 당사에 팩스를 전송할 때, 팩스서버에서 자동으로 SMS문자를 발송하여 팩스 수신여부를 알려줌.
		
	<br/><p><b>Funding MMS</b><br/>
	매일 업무 마감 후 funding 처리된 계약건의 정보를 MMS형태로 보내준다.
	
	<br/><p><b>Funding SMS</b><br/>
	매일 업무 마감 후 funding 처리된 계약건의 정보를 SMS형태로 보내준다.
	(단, 정의와 달리 실제적으로는 LMS(MMS)와 SMS이며, 이 차이는 문자 내용이 90Byte를 넘느냐 안 넘느냐 이다. SMS는 건 당 20원, LMS는 건 당 40(SKT),50(KTF),60(LGT)이다.  )
	
	<br/><p><b>Initialize CD Rate</b><br/>
	Termination Management List화면에서 사용되는 CD금리를 매일 초기화 함.
	
	<br/><p><b>LSRMDLY 일별 백업</b><br/>
	LSRMDLY 테이블을 LSRMDLY_BACKUP 테이블에 일별로 백업함.
	
	<br/><p><b>syspolicy_purge_history</b><br/>
	Verify that automation is enabled.
	<br/>purge history.
	<br/>Erase Phantom System Health Records.
	<br/>MS-SQL 설치시에 자동으로 생성되는 작업으로, 데이터베이스 데이터를 정리하는 기능을 수행함.
	
	<br/><p><b>Vintage Analysis</b><br/>
	Report -> Vintage Analysis 화면에서 사용하는 LSRMVTG, LSRMVTG_LIST 테이블 데이터 생성.
	
	<br/><p><b>YearlyLease</b><br/>
	휴가 마스터테이블의 연차 자동 계산추가 (매년 4월 1일 시행)
	
	<br/><p><b>결산-누적캐시플로</b><br/>
	회계결산-누적캐시플로 데이터 생성
	
	<br/><p><b>결산-누적캐시플로(수익성 관리용)</b><br/>
	회계결산-누적캐시플로(수익성 관리용) 데이터 생성
	
	
	<br/><p><b>상거래 종료</b><br/>
	상거래가 종료된 계약, 고객정보를 분리된 데이터베이스로 이관함. 
	<br/>(TFS_DB.LSGMACT -> TFS_DB_TERM.LSGMACT_DEL)
	<br/>(TFS_DB.LSBSSAP -> TFS_DB_TERM.LSBSSAP_DEL)
	
	
	<br/><p><b>시스템DB백업(수동), 하위계획_1</b><br/>
	2017-11-23 시스템데이터 베이스를 백업함.
	
	
	<br/><p><b>연체 전이율 통계 잔액건수</b><br/>
	알 수 없음.
		
	<br/><p><b>전자계산서 선발행건 알림</b><br/>
	전자계산서 선발행건이 있을 경우 사전에 문자를 보내준다.
	
		
	<br/><p><b>테이블 백업</b><br/>
	상환스케쥴(LSGMSC2), 감가상각스케쥴(LSGMREF), 보조금상각스케쥴(LSGMSUB) 테이블에 월에 한번씩 전체 백업을 함.
	
	
	<br/><p><b>CDW_TFSKR_TFSKRDBM_0</b><br/>
	2018-02-23 운영계 데이터를 개발로 이관하기 위해서 MS-SQL에 데이터 내보내기 기능을 실행했을 때 생성됨.
	
	<br/><p><b>CDW_TFSKR_TFSKRDBM_1</b><br/>
	2018-02-23 운영계 데이터를 개발로 이관하기 위해서 MS-SQL에 데이터 내보내기 기능을 실행했을 때 생성됨.
	
	</p><br/><br/>
	
	
		<a href="#page5" data-rel="close"
		class="ui-btn ui-btn-inline ui-shadow ui-corner-all ui-btn-a ui-icon-delete ui-btn-icon-left">Close
		panel</a>
</div>