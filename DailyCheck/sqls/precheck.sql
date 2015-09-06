create database JSLEE
use JSLEE


create table precheck(
	id date not null primary key,
		
	checkTime varchar(10) default convert(varchar(5), getdate(), 108) not null,
	checker   varchar(10),
	
	ars varchar(10),
	mail varchar(10),
	fax varchar(10),
	vrs varchar(10),
	messanger varchar(10),
	leaseloan varchar(10),
	
	visual varchar(10),
	images varchar(10),
	font varchar(10),
	links varchar(10),
	bbs varchar(10),
	indexsize varchar(10),
	
	WMtime varchar(10),
	WMstate varchar(10),
	WMpump varchar(10),
	WMaircon varchar(10),
	WMtemperature varchar(10),
	
	WEtime varchar(10),
	WEstate varchar(10),
	WEpump varchar(10),
	WEaircon varchar(10),
	WEtemperature varchar(10),
	
	EMtime varchar(10),
	EMstate varchar(10),
	EMpump varchar(10),
	EMaircon varchar(10),
	EMtemperature varchar(10),
	
	EEtime varchar(10),
	EEstate varchar(10),
	EEpump varchar(10),
	EEaircon varchar(10),
	EEtemperature varchar(10),
	
	ifany varchar(500),
	
	--CONSTRAINT enrolled_pkey PRIMARY KEY (YID, MID, DID)
)
drop table precheck

insert INTO precheck(id,checker) values('20150906','jslee')

delete from precheck
where id='2015-09-07'

SELECT * FROM [precheck] WHERE [id]='2015-09-07'

update precheck
set vrs='on'
where id='2015-09-06'

insert INTO precheck(
	id,
	checker, ars ,mail ,fax ,vrs 
	,messanger ,leaseloan ,visual ,images ,font 
	,links ,bbs ,indexsize ,WMtime ,WMstate 
	,WMpump ,WMaircon ,WMtemperature ,WEtime ,WEstate 
	,WEpump ,WEaircon ,WEtemperature ,EMtime ,EMstate 
	,EMpump ,EMaircon ,EMtemperature ,EEtime ,EEstate 
	,EEpump ,EEaircon ,EEtemperature ,ifany)
values(
	'20150907',
	'jslee','on','on','on','on',
	'on','on','on','on','on',
	'on','on','on','on','on',
	'on','on','on','on','on',
	'on','on','on','on','on',
	'on','on','on','on','on',
	'on','on','on','on'
)