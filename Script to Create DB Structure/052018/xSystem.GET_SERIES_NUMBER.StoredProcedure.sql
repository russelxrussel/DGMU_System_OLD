USE [DGMU]
GO
/****** Object:  StoredProcedure [xSystem].[GET_SERIES_NUMBER]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* GET SERIES NUMBER 
10/25/2017
Russel Vasquez
*/

CREATE PROC [xSystem].[GET_SERIES_NUMBER]
@PREFIXCODE nvarchar(5)
AS
BEGIN

SELECT *
FROM [xSystem].[SeriesNumber_RF]
WHERE PrefixCode = @PREFIXCODE

END

GO
