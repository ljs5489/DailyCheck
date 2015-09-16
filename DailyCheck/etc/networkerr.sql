create database JSLEE
use JSLEE


create table networkerr(
	id date not null primary key,
		
	checkTime varchar(10) default convert(varchar(5), getdate(), 108) not null,
	checker   varchar(10),

	network_conn varchar(10),
	firm_banking varchar(10),
	vpn_21 varchar(10),
	vpn_31 varchar(10),
	vpn_200 varchar(10),
	vpn_254 varchar(10),
	network_err varchar(10),
	internet_spd varchar(10),
	traffic_IDC varchar(10),
	internet_traffic varchar(10),
	
	internet_traffic_2 varchar(10),
	internet_spd_2 varchar(10),
	traffic_IDC_2 varchar(10),

	
	ifany varchar(500),


)


use jslee
drop table networkerr



insert INTO batchjob(id,checker) values('20150906','jslee')