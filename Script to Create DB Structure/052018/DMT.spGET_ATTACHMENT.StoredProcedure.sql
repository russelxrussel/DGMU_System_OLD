USE [DGMU]
GO
/****** Object:  StoredProcedure [DMT].[spGET_ATTACHMENT]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<RUSSEL VASQUEZ>
-- Create date: <03/28/2018>
-- Description:	<GET LIST OF ATTACHMENT>
-- =============================================
CREATE PROCEDURE [DMT].[spGET_ATTACHMENT]
@DMRNUM nvarchar(15)
AS
BEGIN
	
	SELECT ItemDescription,Purpose_Remarks, Attachment
	FROM [DMT].[DebitMemoRequest_TF]
	WHERE DMRNum=@DMRNUM and IsAttachment = 1
	
END


GO
