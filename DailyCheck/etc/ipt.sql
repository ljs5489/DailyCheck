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
	
	idle_val varchar(10),
	temp_val varchar(10),	
	
	ifany varchar(500),
	
	--CONSTRAINT enrolled_pkey PRIMARY KEY (YID, MID, DID)
)
drop table ipt

use jslee