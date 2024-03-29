USE [DGMU]
GO
/****** Object:  Table [Trans].[Partner_PO_Hdr]    Script Date: 5/2/2018 9:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Trans].[Partner_PO_Hdr](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PONum] [nvarchar](10) NOT NULL,
	[PartnerCode] [nvarchar](10) NOT NULL,
	[RequestDate] [datetime] NULL,
	[Remarks] [nvarchar](250) NULL,
	[DocStatus] [nvarchar](1) NULL,
	[Void] [bit] NOT NULL,
	[DU] [datetime] NOT NULL,
	[UserCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_PPO_Hdr] PRIMARY KEY CLUSTERED 
(
	[PONum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [Trans].[Partner_PO_Hdr] ADD  CONSTRAINT [DF_PPO_Hdr_DocStatus]  DEFAULT ('O') FOR [DocStatus]
GO
ALTER TABLE [Trans].[Partner_PO_Hdr] ADD  CONSTRAINT [DF_PPO_Hdr_Void]  DEFAULT ((0)) FOR [Void]
GO
ALTER TABLE [Trans].[Partner_PO_Hdr] ADD  CONSTRAINT [DF_PPO_Hdr_DU]  DEFAULT (getdate()) FOR [DU]
GO
