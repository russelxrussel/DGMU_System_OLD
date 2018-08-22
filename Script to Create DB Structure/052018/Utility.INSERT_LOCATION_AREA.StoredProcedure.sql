USE [DGMU]
GO
/****** Object:  StoredProcedure [Utility].[INSERT_LOCATION_AREA]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<RUSSEL VASQUEZ>
-- Create date: <11/05/2017>
-- Description:	<INSERT LOCATION AREA>
-- =============================================
CREATE PROCEDURE [Utility].[INSERT_LOCATION_AREA] 
@LACODE nvarchar(6),
@LANAME nvarchar(150),
@USERCODE nvarchar(50)
AS
BEGIN
	INSERT INTO Utility.Location_Area_RF
	(LACode,LAName,UserCode)
	VALUES
	(@LACODE,@LANAME,@USERCODE)
END


GO
