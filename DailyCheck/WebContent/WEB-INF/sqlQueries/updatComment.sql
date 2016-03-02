
use jslee

alter procedure sp.updatComment
	@pid int,
	@wrtier varchar(100),
	@pw varchar(100),
	@title varchar(100),
	@content varchar(1000)
AS
BEGIN

UPDATE sp.comment
SET writer = @wrtier,
pw = @pw,
title = @title,
content = @content,
entry_date = GETDATE()
WHERE id = @pid

END
