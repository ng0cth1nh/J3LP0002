USE [J3LP002]
GO
/****** Object:  Table [dbo].[City]    Script Date: 2/21/2021 12:00:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[cid] [varchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flight]    Script Date: 2/21/2021 12:00:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flight](
	[fid] [varchar](10) NOT NULL,
	[code] [varchar](10) NOT NULL,
	[uid] [varchar](10) NOT NULL,
	[fiid] [varchar](10) NOT NULL,
	[issueDate] [datetime] NOT NULL,
	[travelDate] [datetime] NOT NULL,
	[isOneway] [bit] NULL,
	[departTime] [time](7) NULL,
	[arrivalTime] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[fid] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flight Infor]    Script Date: 2/21/2021 12:00:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flight Infor](
	[fiid] [varchar](10) NOT NULL,
	[from] [varchar](50) NOT NULL,
	[to] [varchar](50) NOT NULL,
	[departName] [nvarchar](50) NOT NULL,
	[returnName] [nvarchar](50) NOT NULL,
	[hour] [time](7) NOT NULL,
	[price] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[fiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2/21/2021 12:00:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[uid] [varchar](10) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[firstName] [nvarchar](50) NULL,
	[lastName] [nvarchar](50) NOT NULL,
	[address] [nvarchar](150) NOT NULL,
	[phone] [varchar](15) NOT NULL,
	[sex] [bit] NOT NULL,
	[age] [int] NOT NULL,
	[cardNumber] [varchar](20) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[City] ([cid], [name]) VALUES (N'DAD', N'Đà Nẵng')
INSERT [dbo].[City] ([cid], [name]) VALUES (N'HAN', N'Hà Nội')
INSERT [dbo].[City] ([cid], [name]) VALUES (N'SGN', N'Sài gòn')
GO
INSERT [dbo].[Flight] ([fid], [code], [uid], [fiid], [issueDate], [travelDate], [isOneway], [departTime], [arrivalTime]) VALUES (N'1', N'FA56E3', N'1', N'1', CAST(N'2021-02-19T00:00:00.000' AS DateTime), CAST(N'2021-02-25T00:00:00.000' AS DateTime), 1, CAST(N'09:00:00' AS Time), CAST(N'10:30:00' AS Time))
INSERT [dbo].[Flight] ([fid], [code], [uid], [fiid], [issueDate], [travelDate], [isOneway], [departTime], [arrivalTime]) VALUES (N'1c4sb9ocnl', N'ZRDM36', N'o4i4rokafh', N'1', CAST(N'2021-02-20T00:00:00.000' AS DateTime), CAST(N'2021-02-25T00:00:00.000' AS DateTime), 1, CAST(N'03:10:00' AS Time), CAST(N'04:40:00' AS Time))
INSERT [dbo].[Flight] ([fid], [code], [uid], [fiid], [issueDate], [travelDate], [isOneway], [departTime], [arrivalTime]) VALUES (N'7d2504w90x', N'4XKVIO', N'fjv6ceuvs3', N'4', CAST(N'2021-02-20T00:00:00.000' AS DateTime), CAST(N'2021-02-24T00:00:00.000' AS DateTime), 0, CAST(N'21:40:00' AS Time), CAST(N'23:50:00' AS Time))
INSERT [dbo].[Flight] ([fid], [code], [uid], [fiid], [issueDate], [travelDate], [isOneway], [departTime], [arrivalTime]) VALUES (N'c7f6hr4j3z', N'9PO4XV', N'fjv6ceuvs3', N'2', CAST(N'2021-02-20T00:00:00.000' AS DateTime), CAST(N'2021-02-25T00:00:00.000' AS DateTime), 0, CAST(N'07:10:00' AS Time), CAST(N'09:10:00' AS Time))
INSERT [dbo].[Flight] ([fid], [code], [uid], [fiid], [issueDate], [travelDate], [isOneway], [departTime], [arrivalTime]) VALUES (N'dtyfu84ql6', N'16Z1K5', N'1', N'3', CAST(N'2021-02-20T00:00:00.000' AS DateTime), CAST(N'2021-02-25T00:00:00.000' AS DateTime), 1, CAST(N'07:20:00' AS Time), CAST(N'08:20:00' AS Time))
INSERT [dbo].[Flight] ([fid], [code], [uid], [fiid], [issueDate], [travelDate], [isOneway], [departTime], [arrivalTime]) VALUES (N'o4a2l7k4m7', N'TKD8TO', N'o4i4rokafh', N'2', CAST(N'2021-02-20T00:00:00.000' AS DateTime), CAST(N'2021-02-26T00:00:00.000' AS DateTime), 0, CAST(N'11:20:00' AS Time), CAST(N'13:20:00' AS Time))
INSERT [dbo].[Flight] ([fid], [code], [uid], [fiid], [issueDate], [travelDate], [isOneway], [departTime], [arrivalTime]) VALUES (N'ysmugl3pwy', N'SQKN9G', N'o4i4rokafh', N'4', CAST(N'2021-02-20T00:00:00.000' AS DateTime), CAST(N'2021-02-27T00:00:00.000' AS DateTime), 0, CAST(N'16:00:00' AS Time), CAST(N'18:10:00' AS Time))
GO
INSERT [dbo].[Flight Infor] ([fiid], [from], [to], [departName], [returnName], [hour], [price]) VALUES (N'1', N'HAN', N'DAD', N'Hà Nội', N'Đà Nẵng', CAST(N'01:30:00' AS Time), 135)
INSERT [dbo].[Flight Infor] ([fiid], [from], [to], [departName], [returnName], [hour], [price]) VALUES (N'2', N'HAN', N'SGN', N'Hà Nội', N'Sài Gòn', CAST(N'02:00:00' AS Time), 155)
INSERT [dbo].[Flight Infor] ([fiid], [from], [to], [departName], [returnName], [hour], [price]) VALUES (N'3', N'SGN', N'DAD', N'Sài Gòn', N'Đà Nẵng', CAST(N'01:00:00' AS Time), 122)
INSERT [dbo].[Flight Infor] ([fiid], [from], [to], [departName], [returnName], [hour], [price]) VALUES (N'4', N'SGN', N'HAN', N'Sài Gòn', N'Hà Nội', CAST(N'02:10:00' AS Time), 152)
INSERT [dbo].[Flight Infor] ([fiid], [from], [to], [departName], [returnName], [hour], [price]) VALUES (N'5', N'DAD', N'HAN', N'Đà Nẵng', N'Hà Nội', CAST(N'01:30:00' AS Time), 130)
INSERT [dbo].[Flight Infor] ([fiid], [from], [to], [departName], [returnName], [hour], [price]) VALUES (N'6', N'DAD', N'SGN', N'Đà Nẵng', N'Sài Gòn', CAST(N'01:10:00' AS Time), 115)
GO
INSERT [dbo].[User] ([uid], [email], [password], [firstName], [lastName], [address], [phone], [sex], [age], [cardNumber]) VALUES (N'1', N'thinh@gmail.com', N'123', N'Vu', N'Ngoc Thinh', N'Ha Noi', N'012315444448', 1, 20, N'249484984984894')
INSERT [dbo].[User] ([uid], [email], [password], [firstName], [lastName], [address], [phone], [sex], [age], [cardNumber]) VALUES (N'fjv6ceuvs3', N'hai@gmail.com', N'123', N'Lương', N'Văn Hải', N'Hà Nội', N'064887874', 1, 23, N'2131243646')
INSERT [dbo].[User] ([uid], [email], [password], [firstName], [lastName], [address], [phone], [sex], [age], [cardNumber]) VALUES (N'o4i4rokafh', N'duc@gmail.com', N'123', N'Vu', N'Danh Duc', N'Ha Noi', N'015498498', 1, 20, N'265444844844531')
GO
ALTER TABLE [dbo].[Flight]  WITH CHECK ADD  CONSTRAINT [FK_Flight_Flight Infor] FOREIGN KEY([fiid])
REFERENCES [dbo].[Flight Infor] ([fiid])
GO
ALTER TABLE [dbo].[Flight] CHECK CONSTRAINT [FK_Flight_Flight Infor]
GO
ALTER TABLE [dbo].[Flight]  WITH CHECK ADD  CONSTRAINT [FK_Flight_User] FOREIGN KEY([uid])
REFERENCES [dbo].[User] ([uid])
GO
ALTER TABLE [dbo].[Flight] CHECK CONSTRAINT [FK_Flight_User]
GO
ALTER TABLE [dbo].[Flight Infor]  WITH CHECK ADD  CONSTRAINT [FK_Flight Infor_City] FOREIGN KEY([from])
REFERENCES [dbo].[City] ([cid])
GO
ALTER TABLE [dbo].[Flight Infor] CHECK CONSTRAINT [FK_Flight Infor_City]
GO
ALTER TABLE [dbo].[Flight Infor]  WITH CHECK ADD  CONSTRAINT [FK_Flight Infor_City1] FOREIGN KEY([to])
REFERENCES [dbo].[City] ([cid])
GO
ALTER TABLE [dbo].[Flight Infor] CHECK CONSTRAINT [FK_Flight Infor_City1]
GO
