USE [DGMU]
GO
/****** Object:  StoredProcedure [xSystem].[GET_MENU]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<RUSSEL VASQUEZ>
-- Create date: <08/31/2017>
-- Description:	<GET LIST OF MENU ITEM>
-- =============================================
CREATE PROCEDURE [xSystem].[GET_MENU] 
AS
BEGIN
	SELECT * FROM
	xSystem.Menu_MF
END


GO
