create database JSLEEuse JSLEEcreate table server_(	id date not null primary key,			checkTime varchar(10) default convert(varchar(5), getdate(), 108) not null,	checker   varchar(10),		WEB_CPU varchar(10),	WEB_memory varchar(10),	WEB_value varchar(10),	WEB_vaccine varchar(10),	WEB_update varchar(10),	WEB_status varchar(10),	DBM_CPU varchar(10),	DBM_memory varchar(10),	DBM_value varchar(10),	DBM_vaccine varchar(10),	DBM_update varchar(10),	DBM_DB varchar(10),	DBM_status varchar(10),	DEW_CPU varchar(10),	DEW_memory varchar(10),	DEW_value varchar(10),	DEW_vaccine varchar(10),	DEW_update varchar(10),	DEW_status varchar(10),	MAIL_CPU varchar(10),	MAIL_memory varchar(10),	MAIL_value varchar(10),	MAIL_vaccine varchar(10),	MAIL_update varchar(10),	MAIL_status varchar(10),	APP_CPU varchar(10),	APP_memory varchar(10),	APP_value varchar(10),	APP_vaccine varchar(10),	APP_update varchar(10),	APP_status varchar(10),	FAX_CPU varchar(10),	FAX_memory varchar(10),	FAX_value varchar(10),	FAX_vaccine varchar(10),	FAX_update varchar(10),	FAX_status varchar(10),	ADN_CPU varchar(10),	ADN_memory varchar(10),	ADN_value varchar(10),	ADN_vaccine varchar(10),	ADN_update varchar(10),	ADN_status varchar(10),	VRS_CPU varchar(10),	VRS_memory varchar(10),	VRS_value varchar(10),	VRS_vaccine varchar(10),	VRS_update varchar(10),	VRS_status varchar(10),	FILE_CPU varchar(10),	FILE_memory varchar(10),	FILE_value varchar(10),	FILE_vaccine varchar(10),	FILE_update varchar(10),	FILE_status varchar(10),	DEVN_CPU varchar(10),	DEVN_memory varchar(10),	DEVN_value varchar(10),	DEVN_vaccine varchar(10),	DEVN_update varchar(10),	DEVN_DB varchar(10),	DEVN_status varchar(10),	MSVM1_CPU varchar(10),	MSVM1_memory varchar(10),	MSVM1_value varchar(10),	MSVM1_vaccine varchar(10),	MSVM1_update varchar(10),	MSVM1_status varchar(10),	MSVM2_CPU varchar(10),	MSVM2_memory varchar(10),	MSVM2_value varchar(10),	MSVM2_vaccine varchar(10),	MSVM2_update varchar(10),	MSVM2_status varchar(10),	LYNC_CPU varchar(10),	LYNC_memory varchar(10),	LYNC_value varchar(10),	LYNC_vaccine varchar(10),	LYNC_update varchar(10),	LYNC_status varchar(10),	ADV1_CPU varchar(10),	ADV1_memory varchar(10),	ADV1_value varchar(10),	ADV1_vaccine varchar(10),	ADV1_update varchar(10),	ADV1_status varchar(10),	ADV2_CPU varchar(10),	ADV2_memory varchar(10),	ADV2_value varchar(10),	ADV2_vaccine varchar(10),	ADV2_update varchar(10),	ADV2_status varchar(10),	ifany varchar(500),)drop table server_