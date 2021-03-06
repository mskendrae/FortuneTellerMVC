USE [FortuneMVC]
GO
/****** Object:  Table [dbo].[BirthMonth]    Script Date: 10/13/2016 1:47:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BirthMonth](
	[BirthMonthID] [int] IDENTITY(1,1) NOT NULL,
	[BirthMonth] [int] NOT NULL,
 CONSTRAINT [PK_BirthMonth] PRIMARY KEY CLUSTERED 
(
	[BirthMonthID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/13/2016 1:47:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[FavoriteColorID] [int] NOT NULL,
	[BirthMonthID] [int] NOT NULL,
	[NumberofSiblings] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FavoriteColor]    Script Date: 10/13/2016 1:47:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoriteColor](
	[FavoriteColorID] [int] IDENTITY(1,1) NOT NULL,
	[FavoriteColor] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FavoriteColor] PRIMARY KEY CLUSTERED 
(
	[FavoriteColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Customer] FOREIGN KEY([BirthMonthID])
REFERENCES [dbo].[BirthMonth] ([BirthMonthID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Customer]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_FavoriteColor] FOREIGN KEY([FavoriteColorID])
REFERENCES [dbo].[FavoriteColor] ([FavoriteColorID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_FavoriteColor]
GO
