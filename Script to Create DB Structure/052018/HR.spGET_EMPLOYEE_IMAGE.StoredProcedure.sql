USE [DGMU]
GO
/****** Object:  StoredProcedure [HR].[spGET_EMPLOYEE_IMAGE]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<RUSSEL VASQUEZ>
-- Create date: <02/14/2018>
-- Description:	<GET EMPLOYEE IMAGE>
-- =============================================
CREATE PROCEDURE [HR].[spGET_EMPLOYEE_IMAGE]
@EMPLOYEEID nvarchar(10)
AS
BEGIN
	
	SELECT Image_Data FROM HR.Employee_Picture_RF
	WHERE EmployeeID = @EMPLOYEEID
	
END


GO
