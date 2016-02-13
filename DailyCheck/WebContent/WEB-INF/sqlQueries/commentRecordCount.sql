
sp.commentRecordCount '3','..'

alter PROCEDURE sp.commentRecordCount
    --@currentPage INT,       /* ������������ȣ*/
    --@pageSize INT,          /* ���������Ƿ��ڵ��*/
    --@order INT,             /* ���Ĺ��(0: �⺻Ű, 1: ����, 2:�͸���̵�, 3: �۾�����) */
    @srchType INT,          /* �˻����(0: �˻�����, 1: �͸���̵�, 2: ����, 3: ���� ) */
    @srchText NVARCHAR(50)  /* �˻����ڿ�*/
AS
BEGIN
    SET NOCOUNT ON;

	SELECT COUNT(*)
	FROM sp.comment 
	WHERE 
    (@srchType = 0) OR
    (@srchType = 1 AND @srchText = [writer]) OR
    (@srchType = 2 AND CHARINDEX(@srchText, [title]) > 0) OR
    (@srchType = 3 AND CHARINDEX(@srchText, [content]) > 0) 
END
