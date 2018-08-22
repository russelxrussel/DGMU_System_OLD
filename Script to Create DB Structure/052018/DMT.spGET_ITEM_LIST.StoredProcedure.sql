USE [DGMU]
GO
/****** Object:  StoredProcedure [DMT].[spGET_ITEM_LIST]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<RUSSEL VASQUEZ>
-- Create date: <03/29/2018>
-- Description:	<GET USER_VALIDATION>
-- =============================================
CREATE PROCEDURE [DMT].[spGET_ITEM_LIST]
AS
BEGIN
	
	SELECT * FROM
	[xSystem].[User_MF]
	WHERE
	[DMTAccess] = 1
	
END


GO
