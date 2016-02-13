ALTER PROCEDURE sp.selectAll
    @currentPage INT,       /* ������������ȣ*/
    @pageSize INT,          /* ���������Ƿ��ڵ��*/
    @order INT,             /* ���Ĺ��(0: �⺻Ű, 1: ����, 2:�͸���̵�, 3: �۾�����) */
    @srchType INT,          /* �˻����(0: �˻�����, 1: �͸���̵�, 2: ����, 3: ���� ) */
    @srchText NVARCHAR(50)  /* �˻����ڿ�*/
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM 
    (   SELECT [id],[writer],[pw],[title],[content],[entry_date],
            ROW_NUMBER() OVER (
                ORDER BY
                    CASE WHEN @order = 0 THEN [id] END DESC,
                    CASE @order 
                        WHEN 1 THEN [title]
                        WHEN 2 THEN [writer]
                        WHEN 3 THEN [entry_date]
                    END
            ) AS recordNo
        FROM sp.comment --LEFT JOIN dbo.[User] ON [Log].[userId] = [User].[id]
        WHERE 
            (@srchType = 0) OR
            (@srchType = 1 AND @srchText = [writer]) OR
            (@srchType = 2 AND CHARINDEX(@srchText, [title]) > 0) OR
            (@srchType = 3 AND CHARINDEX(@srchText, [content]) > 0) 
    ) subQuery
    WHERE recordNo > (@currentPage - 1 ) * @pageSize
    AND   recordNo <= @currentPage * @pageSize
    ORDER BY recordNo
END


sp.selectAll '1','10','0','0','0'