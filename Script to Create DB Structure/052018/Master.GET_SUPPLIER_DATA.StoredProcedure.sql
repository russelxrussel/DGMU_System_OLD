USE [DGMU]
GO
/****** Object:  StoredProcedure [Master].[GET_SUPPLIER_DATA]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<RUSSEL VASQUEZ>
-- Create date: <10/24/2017>
-- Description:	<GET LIST SUPPLIERS>
-- =============================================
CREATE PROCEDURE [Master].[GET_SUPPLIER_DATA] 
AS
BEGIN
	SELECT *
	FROM Master.Supplier_Data
	ORDER by SupplierName
END


GO
