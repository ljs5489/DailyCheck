create database JSLEE
use JSLEE


create table backup_(
	id date not null primary key,
		
	checkTime varchar(10) default convert(varchar(5), getdate(), 108) not null,
	checker   varchar(10),

	web varchar(10),
	dew varchar(10),
	app varchar(10),
	ADV_1 varchar(10),
	VRS varchar(10),
	mail varchar(10),
	FAX_W varchar(10),
	DBsafer_M varchar(10),
	file_ varchar(10),
	VRS_DB varchar(10),
	DBM varchar(10),
	ifany varchar(500),


)
drop table backup_
