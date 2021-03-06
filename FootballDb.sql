CREATE DATABASE [FootballDb]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 29/8/2021 5:03:57 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShirtNo] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[PositionId] [int] NULL,
	[Appearances] [int] NULL,
	[Goal] [int] NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Positions]    Script Date: 29/8/2021 5:03:57 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[DisplayOrder] [int] NULL,
 CONSTRAINT [PK_Players] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Players] ON 

INSERT [dbo].[Players] ([Id], [ShirtNo], [Name], [PositionId], [Appearances], [Goal]) VALUES (1, 8, N'Jun Mata', 3, 123, 30)
INSERT [dbo].[Players] ([Id], [ShirtNo], [Name], [PositionId], [Appearances], [Goal]) VALUES (2, 6, N'Pogba', 2, 120, 50)
INSERT [dbo].[Players] ([Id], [ShirtNo], [Name], [PositionId], [Appearances], [Goal]) VALUES (3, 4, N'Phil Jones', 3, 100, 5)
INSERT [dbo].[Players] ([Id], [ShirtNo], [Name], [PositionId], [Appearances], [Goal]) VALUES (4, 1, N'David De Gea', 4, 90, 0)
INSERT [dbo].[Players] ([Id], [ShirtNo], [Name], [PositionId], [Appearances], [Goal]) VALUES (5, 10, N'Messi', 1, 100, 90)
INSERT [dbo].[Players] ([Id], [ShirtNo], [Name], [PositionId], [Appearances], [Goal]) VALUES (15, 8, N'af', 2, 30, 38)
INSERT [dbo].[Players] ([Id], [ShirtNo], [Name], [PositionId], [Appearances], [Goal]) VALUES (16, 8, N'af', 2, 30, 38)
SET IDENTITY_INSERT [dbo].[Players] OFF
SET IDENTITY_INSERT [dbo].[Positions] ON 

INSERT [dbo].[Positions] ([Id], [Name], [DisplayOrder]) VALUES (1, N'Forward', 1)
INSERT [dbo].[Positions] ([Id], [Name], [DisplayOrder]) VALUES (2, N'Midfielder', 2)
INSERT [dbo].[Positions] ([Id], [Name], [DisplayOrder]) VALUES (3, N'Defense', 3)
INSERT [dbo].[Positions] ([Id], [Name], [DisplayOrder]) VALUES (4, N'Goalkeeper', 4)
SET IDENTITY_INSERT [dbo].[Positions] OFF
ALTER TABLE [dbo].[Players]  WITH CHECK ADD  CONSTRAINT [fk_Position_id] FOREIGN KEY([PositionId])
REFERENCES [dbo].[Positions] ([Id])
GO
ALTER TABLE [dbo].[Players] CHECK CONSTRAINT [fk_Position_id]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetALLPlayers]    Script Date: 29/8/2021 5:03:57 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_GetALLPlayers]

as 
begin
select P.Id,P.Name,P.Appearances,P.ShirtNo,P.PositionId,S.Name,s.DisplayOrder from  [dbo].[Players] as P 
INNER JOIN [dbo].[Positions] AS S  ON P.PositionId=S.Id
end
GO
