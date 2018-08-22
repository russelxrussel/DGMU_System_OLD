USE [DGMU]
GO
/****** Object:  StoredProcedure [Utility].[GET_LOCATION_AREA_LIST]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<RUSSEL VASQUEZ>
-- Create date: <11/03/2017>
-- Description:	<GET LIST OF LOCATION AREA>
-- =============================================
CREATE PROCEDURE [Utility].[GET_LOCATION_AREA_LIST] 
AS
BEGIN
	SELECT *
	FROM [Utility].[Location_Area_RF]
	ORDER by LAName ASC
	
END


GO
