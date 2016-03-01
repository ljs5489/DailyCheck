/*
            stmt.setString(1, wrtier);
            stmt.setString(2, pw);   
            stmt.setString(3, content);  
*/

alter procedure sp.insertComment
	@wrtier varchar(100),
	@pw varchar(100),
	@title varchar(100),
	@content varchar(1000)
AS
BEGIN

INSERT INTO sp.comment(writer,pw,title,content,entry_date) 
VALUES(@wrtier,@pw,@title,@content,GETDATE())

END


sp.insertComment '1','2','3'
EXEC sp.insertComment  '1','2','3'

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
  FROM [JSLEE].[sp].[comment]