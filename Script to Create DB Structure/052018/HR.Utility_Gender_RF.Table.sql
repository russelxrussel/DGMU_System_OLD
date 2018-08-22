USE [DGMU]
GO
/****** Object:  Table [HR].[Utility_Gender_RF]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HR].[Utility_Gender_RF](
	[GenderCode] [nvarchar](1) NOT NULL,
	[GenderDescription] [nvarchar](6) NULL,
 CONSTRAINT [PK_Utility_Gender_RF] PRIMARY KEY CLUSTERED 
(
	[GenderCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
