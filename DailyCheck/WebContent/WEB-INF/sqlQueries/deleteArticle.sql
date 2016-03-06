USE [JSLEE]
GO
/****** Object:  StoredProcedure [sp].[deleteArticle]    Script Date: 03/07/2016 00:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER procedure [sp].[deleteArticle]
@article_id int
as
begin

DELETE FROM [JSLEE].[sp].[comment] WHERE  id = @article_id
DELETE FROM [JSLEE].[sp].[comment_log] WHERE article_id = @article_id
DELETE FROM [JSLEE].[sp].[likeIt] WHERE pid = @article_id
DELETE FROM [JSLEE].[sp].[reply] WHERE pid = @article_id

--print 1
end