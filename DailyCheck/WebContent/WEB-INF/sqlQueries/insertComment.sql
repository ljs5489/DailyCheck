USE [JSLEE]
GO
/****** Object:  StoredProcedure [sp].[insertComment]    Script Date: 03/07/2016 00:27:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER procedure [sp].[insertComment]
	@wrtier varchar(100),
	@pw varchar(100),
	@title varchar(1000),
	@content varchar(max)
AS
BEGIN

INSERT INTO sp.comment(writer,pw,title,content,entry_date) 
VALUES(@wrtier,@pw,@title,@content,Convert(varchar(30),Getdate(),120))

END