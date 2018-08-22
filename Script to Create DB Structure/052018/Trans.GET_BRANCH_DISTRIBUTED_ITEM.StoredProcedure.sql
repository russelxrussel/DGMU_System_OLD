USE [DGMU]
GO
/****** Object:  StoredProcedure [Trans].[GET_BRANCH_DISTRIBUTED_ITEM]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<RUSSEL VASQUEZ>
-- Create date: <03/14/2018>
-- Description:	<GET THE QUANTITY OF RECEIVED BRANCH ITEM>
-- =============================================
CREATE PROCEDURE [Trans].[GET_BRANCH_DISTRIBUTED_ITEM]
AS
BEGIN
	
	SELECT TOP 100 *
	FROM TRANS.Pickup_Transfer_Branch_Receive_TF
	ORDER BY DI DESC
		
END


GO
