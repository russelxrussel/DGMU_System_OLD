USE [DGMU]
GO
/****** Object:  StoredProcedure [Utility].[UPDATE_BRANCH_SCHEDULE_SETUP]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<RUSSEL VASQUEZ>
-- Create date: <11/13/2017>
-- Description:	<UPDATE SCHEDULE>
-- =============================================
CREATE PROCEDURE [Utility].[UPDATE_BRANCH_SCHEDULE_SETUP] 
@SCHEDID int,
@M bit,
@T bit,
@W bit,
@TH bit,
@F bit,
@SA bit,
@S bit,
@USERCODE nvarchar(50)
AS
BEGIN
	 UPDATE [Utility].[Delivery_Schedule_RF]
	 SET
	 M=@M,
	 T=@T,
	 W=@W,
	 Th=@TH,
	 F=@F,
	 Sa=@SA,
	 S=@S,
	 DU= getdate(),
	 UserCode = @USERCODE
	WHERE
	SchedID = @SCHEDID
END


GO
