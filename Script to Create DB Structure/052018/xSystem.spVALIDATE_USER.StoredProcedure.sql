USE [DGMU]
GO
/****** Object:  StoredProcedure [xSystem].[spVALIDATE_USER]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<RUSSEL VASQUEZ>
-- Create date: <03/15/2018>
-- Description:	<VALIDATE USER>
-- =============================================
CREATE PROCEDURE [xSystem].[spVALIDATE_USER]
@USERCODE nvarchar(25),
@PASSWORD nvarchar(25) 
AS
BEGIN
	SELECT * FROM
	xSystem.User_MF
	WHERE UserCode=@USERCODE and Password=@PASSWORD
END


GO
