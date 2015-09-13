create database JSLEE
use JSLEE


create table ipt(
	id date not null primary key,
		
	checkTime varchar(10) default convert(varchar(5), getdate(), 108) not null,
	checker   varchar(10),
	
	trunk varchar(10),
	idle varchar(10),
	temperature varchar(10),
	in_serv_tru1 varchar(10),
	in_serv_tru2 varchar(10),
	gateway varchar(10),	
	ipt_alarm varchar(500),
	ifany varchar(500),
	
	--CONSTRAINT enrolled_pkey PRIMARY KEY (YID, MID, DID)
)
drop table ipt

insert INTO ipt(id,checker) values('20150906','jslee')
