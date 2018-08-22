USE [DGMU]
GO
/****** Object:  StoredProcedure [Trans].[GET_SUPPLIER_PO_ITEMS]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* User query for PO Items
10/25/2017
*/

CREATE PROC [Trans].[GET_SUPPLIER_PO_ITEMS]
@PONum nvarchar(10)
AS
BEGIN

 SELECT *
 FROM  [Trans].[V_Supplier_PO]
 WHERE PONum=@PONum

END

GO
