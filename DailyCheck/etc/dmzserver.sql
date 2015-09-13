create table dmzserver(
	id date not null primary key,
		
	checkTime varchar(10) default convert(varchar(5), getdate(), 108) not null,
	checker   varchar(10),

	NWCPU   varchar(10),
	NWmemory   varchar(10),
	NWvaccine   varchar(10),
	NWupdate   varchar(10),
	NWstatus   varchar(10),
	NSCPU   varchar(10),
	NSmemory   varchar(10),
	NSvaccine   varchar(10),
	NSupdate   varchar(10),
	NSstatus   varchar(10),
	ifany   varchar(500),

)
drop table dmzserver