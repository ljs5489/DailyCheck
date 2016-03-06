use JSLEE

drop table sp.likeit

create table sp.likeit(
	--id int identity(1,1) primary key,
	pid int,
	userIp varchar(50),
	userName varchar(50),
	likeType int, --0 : dislike, 1 : like
	entry_date date	
	
)
create nonclustered index likeit_1 ON sp.likeit(pid,likeType,userIp,userName)

