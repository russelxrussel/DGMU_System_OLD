USE [DGMU]
GO
/****** Object:  StoredProcedure [Trans].[GET_PARTNER_DEPOSIT]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<RUSSEL VASQUEZ>
-- Create date: <11/22/2017>
-- Description:	<GET PAYMENT LIST>
-- =============================================
CREATE PROCEDURE [Trans].[GET_PARTNER_DEPOSIT] 
AS
BEGIN
	SELECT *
	FROM [Trans].[Partner_Deposit_TF]
	ORDER BY DepositDate DESC
END


GO
