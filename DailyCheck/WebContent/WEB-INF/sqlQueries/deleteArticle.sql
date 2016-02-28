--20160228

alter procedure sp.deleteArticle
@article_id int
as
begin

DELETE FROM [JSLEE].[sp].[comment] WHERE  id = @article_id
DELETE FROM [JSLEE].[sp].[comment_log] WHERE article_id = @article_id


--print 1
end



--DELETE FROM [JSLEE].[sp].[comment_log] 
