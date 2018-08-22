USE [DGMU]
GO
/****** Object:  StoredProcedure [Trans].[GET_SUPPLIER_PO_LIST]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* User query for PO List 
10/26/2017
*/

CREATE PROC [Trans].[GET_SUPPLIER_PO_LIST]
@SUPPLIERCODE nvarchar(10)
AS
BEGIN

 SELECT *
 FROM  [Trans].[V_Supplier_PO_List]
 WHERE supplierCode=@SUPPLIERCODE and StatusCode= 'O'

END

GO
