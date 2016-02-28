ALTER PROCEDURE sp.selectAll
    @currentPage INT,       /* 현재페이지번호*/
    @pageSize INT,          /* 한페이지의레코드수*/
    @order INT,             /* 정렬방법(0: 기본키, 1: 제목, 2:익명아이디, 3: 글쓴순서) */
    @srchType INT,          /* 검색대상(0: 검색없음, 1: 익명아이디, 2: 제목, 3: 내용 ) */
    @srchText NVARCHAR(50)  /* 검색문자열*/
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM 
    (   SELECT [id],[writer],[pw],[title],[content],[entry_date],
		(SELECT COUNT(*) FROM comment_log WHERE article_id = [id]) 'view',
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

SELECT COUNT(*) FROM comment_log WHERE id = '46'