create table [sp].comment(
	id int identity(1,1) primary key,
	writer varchar(30),
	pw varchar(30),
	title varchar(50),
	content varchar(1000),
	entry_date  varchar(30),
)




use jslee


drop table [sp].comment