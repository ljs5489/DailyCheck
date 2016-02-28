
sp.commentRecordCount '3','..'

alter PROCEDURE sp.commentRecordCount
    --@currentPage INT,       /* 현재페이지번호*/
    --@pageSize INT,          /* 한페이지의레코드수*/
    --@order INT,             /* 정렬방법(0: 기본키, 1: 제목, 2:익명아이디, 3: 글쓴순서) */
    @srchType INT,          /* 검색대상(0: 검색없음, 1: 익명아이디, 2: 제목, 3: 내용 ) */
    @srchText NVARCHAR(50)  /* 검색문자열*/
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
