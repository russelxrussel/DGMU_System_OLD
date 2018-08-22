USE [DGMU]
GO
/****** Object:  Table [Utility].[UOM_RF]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Utility].[UOM_RF](
	[UomID] [int] IDENTITY(1,1) NOT NULL,
	[UomCode] [nvarchar](10) NOT NULL,
	[UomName] [nvarchar](50) NULL,
 CONSTRAINT [PK_UOM_RF] PRIMARY KEY CLUSTERED 
(
	[UomCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
