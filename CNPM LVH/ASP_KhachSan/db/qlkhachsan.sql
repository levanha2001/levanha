USE [master]
GO
/****** Object:  Database [qlkhachsan]    Script Date: 2/6/2023 2:09:52 PM ******/
CREATE DATABASE [qlkhachsan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qlkhachsan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\qlkhachsan.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'qlkhachsan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\qlkhachsan_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [qlkhachsan] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlkhachsan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlkhachsan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlkhachsan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlkhachsan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlkhachsan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlkhachsan] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlkhachsan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qlkhachsan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlkhachsan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlkhachsan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlkhachsan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlkhachsan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlkhachsan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlkhachsan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlkhachsan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlkhachsan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qlkhachsan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlkhachsan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlkhachsan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlkhachsan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlkhachsan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlkhachsan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlkhachsan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlkhachsan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qlkhachsan] SET  MULTI_USER 
GO
ALTER DATABASE [qlkhachsan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlkhachsan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlkhachsan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlkhachsan] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [qlkhachsan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [qlkhachsan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [qlkhachsan] SET QUERY_STORE = OFF
GO
USE [qlkhachsan]
GO
/****** Object:  Table [dbo].[admins]    Script Date: 2/6/2023 2:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admins](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[phone] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[address] [nvarchar](100) NULL,
	[avatar] [nvarchar](1000) NULL,
 CONSTRAINT [PK_admins] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[room_types]    Script Date: 2/6/2023 2:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room_types](
	[room_type_id] [int] IDENTITY(1,1) NOT NULL,
	[room_type_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_room_types] PRIMARY KEY CLUSTERED 
(
	[room_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rooms]    Script Date: 2/6/2023 2:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rooms](
	[room_id] [int] IDENTITY(1,1) NOT NULL,
	[room_name] [nvarchar](50) NULL,
	[avatar] [nvarchar](1000) NULL,
	[room_status] [bit] NULL,
	[room_type_id] [int] NULL,
 CONSTRAINT [PK_rooms] PRIMARY KEY CLUSTERED 
(
	[room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schedules]    Script Date: 2/6/2023 2:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedules](
	[schedule_id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[date_in] [date] NULL,
	[date_out] [date] NULL,
	[room_id] [int] NULL,
	[schedule_status] [bit] NULL,
 CONSTRAINT [PK_schedules] PRIMARY KEY CLUSTERED 
(
	[schedule_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admins] ON 

INSERT [dbo].[admins] ([admin_id], [phone], [password], [email], [address], [avatar]) VALUES (2, N'0349174806', N'huan124', N'huanminh2103@gmail.com', N'nghi lien', N'18.jpg')
SET IDENTITY_INSERT [dbo].[admins] OFF
GO




SET IDENTITY_INSERT [dbo].[room_types] ON 

INSERT [dbo].[room_types] ([room_type_id], [room_type_name]) VALUES (1, N'Phòng đơn')
INSERT [dbo].[room_types] ([room_type_id], [room_type_name]) VALUES (2, N'Phòng đôi')
INSERT [dbo].[room_types] ([room_type_id], [room_type_name]) VALUES (3, N'Phòng VIP')
SET IDENTITY_INSERT [dbo].[room_types] OFF
GO
SET IDENTITY_INSERT [dbo].[rooms] ON 

INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (15, N'Phòng đơn 105', N'hihi', 1, 1)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (16, N'Phòng đơn 306', NULL, 0, 1)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (17, N'Phòng đơn 506', NULL, 1, 1)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (18, N'Phòng đôi 101', NULL, 1, 2)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (19, N'Phòng đôi 106', NULL, 0, 2)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (20, N'Phòng đôi 103', N'hihi', 1, 2)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (21, N'Phòng VIP 05', N'hihi', 1, 3)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (22, N'Phòng VIP 39', NULL, 1, 3)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (23, N'Phòng đôi 276', NULL, 0, 2)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (24, N'Phòng 209', N'Chayroi', 1, 1)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (25, N'Phòng đôi 101', NULL, 0, 2)
INSERT [dbo].[rooms] ([room_id], [room_name], [avatar], [room_status], [room_type_id]) VALUES (26, N'Phòng VIP 119', NULL, 0, 3)
SET IDENTITY_INSERT [dbo].[rooms] OFF
GO
SET IDENTITY_INSERT [dbo].[schedules] ON 

INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (49, N'Lê Văn Huân', N'0349174806', N'huanminh2103@gmail.com', CAST(N'2022-10-01' AS Date), CAST(N'2022-10-02' AS Date), 17, 0)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (50, N'Đặng Nguyễn Phương Hà', N'0567183114', N'haxinhdep@gmail.com', CAST(N'2022-10-28' AS Date), CAST(N'2022-11-08' AS Date), 22, 0)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (1049, N'Lê Duy Long', N'0349174806', N'soi1204@gmail.com', CAST(N'2022-11-09' AS Date), CAST(N'2022-11-30' AS Date), 23, 0)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (1050, N'Lê Duy Long', N'0349174806', N'soi1204@gmail.com', CAST(N'2022-11-09' AS Date), CAST(N'2022-11-30' AS Date), 23, 1)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (1051, N'Lê Văn Huân', N'0398425456', N'huan@gmail.com', CAST(N'2022-12-07' AS Date), CAST(N'2022-12-08' AS Date), 19, 1)
INSERT [dbo].[schedules] ([schedule_id], [fullname], [phone], [email], [date_in], [date_out], [room_id], [schedule_status]) VALUES (1052, N'Đặng', N'0125', N'h@gmail.com', CAST(N'2022-12-02' AS Date), CAST(N'2022-12-14' AS Date), 15, 0)
SET IDENTITY_INSERT [dbo].[schedules] OFF
GO



ALTER TABLE [dbo].[rooms] ADD  CONSTRAINT [DF_rooms_room_status]  DEFAULT ((0)) FOR [room_status]
GO
ALTER TABLE [dbo].[schedules] ADD  CONSTRAINT [DF_schedules_schedule_status]  DEFAULT ((0)) FOR [schedule_status]
GO



ALTER TABLE [dbo].[rooms]  WITH CHECK ADD  CONSTRAINT [FK_rooms_room_types] FOREIGN KEY([room_type_id])
REFERENCES [dbo].[room_types] ([room_type_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rooms] CHECK CONSTRAINT [FK_rooms_room_types]
GO
ALTER TABLE [dbo].[schedules]  WITH CHECK ADD  CONSTRAINT [FK_schedules_schedules] FOREIGN KEY([room_id])
REFERENCES [dbo].[rooms] ([room_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[schedules] CHECK CONSTRAINT [FK_schedules_schedules]
GO

USE [master]
GO
ALTER DATABASE [qlkhachsan] SET  READ_WRITE 
GO
