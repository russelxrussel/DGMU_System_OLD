USE [DGMU]
GO
/****** Object:  StoredProcedure [Utility].[GET_ITEM_SUBCAT_LIST]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<RUSSEL VASQUEZ>
-- Create date: <11/03/2017>
-- Description:	<GET LIST OF SUB ITEM>
-- =============================================
CREATE PROCEDURE [Utility].[GET_ITEM_SUBCAT_LIST] 
AS
BEGIN
	
	SELECT *
	FROM [Utility].[Item_SubCat_RF]
	
END


GO
