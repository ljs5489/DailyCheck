
use jslee

alter procedure sp.updatComment
	@pid int,
	@wrtier varchar(100),
	@pw varchar(100),
	@title varchar(1000),
	@content nvarchar(max)
AS
BEGIN

UPDATE sp.comment
SET writer = @wrtier,
pw = @pw,
title = @title,
content = @content,
entry_date = Convert(varchar(30),Getdate(),120)
WHERE id = @pid

END
