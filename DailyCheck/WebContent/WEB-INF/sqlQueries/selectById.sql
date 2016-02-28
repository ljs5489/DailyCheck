--use jslee
alter procedure sp.selectById
	@article_id int,
	@user_id varchar(50),
	@user_name varchar(50)
AS
SET NOCOUNT ON;
/*
SET NOCOUNT ON 이 빠져있거나 SET NOCOUNT OFF로 설정이 되어 있으면
프로시저는 항상 자신의 마지막 로직에 의해서 SELECT, UPDATE, INSERT, DELETE된 행의
갯수를 리턴하게 된다. 그 수를 받아서 'nn개의 행이 적용되었습니다.'라는 메세지를 
뿌려주게 된다. 
제아무리 RecordSet을 반환한다 할 지라도 실제로는 RecordSet이 넘어오지 않는 것이다.
*/

BEGIN

insert into comment_log(article_id,userIp,userName,entry_date)
values(@article_id,@user_id,@user_name,GETDATE())

SELECT *,(SELECT COUNT(*) FROM comment_log WHERE article_id = @article_id) 'view'
FROM [JSLEE].[sp].[comment] WHERE [id] = @article_id

END




EXEC jslee.sp.selectById '46','127.0.0.1','JSLEE'
EXEC jslee.sp.selectById '43', '169.254.87.68', 'LG-PC'

select * from comment_log