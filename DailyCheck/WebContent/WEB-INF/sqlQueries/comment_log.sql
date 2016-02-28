
use jslee

drop table sp.comment_log


create table sp.comment_log(
	article_id int,	
	userIp varchar(50),
	userName varchar(50),

	entry_date varchar(20),

)
create nonclustered index comment_log_1 ON sp.comment_log(article_id)
