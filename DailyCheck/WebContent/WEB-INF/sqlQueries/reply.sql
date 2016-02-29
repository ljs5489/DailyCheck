drop table sp.reply
create table sp.reply(
id	int identity(1,1),
pid int,
writer	varchar(30),
pw	varchar(30),
[content]	varchar(1000),
entry_date	varchar(30)
)