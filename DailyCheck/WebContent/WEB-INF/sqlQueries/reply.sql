use jslee

drop table sp.reply

create table sp.reply(
id	int identity(1,1),
pid int,
writer	varchar(100),
pw	varchar(100),
[content]	nvarchar(max),
entry_date	varchar(30)
)