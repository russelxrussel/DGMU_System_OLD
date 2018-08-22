USE [DGMU]
GO
/****** Object:  StoredProcedure [xSystem].[UPDATE_SERIES_NUMBER]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* UPDATE SERIES NUMBER 
10/25/2017
Russel Vasquez
*/

CREATE PROC [xSystem].[UPDATE_SERIES_NUMBER]
@PREFIXCODE nvarchar(5)
AS
BEGIN

UPDATE [xSystem].SeriesNumber_RF
SET Series = Series + 1
WHERE PrefixCode=@PREFIXCODE

END

GO
