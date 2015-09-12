create database JSLEE
use JSLEE


create table batchjob(
	id date not null primary key,
		
	checkTime varchar(10) default convert(varchar(5), getdate(), 108) not null,
	checker   varchar(10),

	ebilling varchar(10),
	fin_SMS varchar(10),
	funding_SMS varchar(10),
	del_M varchar(10),
	leave_Mng varchar(10),
	fax_SMS varchar(10),
	ifany varchar(10),

)
drop table batchjob
