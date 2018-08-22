USE [DGMU]
GO
/****** Object:  StoredProcedure [Utility].[spGET_DRIVER_LIST]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<RUSSEL VASQUEZ>
-- Create date: <02/21/2018>
-- Description:	<GET LIST OF DRIVER>
-- =============================================
CREATE PROCEDURE [Utility].[spGET_DRIVER_LIST] 
AS
BEGIN
	SELECT *
	FROM Utility.Driver_RF
	ORDER by DriverName DESC
	
END


GO
