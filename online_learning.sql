-- create database [OnlineLearning]
USE [OnlineLearning]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 2/26/2022 12:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[accountID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](100) NULL,
	[password] [nvarchar](8) NULL,
	[status] [bit] NULL,
	[roleID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[accountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2/26/2022 12:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[adminID] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](100) NULL,
	[image] [nvarchar](100) NULL,
	[gender] [bit] NULL,
	[dob] [date] NULL,
	[address] [nvarchar](500) NULL,
	[email] [nvarchar](100) NULL,
	[phone] [nvarchar](20) NULL,
	[accountID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[adminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 2/26/2022 12:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[answerID] [int] IDENTITY(1,1) NOT NULL,
	[questionID] [int] NULL,
	[answer] [int] NULL,
	[status] [bit] NULL,
	[answer_content] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[answerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2/26/2022 12:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](500) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chapter]    Script Date: 2/26/2022 12:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chapter](
	[chapterID] [int] IDENTITY(1,1) NOT NULL,
	[chapterName] [nvarchar](500) NULL,
	[courseID] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[chapterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 2/26/2022 12:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[commentID] [int] IDENTITY(1,1) NOT NULL,
	[learnerID] [int] NULL,
	[lessonID] [int] NULL,
	[content] [nvarchar](max) NULL,
	[timeComment] [date] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[commentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 2/26/2022 12:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[courseID] [int] IDENTITY(1,1) NOT NULL,
	[image] [nvarchar](100) NULL,
	[courseName] [nvarchar](500) NULL,
	[overview] [nvarchar](2000) NULL,
	[description] [nvarchar](max) NULL,
	[createDate] [date] NULL,
	[authorID] [int] NULL,
	[categoryID] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[courseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Do_Quiz]    Script Date: 2/26/2022 12:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Do_Quiz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[learnerID] [int] NULL,
	[quizID] [int] NULL,
	[mark] [float] NULL,
	[startTimne] [datetime] NULL,
	[endTime] [datetime] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enroll]    Script Date: 2/26/2022 12:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enroll](
	[enrollID] [int] IDENTITY(1,1) NOT NULL,
	[learnerID] [int] NULL,
	[courseID] [int] NULL,
	[timeEnroll] [date] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[enrollID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Health_Status]    Script Date: 2/26/2022 12:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Health_Status](
	[leanerID] [int] NOT NULL,
	[symptomID] [int] NOT NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[leanerID] ASC,
	[symptomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Learner]    Script Date: 2/26/2022 12:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Learner](
	[learnerID] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](100) NULL,
	[image] [nvarchar](100) NULL,
	[gender] [bit] NULL,
	[dob] [date] NULL,
	[address] [nvarchar](500) NULL,
	[email] [nvarchar](100) NULL,
	[phone] [nvarchar](20) NULL,
	[accountID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[learnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecture]    Script Date: 2/26/2022 12:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecture](
	[lectureID] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](100) NULL,
	[image] [nvarchar](100) NULL,
	[gender] [bit] NULL,
	[dob] [date] NULL,
	[address] [nvarchar](500) NULL,
	[email] [nvarchar](100) NULL,
	[phone] [nvarchar](20) NULL,
	[accountID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[lectureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 2/26/2022 12:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[lessonID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[reading] [nvarchar](max) NULL,
	[video] [nvarchar](500) NULL,
	[chapterID] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[lessonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 2/26/2022 12:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[questionID] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](max) NULL,
	[correctAnswer] [int] NULL,
	[quizID] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[questionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 2/26/2022 12:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[quizID] [int] IDENTITY(1,1) NOT NULL,
	[lessonID] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[quizID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rate]    Script Date: 2/26/2022 12:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate](
	[learnerID] [int] NOT NULL,
	[lessonID] [int] NOT NULL,
	[rate] [int] NULL,
	[timeRate] [date] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[learnerID] ASC,
	[lessonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2/26/2022 12:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Symptom]    Script Date: 2/26/2022 12:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Symptom](
	[symptomID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NULL,
	[categoryID] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[symptomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (1, N'nguyenthihailinhadmin', N'12345678', 1, 1)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (2, N'trinhducanh123', N'87654321', 0, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (3, N'lehunganhlecture', N'123abcde', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (4, N'lemanhkhiemlecture', N'234abcde', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (5, N'ngohoangbachlecture', N'3456abcd', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (6, N'ngominhanlearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (7, N'vobaolanlearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (8, N'vohanhdunglearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (9, N'nguyennhatnamadmin', N'12345678', 1, 1)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (10, N'tranphucuongadmin', N'12345678', 1, 1)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (11, N'tranphanhuyanhadmin', N'12345678', 1, 1)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (12, N'duongdinhhoangadmin', N'12345678', 1, 1)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (13, N'nguyenhienthuclecture', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (14, N'nguyenhiennhi', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (15, N'nguyenhongdiem', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (16, N'nguyenmytam', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (17, N'nguyenbichthao', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (18, N'nguyendoantrang', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (19, N'nguyenthanhphuong', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (20, N'hoangchanphong', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (21, N'nguyenbaonam', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (22, N'hoangbaolong', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (23, N'habaophuc', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (24, N'phamquoclong', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (25, N'phamminhlam', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (26, N'hadiemthu', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (27, N'nguyencattuong', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (28, N'halychau', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (29, N'nguyendanthu', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (30, N'nguyenannhien', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (31, N'nguyenlinhlan', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (32, N'nguyendoantrang', N'12345678', 1, 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (33, N'haminhvuonglearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (34, N'nguyethanhsonlearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (35, N'phamkhaccuonglearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (36, N'phamminhnhat', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (37, N'nguyentrongnguyenlearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (38, N'nguyenquanghailearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (39, N'nguyenmanhquanlearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (40, N'phamvankhanhlearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (41, N'nguyentuandu', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (42, N'trinhthanhbinhlearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (43, N'trinhhaiduonglearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (44, N'nguyendinhtronglearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (45, N'phamthanhdatlearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (46, N'tranquoctuanlearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (47, N'tranvietanhlearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (48, N'chuquangvulearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (49, N'chuducthanglearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (50, N'phamhuychienlearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (51, N'nguyenvietcuonglearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (52, N'vuducthanglearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (53, N'haminhhoplearner', N'12345678', 1, 3)
INSERT [dbo].[Account] ([accountID], [username], [password], [status], [roleID]) VALUES (54, N'nguyenthanhdonglearner', N'12345678', 1, 3)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([adminID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (6, N'Nguyen Thi Hai Linh', N'avatar.png', 0, CAST(N'2001-08-02' AS Date), N'Hai Duong', N'hailinh0666@gmail.com', N'0794161517', 1)
INSERT [dbo].[Admin] ([adminID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (7, N'Nguyen Nhat Nam', N'avatar.png', 1, CAST(N'2001-08-02' AS Date), N'Hai Duong', N'hailinh0666@gmail.com', N'0794161517', 9)
INSERT [dbo].[Admin] ([adminID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (8, N'Tran Phu Cuong', N'avatar.png', 1, CAST(N'2001-08-02' AS Date), N'Hai Duong', N'hailinh0666@gmail.com', N'0794161517', 10)
INSERT [dbo].[Admin] ([adminID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (9, N'Tran Phan Huy Anh', N'avatar.png', 1, CAST(N'2001-08-02' AS Date), N'Hai Duong', N'hailinh0666@gmail.com', N'0794161517', 11)
INSERT [dbo].[Admin] ([adminID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (10, N'Duong Dinh Hoang', N'avatar.png', 1, CAST(N'2001-08-02' AS Date), N'Hai Duong', N'hailinh0666@gmail.com', N'0794161517', 12)
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Answer] ON 

INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (1, 31, 1, 1, N'30%')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (2, 31, 2, 1, N'50%')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (3, 31, 3, 1, N'70%')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (4, 32, 1, 1, N'Chỉ nhóm giàu nhất')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (5, 32, 2, 1, N'Chỉ nhóm người nghèo nhất')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (6, 32, 3, 1, N'Tất cả các phân khúc dân số')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (7, 33, 1, 1, N'Quản trị')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (8, 33, 2, 1, N'Tài trợ')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (9, 33, 3, 1, N'Hội thoại')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (10, 33, 4, 1, N'Quan hệ đối tác')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (11, 33, 5, 1, N'Chính sách')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (12, 34, 1, 1, N'Đảm bảo công bằng tiếp cận vắc xin COVID-19')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (13, 34, 2, 1, N'Tăng giá vắc xin COVID-19')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (14, 34, 3, 1, N'Nâng cao chất lượng vắc xin COVID-19')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (15, 35, 1, 1, N'Cơ chế tài chính')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (16, 35, 2, 1, N'Hội thoại')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (17, 35, 3, 1, N'Chính sách')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (18, 36, 1, 1, N'Nhà cung cấp dịch vụ y tế')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (19, 36, 2, 1, N'Chính phủ')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (20, 36, 3, 1, N'Tổ chức bảo hiểm y tế')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (21, 37, 1, 1, N'Cung cấp chiến lược')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (22, 37, 2, 1, N'Xây dựng cấu trúc')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (23, 37, 3, 1, N'Cho phép các bên liên quan')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (24, 38, 1, 1, N'Thiết lập cơ chế giám sát điều phối và thực hiện')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (25, 38, 2, 1, N'Áp dụng cách tiếp cận dựa trên nguồn lực để quản trị')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (26, 38, 3, 1, N'Đảm bảo tổ chức học tập và đổi mới')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (27, 39, 1, 1, N'Thiết kế chính sách và chẩn đoán tốt hơn')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (28, 39, 2, 1, N'Các vấn đề sức khỏe được chính trị hóa')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (29, 39, 3, 1, N'Tháo gỡ những nút thắt về cải cách chính sách')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (30, 40, 1, 1, N'Sự đại diện quá mức của một nhóm khu vực tư nhân')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (31, 40, 2, 1, N'Độc quyền bởi một nhóm nhỏ diễn viên')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (35, 41, 3, 1, N'Môi trường kinh doanh dễ dự đoán hơn')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (36, 41, 1, 1, N'Đại diện một phía của các bên liên quan')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (37, 41, 2, 1, N'Các hoạt động củng cố lẫn nhau')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (38, 41, 3, 1, N'Thành lập một nhóm lãnh đạo cốt lõi')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (39, 42, 1, 1, N'Chỉ chọn các tác nhân có liên quan trong khu vực tư nhân')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (40, 42, 2, 1, N'Đầu tư vào việc thu thập dữ liệu')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (41, 42, 3, 1, N'Tạo quy tắc ứng xử cho đối thoại công tư')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (42, 43, 1, 1, N'Đầu tư thời gian trả trước để xây dựng các quy tắc của đối thoại công tư')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (43, 43, 2, 1, N'Sử dụng các quy tắc của một cuộc đối thoại công tư khác')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (44, 43, 3, 1, N'Chỉ tương tác với một bên của các bên liên quan để tạo ra các quy tắc')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (45, 44, 1, 1, N'Chỉ tương tác với các bên liên quan có động lực nhất')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (46, 44, 2, 1, N'Yêu cầu đối tác phải chịu trách nhiệm với các cam kết của họ')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (47, 44, 3, 1, N'Duy trì một lịch trình họp có cấu trúc và thường xuyên')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (48, 45, 1, 1, N'Thật')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (49, 45, 2, 1, N'Sai')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (50, 46, 1, 1, N'Thật')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (51, 46, 2, 1, N'Sai')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (52, 47, 1, 1, N'Thật')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (53, 47, 2, 1, N'Sai')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (54, 48, 1, 1, N'Thật')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (55, 48, 2, 1, N'Sai')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (56, 49, 1, 1, N'Thật')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (57, 49, 2, 1, N'Sai')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (58, 50, 1, 1, N'Thật')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (59, 50, 2, 1, N'Sai')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (60, 51, 1, 1, N'Bởi vì các thuật toán mới cho phép mọi người phát hiện các trò lừa bịp dễ dàng hơn')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (61, 51, 2, 1, N'Bởi vì mọi người nhận ra Internet đã được vũ khí hóa đến mức nào để ảnh hưởng đến các cuộc bầu cử ở Philippines và Mỹ, cũng như các cuộc bỏ phiếu trưng cầu dân ý về Brexit')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (62, 51, 3, 1, N'Bởi vì factcheck.org được tạo bởi Brooks Jackson')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (63, 52, 1, 1, N'Các cơ chế tâm lý chính cần được xem xét như: không ai thích giả dối; nỗi sợ hãi có thể phản tác dụng, và chúng ta nhầm lẫn giữa sự quen thuộc với sự thật.')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (64, 52, 2, 1, N'Nếu thông tin sai lệch hỗ trợ một thế giới quan, thì việc sửa chữa luôn dẫn đến hiệu ứng phản tác dụng.')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (65, 52, 3, 1, N'Việc sửa sai có thể thúc đẩy khả năng tiếp thu, trong khi sự đồng cảm có thể làm tăng phản ứng tâm lý.')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (66, 53, 1, 1, N'Thật')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (67, 53, 2, 1, N'Sai')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (68, 54, 1, 1, N'Thật')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (69, 54, 2, 1, N'Sai')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (70, 55, 1, 1, N'Kiểm tra sự thật ban đầu tập trung vào việc kiểm tra các tuyên bố của các nhân vật công khai, dựa trên thông tin từ các chuyên gia, học viện hoặc cơ quan chính phủ.')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (71, 55, 2, 1, N'Việc xác minh ban đầu tập trung vào việc tìm kiếm bằng chứng chính từ các nhân chứng hoặc thông qua định vị địa lý, tìm kiếm hình ảnh đảo ngược, v.v.')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (72, 55, 3, 1, N'Ngày nay, cả hai lĩnh vực này đã hợp nhất thành cái mà chúng tôi gọi là "bóc mẽ" tin tức giả mạo và trò lừa bịp lan truyền, đặc biệt là trực tuyến')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (73, 56, 1, 1, N'Thật')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (74, 56, 2, 1, N'Sai')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (75, 57, 1, 1, N'Thật')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (76, 57, 2, 1, N'Sai')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (77, 58, 1, 1, N'Thật')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (78, 58, 2, 1, N'Sai')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (79, 59, 1, 1, N'Đôi khi tập dữ liệu được chọn không phải là đại diện chính xác của toàn bộ tổng thể cụ thể được lên kế hoạch nghiên cứu')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (80, 59, 2, 1, N'Đôi khi các phương pháp tuyển dụng cho một nghiên cứu dẫn đến việc lựa chọn ngẫu nhiên một mẫu người không đại diện gây ra sự sai lệch trong kết quả')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (81, 59, 3, 1, N'Những tiếng chó sủa thường khiến các nhà khoa học mất tập trung vì kết quả là những tính toán sai lầm.')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (82, 60, 1, 1, N'Cung cấp sự thật về một chủ đề hoặc khám phá các kỹ thuật tu từ điển hình cho chủ nghĩa phủ nhận có thể là một cách hiệu quả để loại bỏ thông tin sai lệch')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (83, 60, 2, 1, N'Sẽ hiệu quả hơn khi nhắm mục tiêu thông điệp gỡ rối của bạn đến người cụ thể chia sẻ thông tin sai lệch')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (84, 60, 3, 1, N'Có một nguy cơ quan trọng về hiệu ứng phản tác dụng khi bạn cố gắng thuyết phục một người từ chối khó tính')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (85, 60, 4, 1, N'Việc giám sát liên tục các phương tiện truyền thông xã hội là rất quan trọng để có thể phản hồi nhanh chóng với tiếng nói đáng tin cậy đối với các tuyên bố không chính xác trước khi chúng được giữ lại')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (86, 61, 1, 1, N'Để gỡ rối vào thời điểm Đúng, với thông điệp Đúng và "mục tiêu" Đúng')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (87, 61, 2, 1, N'Đã quá muộn, bạn cần phải sửa chữa trước khi nó lan rộng, khi chưa ai nghe về nó')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (88, 61, 3, 1, N'Bạn cần đợi thông tin sai lệch lan truyền rất rộng rãi trước khi bắt đầu gỡ rối nó')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (89, 62, 1, 1, N'Cung cấp khoa học và nếu có thể, ghi nhận sự đồng thuận khoa học')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (90, 62, 2, 1, N'Sử dụng nội dung rõ ràng và có thể chia sẻ')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (91, 62, 3, 1, N'Tốt bụng, chân thực, đồng cảm và khiêm tốn')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (92, 62, 4, 1, N'Làm nổi bật những lỗ hổng trong logic và thủ thuật tu từ')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (93, 62, 5, 1, N'Làm cho thông tin sai lệch trở thành câu chuyện, và không phải sự thật')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (94, 62, 6, 1, N'Không có cái nào ở trên')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (95, 63, 1, 1, N'Thật')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (96, 63, 2, 1, N'Sai')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (97, 64, 1, 1, N'Thật')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (98, 64, 2, 1, N'Sai')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (99, 65, 1, 1, N'Thật')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (100, 65, 2, 1, N'Sai')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (101, 66, 1, 1, N'ảnh hưởng ngữ cảnh mạnh mẽ của thông tin sai lệch đối với hành vi cá nhân')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (102, 66, 2, 1, N'rằng mọi người không giỏi đo độ dài của đoạn thẳng')
GO
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (103, 66, 3, 1, N'rằng mọi người không thích tuân theo ý kiến ​​của đa số')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (104, 67, 1, 1, N'Bạn không cần phải nêu bật những lợi ích của việc thay đổi hành vi, bởi vì những chi phí này luôn chính đáng so với mối đe dọa sức khỏe cộng đồng.')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (105, 67, 2, 1, N'Mối quan tâm đến sức khỏe của một người ảnh hưởng đến khả năng áp dụng các hành vi phòng ngừa')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (106, 67, 3, 1, N'Ý định tiêm chủng bị ảnh hưởng bởi mức độ nghiêm trọng của bệnh')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (107, 68, 1, 1, N'Các biện pháp can thiệp chỉ sử dụng các giải pháp công nghệ cao')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (108, 68, 2, 1, N'Tất cả những người tham gia nhóm tiêu điểm của họ đều đậm, mặc quần jean và áo phông đen')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (109, 68, 3, 1, N'Các biện pháp can thiệp được thiết kế với mọi người và cộng đồng để xây dựng các kế hoạch được tùy chỉnh theo nhu cầu của họ, phù hợp với họ và có thể có hiệu quả hơn')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (110, 69, 1, 1, N'Thật')
INSERT [dbo].[Answer] ([answerID], [questionID], [answer], [status], [answer_content]) VALUES (111, 69, 2, 1, N'Sai')
SET IDENTITY_INSERT [dbo].[Answer] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([categoryID], [categoryName], [status]) VALUES (1, N'Các triệu chứng thường gặp nhất', 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [status]) VALUES (2, N'Các triệu chứng ít gặp hơn', 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [status]) VALUES (3, N'Các triệu chứng nghiêm trọng', 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Chapter] ON 

INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (2, N'Kiểm tra SARS-CoV-2', 4, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (3, N'Vai trò của các xét nghiệm chẩn đoán nhanh kháng nguyên SARS-CoV-2 trong chiến lược xét nghiệm COVID-19', 4, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (4, N'Kế hoạch chiến lược quốc gia COVID-19 và truyền thông cũng như sự tham gia của cộng đồng', 4, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (5, N'Mua sắm RDT và quản lý chuỗi cung ứng', 4, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (6, N'Đào tạo và đảm bảo chất lượng', 4, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (7, N'Quản lý dữ liệu và giám sát và đánh giá', 4, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (8, N'Khu vực y tế tư nhân là gì, và tại sao nó lại quan trọng?', 5, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (9, N'Tại sao các nhà hoạch định chính sách cần thu hút sự tham gia của khu vực y tế tư nhân?', 5, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (10, N'Các hành vi chính để quản trị một hệ thống y tế hỗn hợp là gì?', 5, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (11, N'Đối thoại công tư là gì và các phương pháp hay nhất của nó?', 5, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (12, N'Làm thế nào để tạo điều kiện cho quá trình đối thoại công tư hiệu quả?', 5, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (13, N'Giới thiệu về quản lý bệnh dịch', 6, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (14, N'Giới thiệu về khoa học thông tin sai lệch', 6, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (15, N'Xác minh và kiểm tra thực tế trong một cuộc khủng hoảng sức khỏe', 6, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (16, N'Lý thuyết tạo mầm, khai thác và tiêm chủng', 6, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (17, N'Thiết kế can thiệp và trao quyền cho cộng đồng', 6, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (18, N'Tổng quan về thử nghiệm SARS-CoV-2', 7, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (19, N'Các chiến lược kiểm tra SARS-CoV-2', 7, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (20, N'Kiểm tra chất lượng bằng cách sử dụng RDT kháng nguyên SARS-CoV-2', 7, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (21, N'An toàn cho thử nghiệm RDT kháng nguyên SARS-CoV-2', 7, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (22, N'Thực hiện RDT kháng nguyên SARS-CoV-2', 7, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (23, N'Truyền thông rủi ro và sự tham gia của cộng đồng: Tổng quan', 8, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (24, N'Tác động đến nhận thức rủi ro về COVID-19 để khuyến khích các hành vi lành mạnh', 8, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (25, N'Duy trì các hành vi được khuyến nghị COVID-19 trong thời gian dài', 8, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (26, N'Kiến thức cơ bản về phòng ngừa và kiểm soát lây nhiễm COVID-19 tại nơi làm việc', 9, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (27, N'Đánh giá rủi ro lây truyền tại nơi làm việc', 9, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (28, N'Ứng phó với COVID-19 tại nơi làm việc của bạn', 9, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (29, N'Làm việc từ xa an toàn hơn và lành mạnh hơn: Lời khuyên và kỹ thuật', 9, 1)
INSERT [dbo].[Chapter] ([chapterID], [chapterName], [courseID], [status]) VALUES (30, N'Mở lại nơi làm việc của bạn', 9, 1)
SET IDENTITY_INSERT [dbo].[Chapter] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (4, N'course1.png', N'Những cân nhắc chính để triển khai RDT kháng nguyên SARS-CoV-2', N'Khóa học này bao gồm các yếu tố chính phải được xem xét trước, trong và sau khi thực hiện các xét nghiệm chẩn đoán nhanh phát hiện kháng nguyên (Ag-RDT) để đảm bảo thực hiện hiệu quả và mang lại lợi ích sức khỏe cộng đồng lớn hơn.', N'Khóa học này dựa trên ''Các xét nghiệm chẩn đoán nhanh kháng nguyên SARS-CoV-2, Hướng dẫn thực hiện'', được phát hành vào tháng 12 năm 2020 và bổ sung cho hướng dẫn chính sách do Tổ chức Y tế Thế giới (WHO) ban hành. Nó cung cấp tổng quan về các yếu tố chính phải được xem xét trước, trong và sau khi thực hiện các xét nghiệm chẩn đoán nhanh phát hiện kháng nguyên, hoặc kháng nguyên-RDT, đối với SARS-CoV-2 để hỗ trợ việc triển khai xét nghiệm RDT trong quá trình chẩn đoán. mạng. Khóa học này hướng đến các bên liên quan trong phòng thí nghiệm, đặc biệt là những bên tham gia lập kế hoạch ở cấp trung ương, các bên liên quan khác về y tế cũng như tất cả các chuyên gia có liên quan được giao nhiệm vụ thực hiện xét nghiệm RDT, bao gồm các bộ y tế, các nhà tài trợ, các tổ chức công và tư.', CAST(N'2022-02-21' AS Date), 1, 1, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (5, N'course2.png', N'Thu hút khu vực tư nhân cung cấp các công cụ COVID-19 và đạt được Sức khỏe cho Mọi người', N'Trong các trường hợp khẩn cấp về y tế, các chính phủ cần huy động mọi nguồn lực - cả nhà nước và tư nhân - để đẩy nhanh việc thực hiện các nỗ lực ứng phó quốc gia. Đồng thời, họ được kêu gọi để đảm bảo các hành động của khu vực y tế tư nhân phù hợp với các nguyên tắc cốt lõi của Bảo hiểm Y tế Toàn dân (UHC) và hướng tới việc đạt được các mục tiêu y tế quốc gia. Khóa học này xác định các khái niệm chính và trình bày một loạt các công cụ và phương pháp tiếp cận đã được chứng minh nhằm cho phép Bộ Y tế khai thác năng lực của khu vực tư nhân để đạt được các mục tiêu chính sách chính, đảm bảo tiếp cận công bằng với các công cụ COVID-19 trong khi nâng cao sức khỏe cho tất cả mọi người.', N'Khóa học tập trung vào nhu cầu cấp thiết về sự tham gia của khu vực y tế tư nhân để đảm bảo cung cấp hiệu quả và công bằng các chẩn đoán, điều trị và vắc xin cần thiết ở cấp quốc gia để đối phó hiệu quả với đại dịch COVID-19. Nó đã được thiết kế cẩn thận để trao quyền cho các bộ y tế các kỹ năng và công cụ để hợp tác và đối tác hiệu quả với khu vực y tế tư nhân. Nó đã được thiết kế để hỗ trợ phản ứng của các quốc gia đối với COVID-19 và nó sẽ liên quan đến sự tham gia của khu vực tư nhân đối với tất cả các mục tiêu y tế cần thiết để đảm bảo đạt được Sức khỏe cho mọi người. Đối tượng mục tiêu của khóa học này bao gồm Bộ Y tế, các nhà hoạch định chính sách và quản lý chương trình, nhân viên WHO ở cấp khu vực và quốc gia, các nhà nghiên cứu và học viên y tế toàn cầu hỗ trợ nỗ lực COVID-19 (và các mục tiêu y tế khác ngoài COVID-19) ở các quốc gia.', CAST(N'2022-02-21' AS Date), 1, 2, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (6, N'course3.png', N'Quản lý dịch bệnh 101', N'Mọi người đều có vai trò trong việc quản lý dịch bệnh và hành trình này bắt đầu bằng việc hiểu và xác định các cơ chế và tác nhân chính của nó. Khóa học này dành cho bất kỳ ai quan tâm đến việc hiểu bệnh dịch là gì, nó ảnh hưởng đáng kể đến sức khỏe cộng đồng như thế nào và chúng ta có thể làm gì với bệnh dịch bây giờ và trong tương lai. Những người tham gia có thể mong đợi được tiếp xúc với nhiều chủ đề và kỹ năng quản lý bệnh dịch và học những kiến thức cơ bản về cách giảm tác động tiêu cực của thông tin sai lệch và thông tin sai lệch đối với sức khỏe cộng đồng.', N'Đại dịch COVID-19 đã ảnh hưởng đến tất cả mọi người trên toàn cầu và sẽ tiếp tục như vậy trong tương lai gần. Việc tăng cường phản ứng sức khỏe cộng đồng, hệ thống y tế và an ninh y tế toàn cầu phụ thuộc vào việc cải thiện việc quản lý toàn bộ hệ sinh thái thông tin của chúng ta để mang đến cho mọi người thông tin sức khỏe phù hợp, đúng định dạng, từ đúng người đưa tin và vào đúng thời điểm để thúc đẩy các hành vi lành mạnh và khả năng phục hồi đối với thông tin sai lệch về sức khỏe. Thông tin tràn lan nhanh chóng, kết hợp với khoảng trống thông tin và thông điệp khó hiểu, tất cả đã cùng nhau tạo nên một "cơn đại dịch" khiến mọi người khó tìm được thông tin đáng tin cậy và không biết phải làm gì để bảo vệ sức khỏe của mình và cộng đồng. Sự nhầm lẫn này dẫn đến các hành vi chấp nhận rủi ro và đang làm xói mòn sự gắn kết xã hội và sự tin tưởng vào chuyên môn, những người ứng phó với y tế, các chiến lược giảm thiểu dịch bệnh và các cơ quan y tế - kéo dài đại dịch.', CAST(N'2022-02-21' AS Date), 2, 3, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (7, N'course4.jpg', N'Xét nghiệm chẩn đoán nhanh kháng nguyên SARS-CoV-2', N'Tất cả nhân viên thực hiện xét nghiệm chẩn đoán nhanh kháng nguyên SARS-CoV-2 (Ag-RDT) cần hiểu cách thực hiện xét nghiệm một cách an toàn, đảm bảo chất lượng xét nghiệm và diễn giải kết quả. Khóa học này được phát triển bởi WHO và FIND, liên minh chẩn đoán toàn cầu, nhằm cung cấp kiến thức lý thuyết về xét nghiệm SARS-CoV-2 Ag-RDT. Gói học tập bao gồm 10 mô-đun, bao gồm các bài thuyết trình và video được ghi lại.', N'Các xét nghiệm chẩn đoán nhanh kháng nguyên SARS-CoV-2 (Ag-RDT) đang được sử dụng trên toàn cầu để kiểm tra các trường hợp nghi ngờ COVID-19 trong bối cảnh không thể có chẩn đoán PCR, thường là ở cấp địa phương. Khóa học này nhằm mục đích cung cấp cho người dùng Ag-RDT sự hiểu biết về các thành phần lý thuyết và thực tiễn của thử nghiệm SARS-CoV-2 Ag-RDT. Nó không có ý định giải quyết việc triển khai thử nghiệm Ag-RDT trên toàn bộ mạng chẩn đoán. Nó nhắm mục tiêu đến các nhân viên liên quan đến xét nghiệm SARS-CoV-2, bao gồm nhân viên y tế, nhân viên phòng thí nghiệm và nhân viên y tế công cộng.', CAST(N'2022-02-21' AS Date), 2, 1, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (8, N'course5.jpg', N'Quản lý dịch bệnh COVID-19: các thách thức về truyền thông rủi ro và sự tham gia của cộng đồng', N'Khóa học quản lý bệnh dịch này áp dụng hướng dẫn dựa trên bằng chứng cho đại dịch COVID-19. Nó bao gồm các nguyên tắc chính về giao tiếp rủi ro và sự tham gia của cộng đồng (RCCE) và minh họa cách chúng có thể được vận hành trong bối cảnh một đợt bùng phát mở rộng ảnh hưởng đến các quần thể khác nhau với các mức độ rủi ro khác nhau. Các minh họa từ trụ sở của WHO, các khu vực và Bộ Y tế cung cấp các ví dụ cụ thể về thông điệp và các can thiệp truyền thông khác được phát triển trong COVID-19.', N'Khóa học này sẽ tập trung vào cách các quốc gia, cộng đồng và cá nhân đang quản lý các biện pháp xã hội và sức khỏe cộng đồng bằng cách duy trì những gì đang hoạt động trong khi giải quyết những thách thức vẫn còn ở phía trước cho năm 2021. Khi các quốc gia đang đi vào và vượt ra khỏi các hạn chế, đại dịch COVID-19 đang có những ảnh hưởng đến cuộc sống hàng ngày của con người.', CAST(N'2022-02-21' AS Date), 3, 2, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (9, N'course6.jpg', N'COVID-19 và công việc: Giữ gìn sức khỏe và an toàn tại nơi làm việc trong thời kỳ đại dịch COVID-19', N'Nơi làm việc đã đóng một vai trò quan trọng trong cả việc lây lan và giảm thiểu đại dịch COVID-19 trên toàn thế giới. Được cung cấp một nơi làm việc lành mạnh và an toàn trong suốt đại dịch và hơn thế nữa là quyền của con người. Duy trì những nơi làm việc cởi mở, an toàn và lành mạnh có tầm quan trọng sống còn để bảo vệ sinh kế, phúc lợi và sức khỏe cộng đồng. Các biện pháp y tế công cộng quan trọng có thể giúp bảo vệ người lao động, khách hàng của họ và cộng đồng nói chung. Thông qua phần giới thiệu và 5 mô-đun, khóa học này nhằm hướng dẫn người lao động và đại diện của họ, lãnh đạo doanh nghiệp, người sử dụng lao động, nhà quản lý và các chuyên gia an toàn và sức khỏe nghề nghiệp về cách bảo vệ bản thân và nơi làm việc của họ trong đại dịch COVID-19.', N'Khóa học này nhằm hướng dẫn người lao động và đại diện của họ, các nhà lãnh đạo doanh nghiệp, nhà quản lý, cũng như các chuyên gia an toàn và sức khỏe nghề nghiệp trong việc bảo vệ nơi làm việc của họ trong đại dịch COVID-19. Khóa học bao gồm phần giới thiệu và 5 mô-đun video do các chuyên gia trong lĩnh vực kiểm soát phòng chống nhiễm khuẩn và an toàn và sức khỏe nghề nghiệp thuật lại. Khóa học bắt đầu với phần sơ lược về SARS-CoV-2, loại vi-rút gây ra COVID-19 là gì, cách nó lây truyền tại nơi làm việc và môi trường làm việc có nguy cơ phơi nhiễm cao nhất. Chúng ta sẽ thảo luận về “hệ thống phân cấp kiểm soát” và cách áp dụng nó để bảo vệ nơi làm việc của bạn khỏi COVID-19. Chúng tôi sẽ xem xét việc sử dụng các thiết bị bảo vệ cá nhân (PPE), khử trùng môi trường và các biện pháp tránh xa xã hội tại nơi làm việc. Trong mô-đun thứ hai, chúng ta sẽ thảo luận về cách đánh giá mức độ rủi ro tại nơi làm việc. Mô-đun thứ ba sẽ cung cấp các công cụ về cách sàng lọc nhân viên, xác định sớm các cụm và cách phản hồi với các cụm một cách hiệu quả, hiệu quả và có đạo đức. Mô-đun thứ tư sẽ tập trung vào cách giữ gìn sức khỏe và an toàn khi làm việc tại nhà, bao gồm các tác động thể chất và tâm lý của việc làm việc từ xa. Cuối cùng, chúng ta sẽ thảo luận về việc chuẩn bị để trở lại làm việc, cách thực hiện mở lại theo từng giai đoạn và trở lại hoạt động bình thường để bảo vệ mọi người tại nơi làm việc.', CAST(N'2022-02-21' AS Date), 3, 3, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (10, N'course7.jpg', N'Chẩn đoán và xử lý phản vệ', N'Phản vệ là một phản ứng dị ứng nặng cấp tính. Các triệu chứng đe dọa tính mạng có thể xảy ra trong vòng vài giây tới vài phút, hiếm khi tính bằng giờ, sau khi tiếp xúc với chất gây dị ứng trong đó có các loại thuốc và vắc xin. Khóa học “Chẩn đoán và xử lý phản vệ” là một hướng dẫn thực hành cho các nhân viên y tế tuyến đầu, cũng như nhân viên trực tiếp thực hiện tiêm vắc xin về những kiến thức cơ bản về chẩn đoán phản vệ, chẩn đoán phân biệt phản vệ với các tình trạng bệnh lý khác như ngất và các phản ứng do căng thẳng. Khóa học cũng đưa ra các bước thực hành xử lý một ca bệnh tại hiện trường nếu có sự cố xảy ra và quy trình chuyển tuyến.', N'Khóa học này phù hợp với nhân viên y tế và người phụ trách công việc tiêm chủng. Khóa học bao gồm hai video ngắn cung cấp thông tin hỗ trợ cho việc xử lý phù hợp các trường hợp phản vệ như là một phản ứng bất lợi sau tiêm chủng.', CAST(N'2022-02-21' AS Date), 4, 1, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (11, N'course8.png', N'Quản lý lâm sàng COVID-19: Xét nghiệm, Chẩn đoán hình ảnh và Điều trị bệnh nhân nhẹ, vừa và nặng', N'hoá học Quản lý lâm sàng COVID-19: Xét nghiệm, Chẩn đoán hình ảnh và Điều trị bệnh nhân nhẹ, vừa và nặng cung cấp một cái nhìn tổng quan về chiến lược chăm sóc bệnh nhân COVID-19 nhẹ, vừa và nặng. Các vấn đề về xét nghiệm và chẩn đoán hình ảnh được đề cập trong học phần “Xét nghiệm trong COVID-19” và 3 học phần được thiết kế cho “Chẩn đoán hình ảnh – COVID-19”. Việc cung cấp oxy được đặc biệt nhắc đến trong phần “Liệu pháp oxy qua ống thông mũi và mặt nạ”. Vấn đề điều trị được đề cập trong học phần “Quản lý điều trị bệnh nhân COVID-19 nhẹ và vừa”, “Quản lý điều trị bệnh nhân COVID-19 nặng” và “Đồng nhiễm và cách sử dụng thuốc kháng vi sinh vật trong COVID-19”. Xin lưu ý rằng có một khóa học riêng bao gồm phần Điều trị và Dự phòng COVID-19, bổ sung cho khoá học này.', N'Chuỗi khoá học về Quản lý lâm sàng bệnh nhân COVID-19 được xây dựng dành cho các nhân viên y tế trong bối cảnh đại dịch COVID-19. Khoá học cung cấp những kiến thức quan trọng cần thiết để chăm sóc bệnh nhân an toàn, hiệu quả. Các bài trình bày đề cập đến tất cả các khía cạnh của quản lý lâm sàng, bao gồm chuẩn bị cơ sở vật chất và lập kế hoạch trong các tình huống quá tải; nhân viên phòng, chống nhiễm khuẩn; luân khoa; xử trí lâm sàng bệnh nhân COVID-19 nhẹ, trung bình và nặng; những lưu ý đặc biệt đối với bệnh nhân lão khoa, phụ nữ mang thai và trẻ em với COVID-19; phục hồi chức năng; và đạo đức và chăm sóc giảm nhẹ. Chuỗi khóa học này sử dụng các bài giảng dưới dạng video và các bài thuyết trình đã được cập nhật và có thể tải xuống. Mỗi học phần gồm 5-8 bài giảng và mỗi bài giảng bao gồm một bộ câu hỏi để đánh giá việc tiếp thu kiến thức', CAST(N'2022-02-21' AS Date), 5, 2, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (12, N'course9.png', N'Hướng dẫn xây dựng kế hoạch quốc gia về triển khai và tiêm chủng (NDVP) vắc xin COVID-19', N'Nhóm công tác Sẵn sàng và triển khai quốc gia (CRD) của Chương trình hợp tác Tăng tốc tiếp cận các công cụ ứng phó với COVID-19 (ACT) đã phát hành Hướng dẫn xây dựng Kế hoạch quốc gia về triển khai và tiêm chủng (NDVP) vắc xin COVID-19. Khóa học này nhằm hỗ trợ các đầu mối quốc gia và địa phương tại các quốc gia xây dựng Kế hoạch quốc gia về triển khai và tiêm chủng vắc xin COVID-19 và chuẩn bị phổ biến sử dụng vắc xin COVID-19.', N'Khóa học này có mục đích hỗ trợ các đầu mối quốc gia và địa phương trong việc chuẩn bị cho tiêm chủng COVID-19. Khóa học này đưa ra nội dung tổng quan gồm các khía cạnh chính của Hướng dẫn xây dựng Kế hoạch quốc gia về triển khai và tiêm chủng vắc xin COVID-19 và nêu rõ các nguồn lực sẵn có và sắp có phục vụ cho việc phổ biến sử dụng vắc xin COVID-19.

Khóa học này sẽ bao gồm các nội dung sau: chuẩn bị sẵn sàng về quản lý nhà nước, lập kế hoạch và điều phối, dự toán chi phí và kinh phí, xác định các quần thể đích, các chiến lược thực hiện tiêm chủng, chuẩn bị chuỗi cung ứng và quản lý chất thải y tế, quản lý và đào tạo nguồn nhân lực, chấp nhận và khả năng tiêu thụ (nhu cầu) vắc xin, theo dõi an toàn vắc xin, quản lý sự cố sau tiêm chủng (AEFI) và tiêm an toàn, và các hệ thống theo dõi tiêm chủng. Khóa học sẽ được cập nhật ngay khi có thêm thông tin.', CAST(N'2022-02-21' AS Date), 6, 3, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (13, N'course10.png', N'Tập huấn cho nhân viên y tế về tiêm vắc xin phòng COVID-19
', N'Tất cả các cán bộ y tế tham gia thực hiện tiêm chủng COVID-19 cần có đủ kiến thức và kỹ năng để đảm bảo tiêm vắc xin COVID-19 an toàn và hiệu quả. Khóa tập huấn cho nhân viên y tế về tiêm vắc xin phòng COVID-19 được xây dựng cho các cán bộ y tế tuyến đầu tại các quốc gia. Khóa học được xây dựng trên cơ sở phối hợp với UNICEF, có 6 học phần, bao gồm các bài giảng bằng video, bảng câu hỏi đánh giá, công cụ hỗ trợ công việc, bài tập tương tác và các bài trình bày có thể tải xuống dựa trên các thông tin hiện có.', N'WHO hiện đang phối hợp với các nhà khoa học, các doanh nghiệp và các tổ chức y tế toàn cầu để đẩy nhanh hoạt động ứng phó với đại dịch và điều phối việc tiếp cận và phân phối công bằng vắc xin phòng COVID-19. Khóa học này cung cấp thông tin chung về COVID-19 và thông tin cụ thể về công tác bảo quản, vận chuyển và tiêm vắc xin, việc ghi chép và theo dõi bao gồm cả các sự cố sau tiêm chủng (AEFI), và truyền thông (sự chấp nhận và nhu cầu) thông qua một loạt các bài giảng bằng video ngắn và bộ câu hỏi kiểm tra kiến thức của học viên. Khóa học này chủ yếu dành cho cán bộ y tế tuyến đầu, những người sẽ trở thành nhân viên tiêm chủng và cũng là đối tượng được tiêm đầu tiên.', CAST(N'2022-02-21' AS Date), 7, 1, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (14, N'course10.png', N'Các virus đường hô hấp mới nổi, bao gồm COVID-19: các phương pháp phát hiện, phòng ngừa, đáp ứng và kiểm soát', N'Các coronavirus là một họ virus lớn đã được biết là nguyên nhân gây ra các tình trạng bệnh từ cảm lạnh thông thường cho tới các bệnh cảnh nặng như Hội chứng Hô hấp Trung đông (MERS) và Hội chứng Hô hấp Cấp tính Nặng (SARS).

Một coronavirus (COVID-19) đã được xác định năm 2019 tại Vũ Hán, Trung Quốc. Coronavirus mới này trước đây chưa từng được phát hiện ở người.

Khóa học này giới thiệu tổng quan về COVID-19 và các virus đường hô hấp mới nổi và nhằm cung cấp thông tin cho những người làm công tác y tế công cộng, các nhà quản lý sự cố y tế, các nhân viên làm việc cho Liên hợp quốc, các tổ chức quốc tế và các tổ chức phi chính phủ.', N'Khóa học này giới thiệu tổng quát về các virus đường hô hấp mới nổi, bao gồm coronavirus mới. Kết thúc khóa học, bạn có khả năng trình bày:

● Đặc tính của các virus đường hô hấp mới nổi, cách phát hiện và đánh giá một đợt bùng phát dịch, các chiến lược nhằm ngăn ngừa và kiểm soát các đợt dịch bùng phát do các virus đó;

● Các chiến lược nên áp dụng để tuyền thông về nguy cơ và lôi kéo sự tham gia của cộng đồng nhằm phát hiện, ngăn ngừa và đối phó với sự xuất hiện của một virus đường hô hấp mới.', CAST(N'2022-02-21' AS Date), 8, 2, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (15, N'course11.jpg', N'Phòng chống nhiễm khuẩn (IPC) đối với Virus COVID-19
', N'Khóa học này cung cấp thông tin về việc các cơ sở y tế cần chuẩn bị những gì để đáp ứng với một trường hợp nhiễm virus hô hấp mới nổi như là corona virus chủng mới, làm thế nào để xác định một ca bênh khi nó xảy ra, và làm thế nào để áp dụng các biện pháp IPC phù hợp để đảm bảo không có sự lây truyền sang nhân viên y tế, sang bệnh nhân khác và những người khác trong cơ sở y tế.

Khóa đào tạo này hướng tới các nhân viên y tế và các nhân viên y tế cộng đồng, vì nó tập trung vào phòng chống nhiễm khuẩn.', N'Khóa học này bao gồm các biện pháp phòng chống nhiễm khuẩn (IPC) cần có để:

Chuẩn bị và sẵn sàng đáp ứng với một vụ dịch, cụ thể là vụ dịch do COVID-19.
Hạn chế lây truyền từ người sang người bằng cách áp dụng các can thiệp IPC được khuyến cáo bởi WHO.
Phát hiện, cách ly và báo cáo các ca bệnh nghi ngờ và xác định.', CAST(N'2022-02-21' AS Date), 9, 3, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (16, N'course11.jpg', N'Bảo vệ bản thân khỏi viêm đường hô hấp
', N'Tất cả nhân viên tham gia chống dịch Viêm Đường hô hấp Cấp (ARI) cần phải có những kiến thức và kỹ năng cơ bản để đối phó với dịch bệnh hiệu quả. Họ cần phải hiểu ARI là gì, bệnh lây truyền như thế nào, cách đánh giá nguy cơ lây nhiễm và nắm được các biện pháp vệ sinh cơ bản để tự bảo vệ bản thân. Khóa học này gồm 4 học phần trong đó có cả video và các bài trình bày có thể tải xuống được.', N'Khóa học này cung cấp các thông tin chung về ARI và các biện pháp vệ sinh cơ bản để bảo vệ chống lây nhiễm. Đến cuối khóa học bạn có thể mô tả được những kiến thức chung về ARI, bao gồm khái niệm về bệnh, cách lây truyền của bệnh, các đánh giá nguy cơ lây nhiễm và liệt kê các biện pháp vệ sinh cơ bản để phòng chống lây nhiễm. Sẽ có một bộ câu hỏi đánh giá ở cuối khóa học.', CAST(N'2022-02-21' AS Date), 10, 1, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (17, N'course12.png', N'Thiết kế các cơ sở điều trị nhiễm trùng hô hấp nặng (SARI)
', N'Các khu vực sàng lọc, các trung tâm điều trị và các cơ sở cộng đồng là những phần ưu tiên về chiến lược trong việc chuẩn bị, sẵn sàng và đối phó với dịch nhiễm trùng hô hấp cấp nặng (SARI). Bộ tài liệu đào tạo Các cơ sở SARI này được xây dựng để đáp ứng nhu cầu điều hành mới xuất hiện do đại dịch COVID-19. Tài liệu cung cấp một hiểu biết sâu rộng về các nguyên tắc trong việc thiết kế các khu vực sàng lọc COVID-19 trong các cơ sở y tế, các cơ sở cộng đồng và các trung tâm điều trị SARI, bao gồm cả cách thay đổi mục đích sử dụng một tòa nhà có sẵn thành một trung tâm điều trị SARI.', N'Bệnh do corona virus (COVID-19) là một bệnh truyền nhiễm gây ra bởi một chủng virus corona mới được phát hiện. Khóa học này cung cấp các nguyên tắc, các yêu cầu tối thiểu và đặc điểm kỹ thuật để thiết kế và xây dựng các cơ sở điều trị SARI qua các bài giảng và bài trình bày kỹ thuật ngắn gọn. Đối tượng của khóa học là dành cho những người liên quan đến việc chuẩn bị và đáp ứng với dịch, bao gồm các nhà quản lý và lập kế hoạch y tế, kiến trúc sư, kỹ sư, hậu cần, nhân viên phụ trách nước và chất thải, nhân viên lâm sàng và điều dưỡng, người chăm sóc và các nhân viên cung cấp dịch vụ y tế khác.', CAST(N'2022-02-21' AS Date), 11, 2, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (18, N'course13.png', N'Đào tạo lâm sàng nhiễm trùng hô hấp cấp nặng
', N'Chào mừng đến với khóa học đào tạo lâm sàng nhiễm trùng hô hấp cấp nặng (SARI).', N'Khóa học ngắn về Đào tạo lâm sàng nhiễm trùng hô hấp cấp nặng (SARI) của WHO bao gồm các nội dung về xử trí lâm sàng bệnh nhân có nhiễm trùng hô hấp cấp nặng.

Khó học này được dành cho các bác sĩ lâm sàng là người đang làm việc tại các đơn vị hồi sức tích cực (ICU) ở các nước thu nhập thấp đến trung bình và xử trí bệnh nhân người lớn và trẻ em có các dạng nặng của nhiễm trùng hô hấp cấp (SARI), bao gồm viêm phổi nặng, họi chứng nguy ngập hô hấp cấp (ARDS). Sepsis và sốc nhiễm trùng. Đây là một hướng dẫn thực hành cầm taycho nhân viên y tế liên quan tới chăm sóc tích cực trong vụ dịch cúm (cúm mùa), cúm gia cầm ở người (H5N1, H7N9, MERS-CoV, COVID-19 hoặc các dịch virus hô hấp mới nổi khác.', CAST(N'2022-02-21' AS Date), 12, 3, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (19, N'course13.png', N'Quản lý và tạo điều kiện cho đánh giá nội bộ về COVID-19 (IAR)', N'Khi đại dịch COVID-19 ngày càng kéo dài, WHO đã phát triển Hướng dẫn thực hiện Đánh giá nội bộ quốc gia về COVID-19 (IAR) và mười công cụ kèm theo để các quốc gia tiến hành đánh giá định kỳ phản ứng của họ trong trường hợp khẩn cấp về sức khỏe cộng đồng được quốc tế quan tâm này. (PHEIC). IAR quốc gia COVID-19 là một quy trình được hỗ trợ bởi quốc gia cho phép các bên liên quan của phản ứng COVID-19 đang diễn ra đánh giá năng lực chức năng của các hệ thống ứng phó khẩn cấp và y tế công cộng ở cấp quốc gia hoặc địa phương để xác định các thực hành tốt nhất, khoảng trống và bài học kinh nghiệm , và đề xuất các biện pháp và hành động khắc phục để khắc phục ngay lập tức hoặc cải thiện bền vững phản ứng bùng phát COVID-19. Khóa học bao gồm bốn học phần, các câu đố sau mỗi học phần và đánh giá cuối cùng.', N'Đánh giá nội bộ quốc gia COVID-19 (IAR) là một quá trình được tạo điều kiện để tập hợp những người phản hồi COVID-19 từ nhiều lĩnh vực để chia sẻ kinh nghiệm và học hỏi tập thể, và nó đã được mô phỏng theo phương pháp Đánh giá hành động sau của WHO (AAR). Khóa học này cung cấp giới thiệu chung về việc quản lý và tạo điều kiện cho IAR trong đại dịch COVID-19 đang diễn ra thông qua các bài thuyết trình, câu đố và đánh giá vào cuối khóa học để kiểm tra kiến thức thu được. Nó nhắm mục tiêu đến bất kỳ cá nhân hoặc tổ chức nào liên quan đến việc chuẩn bị và ứng phó với sự bùng phát COVID-19 ở cấp quốc gia hoặc địa phương, bao gồm nhưng không giới hạn ở các quan chức Chính phủ, nhân viên WHO, chuyên gia y tế công cộng, cộng đồng và đối tác.', CAST(N'2022-02-21' AS Date), 13, 1, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (20, N'course14.png', N'Tập huấn Đánh giá Rủi ro Tập hợp Hàng loạt của WHO COVID-19', N'Mục đích của khóa học này là cung cấp hướng dẫn cho các cơ quan y tế và những người tổ chức các cuộc tụ tập đông người trong bối cảnh đại dịch COVID-19, với mục đích cụ thể là ngăn chặn các nguy cơ liên quan đến việc lây truyền bệnh nhiễm trùng này.', N'Khóa đào tạo mô tả cách tiếp cận dựa trên rủi ro mà WHO khuyến nghị để hỗ trợ các cơ quan y tế và các nhà tổ chức sự kiện trong việc lập kế hoạch cho các cuộc tụ tập đông người sắp tới trong bối cảnh đại dịch COVID-19 hiện nay. WHO đã phát triển một bộ công cụ đánh giá rủi ro COVID-19 dành riêng cho các cuộc tụ tập đông người nói chung cũng như cho các cuộc tụ họp quần chúng cụ thể về thể thao và tôn giáo. Các công cụ đánh giá rủi ro này cung cấp một cách thức thân thiện với người dùng để các cơ quan y tế và các nhà tổ chức hiểu được mức độ rủi ro mà một cuộc tụ tập đông người sắp tới có thể gây ra sự lan rộng hơn nữa COVID-19, cả trong một quốc gia và toàn cầu, đồng thời tìm hiểu về các biện pháp phòng ngừa có thể được áp dụng cho sự kiện đã lên kế hoạch để giảm thiểu rủi ro đó. Tất cả các công cụ được đề cập có thể được tìm thấy trên trang web của WHO. Khóa học đã được phát triển với sự hợp tác của Trung tâm Johns Hopkins về An ninh Y tế, Trung tâm Hợp tác của WHO về An ninh Y tế Toàn cầu.', CAST(N'2022-02-21' AS Date), 14, 2, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (21, N'course1.png', N'COVID-19 Truy tìm Liên hệ Đối với Chuyên gia Điều dưỡng', N'Hoạt động phát triển chuyên môn liên tục của điều dưỡng này đã được phê duyệt bởi Hiệp hội Y tá Texas, một tổ chức phê duyệt được công nhận bởi Ủy ban Công nhận của Trung tâm Chứng nhận Y tá Hoa Kỳ.

Covid-19 Liên hệ Theo dõi Đối với Chuyên gia Điều dưỡng được tạo ra cho bất kỳ ai muốn có chứng chỉ về Truy tìm Liên hệ và đặc biệt dành cho RN, những người muốn nhận được 10 tín chỉ CEU từ Hiệp hội Y tá Texas.', N'Ảnh hưởng của đại dịch COVID-19 hiện tại đã ảnh hưởng không tương xứng đến một số nhóm dân cư. Khóa học này cung cấp một cái nhìn tổng quan về tác động sâu rộng của COVID-19 và trình bày việc theo dõi tiếp xúc như một công cụ để giảm thiểu sự lây lan của căn bệnh này cho các y tá ở Texas. Máy theo dõi liên lạc rất cần thiết để giúp các sở y tế của tiểu bang và địa phương, đặc biệt là ở các tiểu bang lớn và đa dạng như Texas.', CAST(N'2022-02-21' AS Date), 15, 3, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (22, N'course2.png', N'Phát hiện COVID-19 bằng Chụp X-Quang Ngực bằng PyTorch', N'Trước khi thực hiện dự án này, bạn nên làm quen với lập trình bằng Python. Bạn cũng nên có hiểu biết lý thuyết về Mạng nơ ron phù hợp và các kỹ thuật tối ưu hóa chẳng hạn như gradient descent. Đây là một dự án thực tế, tập trung chủ yếu vào việc triển khai, chứ không phải lý thuyết đằng sau Mạng thần kinh phù hợp.', N'Trong dự án có hướng dẫn dài 2 giờ này, chúng tôi sẽ sử dụng mô hình ResNet-18 và đào tạo nó trên tập dữ liệu Chụp X quang COVID-19. Bộ dữ liệu này có gần 3000 lần quét X-quang Ngực được phân loại theo ba loại - Bình thường, Viêm phổi do vi rút và COVID-19. Mục tiêu của chúng tôi trong dự án này là tạo ra một mô hình phân loại hình ảnh có thể dự đoán quét X-quang Ngực thuộc một trong ba lớp với độ chính xác cao hợp lý. Xin lưu ý rằng tập dữ liệu này và mô hình mà chúng tôi đào tạo trong dự án không thể được sử dụng để chẩn đoán COVID-19 hoặc Viêm phổi do vi rút. Chúng tôi chỉ sử dụng dữ liệu này cho mục đích giáo dục.', CAST(N'2022-02-21' AS Date), 16, 1, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (23, N'course3.png', N'Phân tích tình cảm trên Tweet COVID-19 sử dụng python', N'Vào cuối dự án này, bạn sẽ học cách xử lý trước dữ liệu văn bản của mình để phân tích tình cảm.
Vì vậy, trong dự án này, chúng tôi sẽ sử dụng Tập dữ liệu bao gồm dữ liệu liên quan đến các tweet từ ngày 24 tháng 7 năm 2020 đến ngày 30 tháng 8 năm 2020 với thẻ bắt đầu bằng # COVID19. Chúng tôi sẽ sử dụng python để áp dụng phân tích tình cảm trên các tweet để xem phản ứng của mọi người đối với đại dịch trong thời gian được đề cập. Chúng tôi sẽ gắn nhãn các tweet là Tích cực, Tiêu cực và Trung lập. Sau đó, chúng tôi sẽ hình dung kết quả để xem phản ứng của mọi người trên Twitter.', N'Vào cuối dự án này, bạn sẽ học cách xử lý trước dữ liệu văn bản của mình để phân tích tình cảm.
Vì vậy, trong dự án này, chúng tôi sẽ sử dụng Tập dữ liệu bao gồm dữ liệu liên quan đến các tweet từ ngày 24 tháng 7 năm 2020 đến ngày 30 tháng 8 năm 2020 với thẻ bắt đầu bằng # COVID19. Chúng tôi sẽ sử dụng python để áp dụng phân tích tình cảm trên các tweet để xem phản ứng của mọi người đối với đại dịch trong thời gian được đề cập. Chúng tôi sẽ gắn nhãn các tweet là Tích cực, Tiêu cực và Trung lập. Sau đó, chúng tôi sẽ hình dung kết quả để xem phản ứng của mọi người trên Twitter.', CAST(N'2022-02-21' AS Date), 17, 2, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (24, N'course4.jpg', N'Chiến đấu với COVID-19 với Dịch tễ học: Một sự dạy dỗ của Johns Hopkins', N'Chương trình Teach-Out miễn phí này dành cho những ai tò mò về cách chúng tôi xác định và đo lường các đợt bùng phát như dịch COVID-19 và muốn hiểu dịch tễ học của những bệnh nhiễm trùng này.', N'Ngoài hiểu biết cơ bản về những công cụ thiết yếu này, Teach-Out này còn cung cấp một cách để bạn học hỏi và kết nối với nhau trong khi tiếp tục thực hành các biện pháp tránh xa xã hội sẽ giúp giữ chúng ta an toàn. Chúng tôi cũng hy vọng cung cấp cho bạn một số lời kêu gọi hành động hữu hình sẽ giúp bạn tác động đến sự thay đổi tích cực cho bản thân, cộng đồng của bạn và xã hội của chúng ta.', CAST(N'2022-02-21' AS Date), 18, 3, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (25, N'course5.jpg', N'Các chiến lược dành cho cộng đồng nhà ở cao cấp trong COVID-19', N'SARS-CoV-2, loại vi rút gây ra COVID-19, có nguy cơ cao đối với các cộng đồng nhà ở cao cấp và những người sống và làm việc ở đó. Phản ứng COVID-19 chủ yếu tập trung vào các viện dưỡng lão, để lại các cộng đồng sống độc lập phục vụ người lớn tuổi ở Hoa Kỳ với hướng dẫn rời rạc về cách ứng phó với các thách thức COVID-19. Khóa học này cung cấp hướng dẫn toàn diện và các nguồn lực cho chủ sở hữu và người quản lý bất động sản, nhân viên cấp cao về nhà ở, điều phối viên và nhà cung cấp dịch vụ, lãnh đạo nhà ở cộng đồng và các bên liên quan cao cấp khác về nhà ở để xây dựng chiến lược ứng phó và chuẩn bị khẩn cấp liên quan đến COVID-19. Các bài giảng, phỏng vấn và bài tập của khóa học chủ yếu hướng đến các nhà cung cấp nhà ở cao cấp được liên bang trợ cấp, nhưng tài liệu này có liên quan đến tất cả các nhà cung cấp nhà ở cao cấp.', N'Người học sẽ được nghe từ các chuyên gia về các phương pháp hay nhất để ngăn chặn sự bùng phát COVID-19 và tăng cường sức khỏe. Các chủ đề được thảo luận bao gồm những thách thức đặc biệt đối với cộng đồng nhà ở cao cấp, phát triển các kế hoạch sẵn sàng ứng phó với trường hợp khẩn cấp, phòng chống dịch bệnh và các hoạt động nhà ở thích ứng với coronavirus. Khóa học cũng bao gồm các chiến lược để giao tiếp với các bên liên quan, thúc đẩy hành vi an toàn với đại dịch tại chỗ, và tận dụng các sở y tế và các nguồn lực của cơ quan khác, bao gồm tập hợp các nguồn lực để hướng dẫn tiêm chủng COVID-19. Người học được khuyến khích đồng thời phát triển và nâng cao các chính sách, thủ tục và thực hành của cộng đồng của họ.', CAST(N'2022-02-21' AS Date), 19, 1, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (26, N'course6.jpg', N'Lãnh đạo có cổ phần cao: Dẫn đầu trong thời kỳ khủng hoảng', N'Khóa học này được thiết kế để giúp các nhà lãnh đạo, giống như bạn, học cách điều hướng hiệu quả những thách thức do sự gián đoạn tổ chức đáng kể. Là một người tham gia khóa học này, bạn sẽ khám phá ra lý do tại sao sự hiểu biết về các quan điểm của các bên liên quan khác nhau có thể cung cấp thông tin và cải thiện đáng kể phản ứng của người lãnh đạo đối với các sự kiện đe dọa sự tồn tại của tổ chức. Khóa học này cũng là về sự hiểu biết và phát triển khả năng phục hồi của cá nhân và tổ chức — khả năng dự đoán các mối đe dọa tiềm ẩn; để đối phó hiệu quả với các sự kiện bất lợi khi chúng xảy ra; và để thích ứng với các điều kiện thay đổi, đảm bảo một con đường khả thi về phía trước cho chính bạn, nhóm của bạn và tổ chức của bạn. Những chủ đề này đặc biệt có liên quan sau đại dịch COVID-19 toàn cầu. Nhiều ví dụ trong khóa học sẽ tham khảo các bài học mà các nhà lãnh đạo trên khắp thế giới đã học được trong cuộc khủng hoảng chăm sóc sức khỏe sâu rộng này.', N'Trong tám học phần của khóa học, được phân bổ trong bốn tuần, những người tham gia sẽ khám phá các chủ đề như: Tại sao thế giới VUCA đang làm cho các cuộc khủng hoảng trở nên phổ biến hơn; Đặc điểm của các tổ chức có khả năng phục hồi và cách thức để tăng khả năng phục hồi; Các đề xuất giá trị của các bên liên quan và các đề xuất này bị đe dọa như thế nào trong một cuộc khủng hoảng; Tổ chức các khuôn khổ để ước tính các loại khủng hoảng mà một tổ chức có thể gặp phải; bản chất độc đáo và đầy thách thức của môi trường khủng hoảng; Các nguyên tắc cơ bản của việc lãnh đạo cuộc khủng hoảng; và Xây dựng một kế hoạch để chuẩn bị cho bản thân, nhóm của bạn và tổ chức của bạn cho cuộc khủng hoảng lớn tiếp theo — mà trong thế giới ngày nay, không phải là “nếu” mà là “khi nào”.', CAST(N'2022-02-21' AS Date), 20, 2, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (27, N'course7.jpg', N'Cuộc sống sau COVID-19: Sẵn sàng cho tương lai sau đại dịch của chúng ta', N'Đại dịch sẽ tạo ra những hiệu ứng gợn sóng lâu dài và đáng ngạc nhiên, ngay cả sau khi vắc xin được phổ biến rộng rãi. Bạn đã sẵn sàng cho những gì tiếp theo?

Khóa học này sẽ cung cấp cho bạn dự báo rõ ràng về những thách thức và cơ hội mà bạn có nhiều khả năng gặp phải trong 3-5 năm tới, do hậu quả trực tiếp của đại dịch COVID-19 đang diễn ra.', N'Bằng cách hoàn thành khóa học này, bạn sẽ hiểu rõ hơn về “cú sốc trong tương lai” mà tất cả chúng ta đã cùng nhau trải qua. Bạn sẽ có thể xác định 7 điều kiện tồn tại từ trước của xã hội đã làm cho đại dịch trở nên nghiêm trọng hơn và khó phục hồi hơn - từ bất bình đẳng kinh tế và bất công chủng tộc đến lòng tin mong manh của công chúng và tình trạng khẩn cấp về khí hậu. Sắp tới, bạn sẽ khám phá những giải pháp đáng ngạc nhiên và thú vị nhất đang được đề xuất để giúp cộng đồng của chúng tôi chữa lành khỏi những tình trạng tồn tại từ trước này.', CAST(N'2022-02-21' AS Date), 21, 3, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (28, N'course8.png', N'COVID-19 Truy tìm Liên hệ Đối với Chuyên gia Điều dưỡng', N'COVID-19 Truy tìm Liên hệ Đối với Chuyên gia Điều dưỡng', N'Ảnh hưởng của đại dịch COVID-19 hiện tại đã ảnh hưởng không tương xứng đến một số nhóm dân cư. Khóa học này cung cấp một cái nhìn tổng quan về tác động sâu rộng của COVID-19 và trình bày việc theo dõi tiếp xúc như một công cụ để giảm thiểu sự lây lan của căn bệnh này cho các y tá ở Texas. Máy theo dõi liên lạc rất cần thiết để giúp các sở y tế của tiểu bang và địa phương, đặc biệt là ở các tiểu bang lớn và đa dạng như Texas.', CAST(N'2022-02-21' AS Date), 22, 1, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (29, N'course9.png', N'Quản lý gián đoạn chuỗi cung ứng trong COVID-19', N'Trong khóa học này, bạn sẽ tìm hiểu về lý do và cách chuỗi cung ứng dễ bị gián đoạn. Chúng ta sẽ xem xét vấn đề này bằng cách thảo luận về các vấn đề bên cung và bên cầu, các dòng chảy của chuỗi cung ứng chính, sự phức tạp, quản lý rủi ro và sự kết hợp giữa các quan điểm lý thuyết vững chắc về chuỗi cung ứng và các câu chuyện thực tế hiện tại. Bạn sẽ tìm hiểu về các yếu tố cấu trúc, quan hệ và hoạt động phát sinh trong quá trình gián đoạn chuỗi cung ứng và các cơ chế để quản lý hiệu quả các yếu tố này. Sự hiểu biết của bạn sẽ được nâng cao thông qua các ví dụ từ bối cảnh sản xuất và sức khỏe, cũng như sự gián đoạn chuỗi cung ứng PPE trong COVID-19.', N'Trong khóa học này, bạn sẽ tìm hiểu về lý do và cách chuỗi cung ứng dễ bị gián đoạn. Chúng ta sẽ xem xét vấn đề này bằng cách thảo luận về các vấn đề bên cung và bên cầu, các dòng chảy của chuỗi cung ứng chính, sự phức tạp, quản lý rủi ro và sự kết hợp giữa các quan điểm lý thuyết vững chắc về chuỗi cung ứng và các câu chuyện thực tế hiện tại. Bạn sẽ tìm hiểu về các yếu tố cấu trúc, quan hệ và hoạt động phát sinh trong quá trình gián đoạn chuỗi cung ứng và các cơ chế để quản lý hiệu quả các yếu tố này. Sự hiểu biết của bạn sẽ được nâng cao thông qua các ví dụ từ bối cảnh sản xuất và sức khỏe, cũng như sự gián đoạn chuỗi cung ứng PPE trong COVID-19.', CAST(N'2022-02-21' AS Date), 23, 2, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (31, N'course10.png', N'Phân loại COVID19 bằng Hình ảnh X-quang Ngực ở Keras', N'Trong khóa học dựa trên dự án dài 1 giờ này, bạn sẽ học cách xây dựng và đào tạo một mạng nơ-ron phức hợp ở Keras với TensorFlow làm chương trình phụ trợ từ đầu để phân loại bệnh nhân là bị nhiễm COVID hoặc không sử dụng hình ảnh chụp X-quang ngực của họ. Mục tiêu của chúng tôi là tạo ra một bộ phân loại hình ảnh với Tensorflow bằng cách triển khai CNN để phân biệt giữa các hình ảnh chụp X-quang ngực có nhiễm trùng COVID 19 so với không. Bộ dữ liệu chứa hình ảnh X-quang phổi của cả hai nhóm. Chúng tôi sẽ thực hiện toàn bộ dự án trên môi trường Google Colab.', N'Khi kết thúc dự án này, bạn sẽ có thể xây dựng và đào tạo mạng nơ-ron phức hợp bằng cách sử dụng Keras với TensorFlow làm chương trình phụ trợ. Bạn cũng sẽ có thể thực hiện trực quan hóa dữ liệu. Ngoài ra, bạn cũng sẽ có thể sử dụng mô hình để đưa ra dự đoán về dữ liệu mới.', CAST(N'2022-02-21' AS Date), 4, 1, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (32, N'course11.jpg', N'Hacking COVID-19 - Khóa học 1: Xác định mầm bệnh chết người', N'Trong khóa học này, bạn sẽ theo chân các nhà thông tin sinh học điều tra sự bùng phát COVID-19 bằng cách lắp ráp bộ gen SARS-CoV-2. Cho dù bạn là người mới làm quen với thế giới sinh học tính toán hay bạn là một chuyên gia tin sinh học đang muốn tìm hiểu về các ứng dụng của nó trong đại dịch COVID-19 hay ở đâu đó, khóa học này đều dành cho bạn! Khi bạn trải qua hành trình này, chúng tôi sẽ giới thiệu và giải thích các khái niệm về bộ gen và mang đến cho bạn nhiều cơ hội để thực hành các kỹ năng của mình, đồng thời chúng tôi sẽ cung cấp một loạt các vấn đề với độ phức tạp tăng dần. Khóa học đầu tiên này sẽ chỉ thảo luận về việc lắp ráp bộ gen SARS-CoV-2, nhưng các khóa học trong tương lai trong loạt bài này sẽ khám phá các phân tích tin sinh học tiếp theo được sử dụng trong đại dịch COVID-19.', N'Trong khóa học này, bạn sẽ theo chân các nhà thông tin sinh học điều tra sự bùng phát COVID-19 bằng cách lắp ráp bộ gen SARS-CoV-2. Cho dù bạn là người mới làm quen với thế giới sinh học tính toán hay bạn là một chuyên gia tin sinh học đang muốn tìm hiểu về các ứng dụng của nó trong đại dịch COVID-19 hay ở đâu đó, khóa học này đều dành cho bạn! Khi bạn trải qua hành trình này, chúng tôi sẽ giới thiệu và giải thích các khái niệm về bộ gen và mang đến cho bạn nhiều cơ hội để thực hành các kỹ năng của mình, đồng thời chúng tôi sẽ cung cấp một loạt các vấn đề với độ phức tạp tăng dần. Khóa học đầu tiên này sẽ chỉ thảo luận về việc lắp ráp bộ gen SARS-CoV-2, nhưng các khóa học trong tương lai trong loạt bài này sẽ khám phá các phân tích tin sinh học tiếp theo được sử dụng trong đại dịch COVID-19.', CAST(N'2022-02-21' AS Date), 5, 2, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (33, N'course12.png', N'Phục hồi sau COVID-19', N'COVID-19 (Bệnh do vi rút Corona 2019) đã dẫn đến một số lượng lớn các hậu quả về y tế, xã hội và tâm lý. Do tất cả các phân nhánh có hại bắt nguồn từ COVID-19, cần phải thực hiện các biện pháp can thiệp chăm sóc dựa trên bằng chứng. Phục hồi toàn diện sớm và liên tục nhằm mục tiêu phục hồi thể chất và tâm lý, cùng với hỗ trợ xã hội đầy đủ, có thể giúp phục hồi sau COVID-19 có được cuộc sống đầy đủ và ý nghĩa. Phục hồi chức năng sau COVID-19, bất kể hình thức cụ thể nào, nên lấy bệnh nhân làm trung tâm và tổ chức đa ngành.', N'Khóa học này bao gồm các khuyến nghị từ nhóm chuyên gia đa ngành về các biện pháp can thiệp dựa trên bằng chứng. Nó được thiết kế cho các chuyên gia chăm sóc sức khỏe, những người có thể có hiểu biết tương đối hạn chế về phục hồi chức năng - quy trình, các biện pháp can thiệp và tác động tích cực của nó. Nó cũng liên quan đến bệnh nhân và gia đình của họ. Vào cuối khóa học, bạn sẽ nhận được kiến ​​thức quan trọng cần thiết để cung cấp chất lượng phục hồi an toàn và hiệu quả sau COVID-19.', CAST(N'2022-02-21' AS Date), 6, 3, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (34, N'course13.png', N'So sánh dự đoán chuỗi thời gian về số ca tử vong do COVID-19', N'Trong khóa học dựa trên dự án dài 2 giờ này, bạn sẽ học cách xử lý trước dữ liệu chuỗi thời gian, trực quan hóa dữ liệu chuỗi thời gian và so sánh các dự đoán chuỗi thời gian của 4 mô hình học máy. Bạn sẽ tạo các mô hình phân tích chuỗi thời gian bằng ngôn ngữ lập trình python để dự đoán số người chết hàng ngày do SARS-CoV-19, hoặc COVID-19. Bạn sẽ tạo và đào tạo các mô hình sau: SARIMAX, Tiên tri, mạng thần kinh và XGBOOST. Bạn sẽ trực quan hóa dữ liệu bằng cách sử dụng thư viện matplotlib và trích xuất các tính năng từ tập dữ liệu chuỗi thời gian, thực hiện phân tách và chuẩn hóa dữ liệu.', N'Trong khóa học dựa trên dự án dài 2 giờ này, bạn sẽ học cách xử lý trước dữ liệu chuỗi thời gian, trực quan hóa dữ liệu chuỗi thời gian và so sánh các dự đoán chuỗi thời gian của 4 mô hình học máy. Bạn sẽ tạo các mô hình phân tích chuỗi thời gian bằng ngôn ngữ lập trình python để dự đoán số người chết hàng ngày do SARS-CoV-19, hoặc COVID-19. Bạn sẽ tạo và đào tạo các mô hình sau: SARIMAX, Tiên tri, mạng thần kinh và XGBOOST. Bạn sẽ trực quan hóa dữ liệu bằng cách sử dụng thư viện matplotlib và trích xuất các tính năng từ tập dữ liệu chuỗi thời gian, thực hiện phân tách và chuẩn hóa dữ liệu.', CAST(N'2022-02-21' AS Date), 7, 1, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (35, N'course14.png', N'Dự đoán suy thoái vắc xin COVID-19 mRNA', N'Trong khóa học dựa trên dự án dài 2 giờ này, bạn sẽ học cách dự đoán Tỷ lệ phân hủy vắc xin mRNA tại các vị trí khác nhau của phân tử. Mô hình của chúng tôi sẽ dự đoán tỷ lệ suy thoái có khả năng xảy ra ở mỗi cơ sở của phân tử RNA, điều này sẽ hữu ích để phát triển các mô hình và thiết kế các quy tắc cho sự phân hủy RNA.', N'Chúng ta sẽ xem xét cách xây dựng Mạng nơ-ron đơn vị định kỳ hai chiều có thể dự đoán sự xuống cấp cho nhiều tình huống tại mỗi cơ sở.
Chúng tôi sẽ trình bày cách đào tạo mô hình và đánh giá trên một tập hợp thử nghiệm. Sau đó, cuối cùng chúng tôi sẽ đưa ra dự đoán bằng cách sử dụng mô hình được đào tạo và so sánh nó với tỷ lệ suy thoái ban đầu.', CAST(N'2022-02-21' AS Date), 8, 2, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (36, N'course1.png', N'Phân tích dữ liệu không gian địa lý Covid-19 bằng Python', N'Phân tích dữ liệu không gian địa lý Covid-19 bằng Python
Trong dự án có hướng dẫn kéo dài một giờ này, bạn sẽ học cách xử lý dữ liệu không gian địa lý bằng Python. Chúng ta sẽ thực hiện các tác vụ xử lý địa lý khác nhau bao gồm cách tạo Khung dữ liệu địa lý từ các tệp CSV và thực hiện liên kết không gian.', N'Phân tích dữ liệu không gian địa lý Covid-19 bằng Python
Trong dự án có hướng dẫn kéo dài một giờ này, bạn sẽ học cách xử lý dữ liệu không gian địa lý bằng Python. Chúng ta sẽ thực hiện các tác vụ xử lý địa lý khác nhau bao gồm cách tạo Khung dữ liệu địa lý từ các tệp CSV và thực hiện liên kết không gian.', CAST(N'2022-02-21' AS Date), 9, 3, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (37, N'course2.png', N'Chương trình nghị sự COVID-19 có thể đo lường: phương pháp tiếp cận xã hội học', N'Xã hội hiện đại năng động và luôn thay đổi. Xu hướng phát triển ngày nay đã đẩy nhanh những thay đổi, ảnh hưởng đến cấu trúc xã hội. Họ cũng đã định hình lại hướng và logic của các cấu trúc xã hội khác nhau, những gì thường tiết lộ các đặc điểm của các cuộc xung đột và khủng hoảng trong tương lai. Khả năng phát hiện “tín hiệu yếu” của những thay đổi trong tương lai là một kỹ năng quan trọng của một chuyên gia hiện đại. Môi trường kỹ thuật số hình thành một loạt các công cụ, bao gồm cả những công cụ có giao diện đơn giản và một tập hợp các chức năng. Sự kết hợp của các công cụ này cho phép các nhà nghiên cứu và những người quan tâm đến việc tìm hiểu các đặc điểm của sự phát triển xã hội hiện đại có thể khám phá ra những sự thật thú vị và khám phá ra những mâu thuẫn không rõ ràng, hình thành giả thuyết và chủ đề để nghiên cứu sâu hơn.', N'Xã hội hiện đại năng động và luôn thay đổi. Xu hướng phát triển ngày nay đã đẩy nhanh những thay đổi, ảnh hưởng đến cấu trúc xã hội. Họ cũng đã định hình lại hướng và logic của các cấu trúc xã hội khác nhau, những gì thường tiết lộ các đặc điểm của các cuộc xung đột và khủng hoảng trong tương lai. Khả năng phát hiện “tín hiệu yếu” của những thay đổi trong tương lai là một kỹ năng quan trọng của một chuyên gia hiện đại. Môi trường kỹ thuật số hình thành một loạt các công cụ, bao gồm cả những công cụ có giao diện đơn giản và một tập hợp các chức năng. Sự kết hợp của các công cụ này cho phép các nhà nghiên cứu và những người quan tâm đến việc tìm hiểu các đặc điểm của sự phát triển xã hội hiện đại có thể khám phá ra những sự thật thú vị và khám phá ra những mâu thuẫn không rõ ràng, hình thành giả thuyết và chủ đề để nghiên cứu sâu hơn.', CAST(N'2022-02-21' AS Date), 10, 1, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (38, N'course3.png', N'Sử dụng dữ liệu Covid-19 để đưa ra quyết định hậu cần chuỗi cung ứng trong bảng tính', N'Khóa học Lập kế hoạch chuỗi cung ứng hướng dẫn người học qua bước đầu tiên quan trọng trong việc lập kế hoạch, Quản lý chuỗi cung ứng. Trong kịch bản dự án khóa học, công ty của bạn cung cấp Thiết bị Bảo vệ Cá nhân và máy thở cho các bệnh viện và phòng khám trên khắp Hoa Kỳ. Các giám đốc điều hành và quan chức y tế bang của công ty bạn đã yêu cầu bạn chuẩn bị một bản phân tích về Hoa Kỳ, theo tiểu bang và khu vực, xác định các vị trí có nhu cầu cao nhất về nguồn cung cấp và máy thở.', N'Đây được gọi là Kế hoạch Cung ứng. Trong suốt khóa học, bạn sẽ hướng dẫn xây dựng Kế hoạch Cung ứng. Bạn sẽ bắt đầu bằng cách trích xuất dữ liệu cần thiết, sau đó chuẩn bị dữ liệu cho Kế hoạch cung ứng. Sau đó, bạn sẽ tạo một PivotTable để phân tích dữ liệu. Từ đây, bạn sẽ học cách tạo một tập hợp các hình ảnh trực quan và sau đó thêm các hình ảnh trực quan này vào bản trình bày để bạn có thể báo cáo về những phát hiện của mình.', CAST(N'2022-02-21' AS Date), 11, 2, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (39, N'course4.jpg', N'Mô phỏng quy trình kiểm tra Covid-19 bằng R Simmer', N'Chào mừng bạn đến với "Mô phỏng quy trình kiểm tra Covid-19 bằng R Simmer". Đây là một khóa học dựa trên dự án sẽ mất dưới 2 giờ để kết thúc. Trước khi đi sâu vào dự án, vui lòng xem qua các mục tiêu và cấu trúc của khóa học.', N'Vào cuối dự án này, bạn sẽ học được kiến thức cơ bản về Mô phỏng sự kiện rời rạc, sử dụng thư viện R Studio và Simmer, tạo các biến thống kê cần thiết cho mô phỏng, xác định quỹ đạo quy trình, xác định và chỉ định tài nguyên, xác định khách đến (ví dụ: khách hàng / công việc đến đơn vị), chạy mô phỏng trong R, lưu trữ kết quả trong khung dữ liệu, vẽ biểu đồ và diễn giải kết quả.', CAST(N'2022-02-21' AS Date), 12, 3, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (40, N'course5.jpg', N'Các vấn đề Khoa học: Hãy nói về COVID-19', N'Sự bùng phát của Bệnh Coronavirus Mới (COVID-19) là trường hợp khẩn cấp về sức khỏe cộng đồng quan trọng nhất của thế kỷ 21 cho đến nay. Khi dịch bệnh lan rộng, mọi người trên khắp thế giới muốn hiểu khoa học đằng sau những câu hỏi cấp bách nhất: bao nhiêu người đã bị nhiễm bệnh? Virus nguy hiểm như thế nào? Khi nào sẽ có vắc xin? Làm thế nào để có thể ngăn chặn dịch bệnh và các thiệt hại được giảm thiểu? Tác động kinh tế là gì? Vai trò của phương tiện truyền thông xã hội và cộng đồng địa phương trong ứng phó với dịch bệnh là gì?', N'Các nhà nghiên cứu tại Viện Jameel và các viện nghiên cứu khác tại Đại học Hoàng gia London đã đi đầu trong việc ứng phó với trường hợp khẩn cấp COVID-19, với các phân tích lâm sàng, dịch tễ học và khoa học xã hội thông báo về phản ứng bùng phát. Họ đang tạo ra bằng chứng thực nghiệm mạnh mẽ mà các chính phủ và các cơ quan quốc tế đang sử dụng trên khắp thế giới để lập kế hoạch phản ứng của họ.', CAST(N'2022-02-21' AS Date), 13, 1, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (41, N'course6.jpg', N'Loạt bài giảng Phòng ngừa và Kiểm soát COVID-19', N'Vào tháng 12 năm 2019, một nhóm bệnh nhân bị viêm phổi không rõ nguyên nhân đã xuất hiện ở Vũ Hán, Hồ Bắc. Chính quyền các cấp và Sở Y tế đánh giá cao và nhanh chóng tổ chức các trung tâm Kiểm soát và Phòng ngừa Dịch bệnh (CDC), các tổ chức y tế và các viện nghiên cứu khoa học để tiến hành khảo sát, cứu hộ và hợp tác nghiên cứu. Kháng nguyên mới này nhanh chóng được xác định là một loại coronavirus mới, được Tổ chức Y tế Thế giới (WHO) đặt tên là 2019-nCoV.', N'Trong khi đó, bệnh viêm phổi do nó gây ra được đặt tên là viêm phổi do coronavirus mới. Thực hiện các quyết định của Ủy ban Trung ương CPC và Hội đồng Nhà nước với nòng cốt là ông Tập, cả nước đã hành động toàn diện trong công tác vận động và triển khai xã hội, lấy công tác kiểm soát dịch bệnh trước mắt là công việc quan trọng nhất. Sự lây lan của dịch đã được kiểm soát hiệu quả. Tuy nhiên, sau đó, coronavirus mới đã lây lan ra toàn thế giới, vì vậy nó kêu gọi sự hợp tác quốc tế chặt chẽ hơn trong việc phòng chống dịch. Dựa trên tình hình đó, cần khẩn trương thiết lập một chương trình MOOC mới về COVID-19 và truyền đạt kiến ​​thức khoa học về căn bệnh này cho sinh viên nước ngoài, sinh viên đại học và tất cả những người dân thường khác ở nước ngoài, đặt nền tảng vững chắc cho chiến thắng của cuộc chiến. chống lại COVID-19.', CAST(N'2022-02-21' AS Date), 14, 2, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (42, N'course7.jpg', N'Hacking COVID-19 - Khóa học 3: Làm sáng tỏ nguồn gốc của COVID-19', N'Trong khóa học này, bạn sẽ theo chân các nhà thông tin sinh học điều tra sự bùng phát COVID-19 bằng cách điều tra nguồn gốc của SARS-CoV-2. Cho dù bạn là người mới làm quen với thế giới sinh học tính toán hay bạn là một chuyên gia tin sinh học đang muốn tìm hiểu về các ứng dụng của nó trong đại dịch COVID-19 hay ở đâu đó, khóa học này đều dành cho bạn! Khi bạn trải qua hành trình này, chúng tôi sẽ giới thiệu và giải thích các khái niệm về bộ gen và mang đến cho bạn nhiều cơ hội để thực hành các kỹ năng của mình, đồng thời chúng tôi sẽ cung cấp một loạt các vấn đề với độ phức tạp tăng dần. Khóa học thứ ba này sẽ chỉ thảo luận về sự liên kết nhiều trình tự và suy luận phát sinh loài khả năng tối đa của bộ gen SARS-CoV-2, nhưng các khóa học trong tương lai trong loạt bài này sẽ khám phá các phân tích tin sinh học tiếp theo được sử dụng trong đại dịch COVID-19.', N'Trong khóa học này, bạn sẽ theo chân các nhà thông tin sinh học điều tra sự bùng phát COVID-19 bằng cách điều tra nguồn gốc của SARS-CoV-2. Cho dù bạn là người mới làm quen với thế giới sinh học tính toán hay bạn là một chuyên gia tin sinh học đang muốn tìm hiểu về các ứng dụng của nó trong đại dịch COVID-19 hay ở đâu đó, khóa học này đều dành cho bạn! Khi bạn trải qua hành trình này, chúng tôi sẽ giới thiệu và giải thích các khái niệm về bộ gen và mang đến cho bạn nhiều cơ hội để thực hành các kỹ năng của mình, đồng thời chúng tôi sẽ cung cấp một loạt các vấn đề với độ phức tạp tăng dần. Khóa học thứ ba này sẽ chỉ thảo luận về sự liên kết nhiều trình tự và suy luận phát sinh loài khả năng tối đa của bộ gen SARS-CoV-2, nhưng các khóa học trong tương lai trong loạt bài này sẽ khám phá các phân tích tin sinh học tiếp theo được sử dụng trong đại dịch COVID-19.', CAST(N'2022-02-21' AS Date), 15, 3, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (43, N'course8.png', N'Dự báo trường hợp Covid-19 bằng Fbprophet', N'Các mô hình dự đoán cố gắng dự báo giá trị tương lai dựa trên dữ liệu lịch sử. Trong dự án thực hành này, chúng tôi sẽ phân tích sự lây truyền của vi-rút Covid-19 trên toàn cầu và đào tạo mô hình chuỗi thời gian (fbprophet) để có được dự báo về các trường hợp liên quan đến vi-rút corona ở Hoa Kỳ.', N'Các mô hình dự đoán cố gắng dự báo giá trị tương lai dựa trên dữ liệu lịch sử. Trong dự án thực hành này, chúng tôi sẽ phân tích sự lây truyền của vi-rút Covid-19 trên toàn cầu và đào tạo mô hình chuỗi thời gian (fbprophet) để có được dự báo về các trường hợp liên quan đến vi-rút corona ở Hoa Kỳ.', CAST(N'2022-02-21' AS Date), 16, 1, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (44, N'course9.png', N'Phân tích và hình dung y tế về cái chết của Covid-19 bằng cách sử dụng Plotly', N'Trong khóa học dựa trên dự án dài 2 giờ này, bạn sẽ học cách xây dựng biểu đồ thanh, biểu đồ phân tán, bản đồ Choropleth và Wordcloud để phân tích và hình dung kịch bản toàn cầu của Covid-19 và thực hiện phân tích y tế đối với các điều kiện khác nhau góp phần gây tử vong do đến Covid-19. Chúng tôi sẽ sử dụng hai bộ dữ liệu riêng biệt cho dự án có hướng dẫn này. Bộ dữ liệu đầu tiên đã được lấy từ worldometer và bộ thứ hai đã được cung cấp bởi Trung tâm Kiểm soát và Phòng ngừa Dịch bệnh (CDC), Hoa Kỳ.', N'Trong khóa học dựa trên dự án dài 2 giờ này, bạn sẽ học cách xây dựng biểu đồ thanh, biểu đồ phân tán, bản đồ Choropleth và Wordcloud để phân tích và hình dung kịch bản toàn cầu của Covid-19 và thực hiện phân tích y tế đối với các điều kiện khác nhau góp phần gây tử vong do đến Covid-19. Chúng tôi sẽ sử dụng hai bộ dữ liệu riêng biệt cho dự án có hướng dẫn này. Bộ dữ liệu đầu tiên đã được lấy từ worldometer và bộ thứ hai đã được cung cấp bởi Trung tâm Kiểm soát và Phòng ngừa Dịch bệnh (CDC), Hoa Kỳ.', CAST(N'2022-02-21' AS Date), 17, 2, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (45, N'course10.png', N'Trình thông báo máy tính để bàn cá nhân bằng Python: Thông báo Covid-19', N'Khi kết thúc dự án này, bạn sẽ tạo các thông báo trên Màn hình được cá nhân hóa bằng cách sử dụng python. Bạn sẽ có thể sử dụng hiệu quả các thư viện python khác nhau để tìm nạp dữ liệu từ internet, xử lý dữ liệu và hiển thị dữ liệu dưới dạng thông báo. Trong dự án này, chúng tôi sẽ thông báo tin tức về Covid-19 để giúp luôn được cập nhật về tình hình hiện tại.', N'Ngôn ngữ Python là một trong những ngôn ngữ lập trình dễ tiếp cận nhất vì cú pháp đơn giản hóa của nó, nhấn mạnh vào ngôn ngữ tự nhiên. Nó được sử dụng nhiều trong các ứng dụng máy học và khoa học dữ liệu, là một trong những xu hướng lớn nhất của khoa học máy tính hiện nay. Nó cũng được hỗ trợ bởi nhiều tập đoàn như Facebook và Amazon. Nó được Google điều chỉnh đặc biệt khiến nó trở thành lựa chọn số một của nhiều lập trình viên và kỹ sư.', CAST(N'2022-02-21' AS Date), 18, 3, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (46, N'course11.jpg', N'Phân tích dữ liệu COVID19 bằng Python', N'Trong dự án này, bạn sẽ học cách xử lý trước và hợp nhất các tập dữ liệu để tính toán các biện pháp cần thiết và chuẩn bị cho một Phân tích. Trong dự án này, chúng tôi sẽ làm việc với tập dữ liệu COVID19, được xuất bản bởi Đại học John Hopkins, bao gồm dữ liệu liên quan đến số lượng tích lũy các trường hợp được xác nhận, mỗi ngày, ở mỗi Quốc gia. Ngoài ra, chúng tôi có một tập dữ liệu khác bao gồm các yếu tố cuộc sống khác nhau, được chấm điểm bởi những người sống ở mỗi quốc gia trên toàn cầu. Chúng tôi sẽ hợp nhất hai bộ dữ liệu này để xem liệu có mối quan hệ nào giữa sự lây lan của vi-rút trong một quốc gia và mức độ hạnh phúc của người dân khi sống ở quốc gia đó hay không.', N'Trong dự án này, bạn sẽ học cách xử lý trước và hợp nhất các tập dữ liệu để tính toán các biện pháp cần thiết và chuẩn bị cho một Phân tích. Trong dự án này, chúng tôi sẽ làm việc với tập dữ liệu COVID19, được xuất bản bởi Đại học John Hopkins, bao gồm dữ liệu liên quan đến số lượng tích lũy các trường hợp được xác nhận, mỗi ngày, ở mỗi Quốc gia. Ngoài ra, chúng tôi có một tập dữ liệu khác bao gồm các yếu tố cuộc sống khác nhau, được chấm điểm bởi những người sống ở mỗi quốc gia trên toàn cầu. Chúng tôi sẽ hợp nhất hai bộ dữ liệu này để xem liệu có mối quan hệ nào giữa sự lây lan của vi-rút trong một quốc gia và mức độ hạnh phúc của người dân khi sống ở quốc gia đó hay không.', CAST(N'2022-02-21' AS Date), 19, 1, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (47, N'course12.png', N'Trực quan hóa dữ liệu COVID19 bằng Python', N'Vào cuối dự án này, bạn sẽ học Cách bạn có thể sử dụng các kỹ thuật trực quan hóa dữ liệu để trả lời cho một số câu hỏi phân tích. trong dự án này, chúng tôi sẽ sử dụng tập dữ liệu COVID19 mà chúng tôi có bao gồm số lượng tích lũy liên quan đến dữ liệu của các trường hợp được xác nhận, phục hồi và tử vong. chúng ta sẽ chuẩn bị bộ dữ liệu này để trả lời những câu hỏi sau: Sự lây lan toàn cầu của vi rút trông như thế nào ?, Mức độ lây lan của vi rút ở các quốc gia mạnh đến mức nào? Việc khóa mạng quốc gia và tự cô lập của covid19 ở các quốc gia khác nhau có thực sự ảnh hưởng đến việc truyền COVID19 không? chúng tôi sẽ sử dụng mô-đun Plotly, là một công cụ trực quan hóa tuyệt vời trong python, để vẽ một số biểu đồ trực quan và sâu sắc để trả lời các câu hỏi.', N'Vào cuối dự án này, bạn sẽ học Cách bạn có thể sử dụng các kỹ thuật trực quan hóa dữ liệu để trả lời cho một số câu hỏi phân tích. trong dự án này, chúng tôi sẽ sử dụng tập dữ liệu COVID19 mà chúng tôi có bao gồm số lượng tích lũy liên quan đến dữ liệu của các trường hợp được xác nhận, phục hồi và tử vong. chúng ta sẽ chuẩn bị bộ dữ liệu này để trả lời những câu hỏi sau: Sự lây lan toàn cầu của vi rút trông như thế nào ?, Mức độ lây lan của vi rút ở các quốc gia mạnh đến mức nào? Việc khóa mạng quốc gia và tự cô lập của covid19 ở các quốc gia khác nhau có thực sự ảnh hưởng đến việc truyền COVID19 không? chúng tôi sẽ sử dụng mô-đun Plotly, là một công cụ trực quan hóa tuyệt vời trong python, để vẽ một số biểu đồ trực quan và sâu sắc để trả lời các câu hỏi.', CAST(N'2022-02-21' AS Date), 20, 2, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (48, N'course13.png', N'Sức khỏe dân số trong thời kỳ đại dịch: Truy tìm liên hệ và hơn thế nữa', N'Khóa học này được phát triển trong giai đoạn đầu của đại dịch COVID-19, và do đó, một số dữ liệu về tỷ lệ mắc bệnh, tỷ lệ tử vong và vắc xin đã thay đổi theo thời gian. Nội dung đề cập đến các vấn đề cụ thể đối với sức khỏe dân số và truy tìm địa chỉ liên lạc trong đại dịch, vẫn còn phù hợp.', N'Sức khỏe dân số trong thời kỳ đại dịch: Truy tìm liên hệ và hơn thế nữa
Trong suốt lịch sử, đại dịch đã tàn phá các quần thể và thay đổi quỹ đạo của nhân loại. Những tác động toàn cầu của đại dịch COVID-19 hiện tại đã ảnh hưởng không tương xứng đến một số khu vực và nhóm dân cư. Khóa học này cung cấp một cái nhìn tổng quan về tác động sâu rộng của COVID-19 và trình bày việc theo dõi tiếp xúc như một công cụ để giảm thiểu sự lây lan của dịch bệnh. Máy theo dõi liên lạc rất cần thiết để giúp các sở y tế của tiểu bang và địa phương, đặc biệt là ở các tiểu bang lớn và đa dạng như Texas.

Khóa học này được phát triển trong giai đoạn đầu của đại dịch COVID-19, và do đó, một số dữ liệu về tỷ lệ mắc bệnh, tỷ lệ tử vong và vắc xin đã thay đổi theo thời gian. Nội dung đề cập đến các vấn đề cụ thể đối với sức khỏe dân số và truy tìm địa chỉ liên lạc trong đại dịch, vẫn còn phù hợp.', CAST(N'2022-02-21' AS Date), 21, 1, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (49, N'course14.png', N'Giỏi với Từ ngữ: Chuyên môn Viết và Chỉnh sửa', N'Có lẽ điều quan trọng nhất mà sinh viên và các chuyên gia thuộc mọi loại có thể làm để cải thiện hiệu quả của họ là nắm lấy lời khuyên sau: trở nên tốt với lời nói.

Loạt khóa học này nhắm vào khía cạnh viết của khuyến nghị đó. Các kỹ năng mà nó tập trung vào bao gồm mọi thứ, từ cách sắp xếp một tập hợp thông tin phức tạp theo cách thân thiện với người đọc, cách cung cấp và nhận phản hồi chất lượng cao, đến cách luôn đạt đúng thời hạn.', N'Một phần trong số tiền thu được của Giáo sư Barry từ khóa học này sẽ được quyên góp cho các nỗ lực cứu trợ COVID-19 của Ozone House, một nơi trú ẩn cho thanh niên vô gia cư ở Đông Nam Michigan, nơi ông thường xuyên tổ chức các hội thảo đào tạo việc làm. Số tiền thu được này đến từ việc mua phiên bản của khóa học giúp bạn kiếm được chứng chỉ. Khóa học vẫn miễn phí cho bất kỳ ai chỉ đơn giản là kiểm tra.', CAST(N'2022-02-21' AS Date), 22, 2, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (50, N'course1.png', N'Chuyên môn hóa chiến lược bán lẻ đa kênh', N'Khi kết thúc Chuyên môn này, bạn sẽ có thể hình thành chiến lược bán sản phẩm bán lẻ của tổ chức mình trong khi vẫn giữ được nhân tài nội bộ và áp dụng phương pháp tiếp cận lặp đi lặp lại và tư duy tương lai để duy trì thành công trong tương lai.', N'Chuyên ngành này cung cấp cho người học cái nhìn sâu sắc về hoạt động trong một ngành bán lẻ đã chuyển đổi. Bạn sẽ học cách điều chỉnh sự gián đoạn trong hoạt động tiếp thị bán lẻ do COVID-19 gây ra và phát triển một khuôn khổ để tạo ra một chiến lược cạnh tranh tập trung vào phương pháp tiếp thị mới lấy khách hàng làm trung tâm. Bạn cũng sẽ tìm hiểu các nguyên tắc cơ bản về quản lý vốn nhân lực, tập trung vào ngành bán lẻ và đi sâu vào một số phương pháp thúc đẩy thành công của tổ chức. Cuối cùng, bạn sẽ xem xét các nguyên tắc cơ bản của chuỗi cung ứng, tập trung vào tác động của quá trình chuyển đổi kỹ thuật số đối với ngành bán lẻ. Khi sử dụng các phân tích bán lẻ có ý nghĩa, bạn sẽ học cách tạo ra giá trị cho các nhà bán lẻ và chuỗi cung ứng của họ.', CAST(N'2022-02-21' AS Date), 23, 3, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (51, N'course2.png', N'Cách dạy kiên cường qua thời kỳ khủng hoảng và thay đổi', N'Giảng dạy kiên cường là khả năng tạo điều kiện cho các trải nghiệm học tập được thiết kế để có thể thích ứng với các điều kiện biến động và sự gián đoạn. Khả năng giảng dạy này có thể được coi là kết quả của một phương pháp thiết kế chú ý đến mối quan hệ giữa các mục tiêu và hoạt động học tập cũng như môi trường mà chúng đang ở. giáo viên, học sinh, nội dung và công cụ. Ngoài ra, họ cần có khả năng suy nghĩ lại về việc thiết kế các trải nghiệm học tập dựa trên sự hiểu biết nhiều sắc thái về ngữ cảnh.', N'Khóa học được thiết kế với sự chú ý của giảng viên giáo dục đại học, giảng viên và người hướng dẫn sinh viên sau đại học, nhưng cũng có thể áp dụng cho các nhà giáo dục trong nhiều môi trường giảng dạy khác nhau. Khóa học hướng đến những người tham gia có thể được yêu cầu suy nghĩ lại cách họ giảng dạy trong thời gian trước mắt hoặc tương lai gần do hoàn cảnh luôn thay đổi của đại dịch COVID-19 hiện tại. Mặc dù việc tạo ra khóa học này được thúc đẩy bởi cuộc khủng hoảng hiện tại, chúng tôi hy vọng nó sẽ vẫn phù hợp với những giảng viên đang phải đối mặt với sự gián đoạn và thay đổi cách giảng dạy của họ vì bất kỳ lý do nào và phải nhanh chóng điều chỉnh thiết kế khóa học của họ.', CAST(N'2022-02-21' AS Date), 4, 1, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (52, N'course3.png', N'Y học cá nhân hóa từ quan điểm Bắc Âu', N'Cuộc cách mạng kỹ thuật đã tạo ra một lượng lớn dữ liệu trong nghiên cứu và chăm sóc sức khỏe cũng như kiến ​​thức ngày càng gia tăng nhanh chóng về các yếu tố quan trọng đối với sức khỏe của mỗi cá nhân. Điều này có tiềm năng rất lớn để hỗ trợ sự thay đổi từ mô hình một kích cỡ phù hợp với tất cả sang thuốc được cá nhân hóa hoặc chính xác, để hướng dẫn và do đó cải thiện từng quyết định sức khỏe mang lại lợi ích mong đợi cho bệnh nhân.', N'Đại dịch SARS-CoV-2 đã góp phần nâng cao nhận thức của cộng đồng và chính trị về tầm quan trọng của y học cá nhân hóa, trong đó ảnh hưởng của các yếu tố vật chủ như tuổi tác, giới tính, béo phì, hút thuốc, bệnh đồng mắc, v.v. làm tăng nguy cơ mắc COVID nghiêm trọng- 19 bệnh. Dự kiến ​​trong tương lai gần, một cách tiếp cận có hệ thống hơn và dựa trên dữ liệu để dự đoán và phân tầng nguy cơ của bệnh nhân COVID-19 và nhiều nhóm bệnh nhân khác, sẽ gia tăng và cải thiện do hiểu biết tốt hơn về bệnh lý học, bao gồm cả ảnh hưởng của di truyền sự thay đổi và các dấu ấn sinh học về nguy cơ và kết quả của bệnh.', CAST(N'2022-02-21' AS Date), 5, 2, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (53, N'course4.jpg', N'Công ty 360º: Công cụ để đạt được mục đích của công ty', N'Mọi mô hình kinh doanh và mọi quyết định hoạt động đều có sự đánh đổi của các bên liên quan trong đó. Lợi nhuận cuối cùng không phải lúc nào cũng tương thích với lợi ích của các bên liên quan xung quanh công ty.', N'Nếu bạn đã nghe các thuật ngữ chủ nghĩa tư bản của các bên liên quan, hoặc tính bền vững, hoặc ESG, trách nhiệm xã hội của doanh nghiệp, CSR, chủ nghĩa tư bản có ý thức, mục tiêu phát triển bền vững, giá trị chung, quyền công dân của doanh nghiệp hoặc công ty có mục đích nhưng không biết chính xác ý nghĩa của chúng— hoặc không biết cách biến những ý tưởng này thành hiện thực — thì khóa học này là dành cho bạn.', CAST(N'2022-02-21' AS Date), 6, 3, 1)
INSERT [dbo].[Course] ([courseID], [image], [courseName], [overview], [description], [createDate], [authorID], [categoryID], [status]) VALUES (54, N'course5.jpg', N'Chiến lược Tiếp thị Bán lẻ', N'Covid-19 đã thúc đẩy những thay đổi căn bản sẽ cách mạng hóa hoạt động bán lẻ trên mọi phương diện. Kỳ vọng của người mua sắm đang tăng lên, khiến việc giành được (và giữ chân) những người tiêu dùng đó càng trở nên khó khăn hơn. Trong khóa học này, Giáo sư Barbara Kahn sẽ giải thích ý nghĩa của việc chuyển từ phương pháp tập trung vào sản phẩm sang phương pháp tập trung vào khách hàng và tạo ra chiến lược tiếp thị để mang lại giá trị thực cho khách hàng. Học hỏi từ những công ty đã thành công nhất trong làn sóng thay đổi này, khóa học này sẽ cung cấp những hiểu biết sâu sắc về những gì chúng ta có thể học được từ sự phát triển của họ. Dựa trên những hiểu biết sâu sắc này, Giáo sư Kahn sẽ trình bày "Ma trận KahnRetailingSuccess" cung cấp một khuôn khổ mà bất kỳ công ty nào cũng có thể sử dụng để tạo ra một chiến lược cạnh tranh nhằm tồn tại và phát triển trong môi trường đầy gián đoạn ngày nay - và ngày mai. Vào cuối khóa học này, bạn sẽ có thể xác định những kỳ vọng đang thay đổi liên quan đến việc tạo ra trải nghiệm khách hàng vượt trội và xây dựng thương hiệu dựa trên giá trị.', N'Covid-19 đã thúc đẩy những thay đổi căn bản sẽ cách mạng hóa hoạt động bán lẻ trên mọi phương diện. Kỳ vọng của người mua sắm đang tăng lên, khiến việc giành được (và giữ chân) những người tiêu dùng đó càng trở nên khó khăn hơn. Trong khóa học này, Giáo sư Barbara Kahn sẽ giải thích ý nghĩa của việc chuyển từ phương pháp tập trung vào sản phẩm sang phương pháp tập trung vào khách hàng và tạo ra chiến lược tiếp thị để mang lại giá trị thực cho khách hàng. Học hỏi từ những công ty đã thành công nhất trong làn sóng thay đổi này, khóa học này sẽ cung cấp những hiểu biết sâu sắc về những gì chúng ta có thể học được từ sự phát triển của họ. Dựa trên những hiểu biết sâu sắc này, Giáo sư Kahn sẽ trình bày "Ma trận KahnRetailingSuccess" cung cấp một khuôn khổ mà bất kỳ công ty nào cũng có thể sử dụng để tạo ra một chiến lược cạnh tranh nhằm tồn tại và phát triển trong môi trường đầy gián đoạn ngày nay - và ngày mai. Vào cuối khóa học này, bạn sẽ có thể xác định những kỳ vọng đang thay đổi liên quan đến việc tạo ra trải nghiệm khách hàng vượt trội và xây dựng thương hiệu dựa trên giá trị.', CAST(N'2022-02-21' AS Date), 7, 1, 1)
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
INSERT [dbo].[Health_Status] ([leanerID], [symptomID], [status]) VALUES (1, 1, 1)
INSERT [dbo].[Health_Status] ([leanerID], [symptomID], [status]) VALUES (1, 2, 1)
INSERT [dbo].[Health_Status] ([leanerID], [symptomID], [status]) VALUES (1, 10, 1)
INSERT [dbo].[Health_Status] ([leanerID], [symptomID], [status]) VALUES (2, 1, 1)
INSERT [dbo].[Health_Status] ([leanerID], [symptomID], [status]) VALUES (2, 2, 1)
INSERT [dbo].[Health_Status] ([leanerID], [symptomID], [status]) VALUES (2, 3, 1)
INSERT [dbo].[Health_Status] ([leanerID], [symptomID], [status]) VALUES (2, 4, 1)
INSERT [dbo].[Health_Status] ([leanerID], [symptomID], [status]) VALUES (3, 1, 1)
INSERT [dbo].[Health_Status] ([leanerID], [symptomID], [status]) VALUES (3, 5, 1)
INSERT [dbo].[Health_Status] ([leanerID], [symptomID], [status]) VALUES (3, 6, 1)
GO
SET IDENTITY_INSERT [dbo].[Learner] ON 

INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (1, N'Trịnh Đức Anh', N'avatar.png', 1, CAST(N'2001-12-12' AS Date), N'Hải Phòng', N'trinhducanhlearner123@gmail.com', N'0794161517', 2)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (2, N'Ngô Minh Hà', N'avatar.png', 0, CAST(N'2002-12-12' AS Date), N'Nghệ An', N'ngominhhalearner123@gmail.com', N'0794161517', 7)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (3, N'Võ Bảo Lan', N'avatar.png', 0, CAST(N'2004-12-09' AS Date), N'Quảng Ninh', N'vobaolanlearner123@gmail.com', N'0794161517', 8)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (4, N'Võ Hạnh Dung', N'avatar.png', 0, CAST(N'1999-09-08' AS Date), N'Quảng Ninh', N'vohanhdunglearner123@gmail.com', N'0794161517', 9)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (5, N'Hà Minh Vương', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Hà Nội', N'haminhvuonglearner123@gmail.com', N'0794161517', 33)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (6, N'Nguyễn Thanh Sơn', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Hà Nội', N'nguyenthanhsonlearner123@gmail.com', N'0794161517', 34)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (7, N'Phạm Khắc Cường', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Hải Phòng', N'phamkhaccuonglearner123@gmail.com', N'0794161517', 35)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (8, N'Phạm Minh Nhật', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Quảng Ninh', N'phamminhnhatlearner123@gmail.com', N'0794161517', 36)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (9, N'Nguyễn Trọng Nguyên', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Quảng Ngãi', N'nguyentrongnguyelearner123@gmail.com', N'0794161517', 37)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (10, N'Nguyễn Quang Hải', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Thái Bình', N'nguyenquanghailearner123@gmail.com', N'0794161517', 38)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (11, N'Nguyễn Mạnh Quân', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Thái Bình', N'nguyenmanhquanlearner123@gmail.com', N'0794161517', 39)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (12, N'Phạm Văn Khánh', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Nghệ An', N'phamvankhanhlearner123@gmail.com', N'0794161517', 40)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (13, N'Nguyễn Tuấn Du', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Hải Dương', N'nguyentuandulearner123@gmail.com', N'0794161517', 41)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (14, N'Trịnh Thanh Bình', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Bắc Ninh', N'trinhthanhbinhlearner1232gmail.com', N'0794161517', 42)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (15, N'Trịnh Hải Dương', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Bắc Ninh', N'trinhhaiduong123@gmail.com', N'0794161517', 43)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (16, N'Nguyễn Đình Trọng', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Nghệ An', N'nguyendinhtronglearner123@gmail.com', N'0794161517', 44)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (17, N'Phạm Thành Đạt', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Hà Nội', N'phamthanhdatlearner123@gmail.com', N'0794161517', 45)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (18, N'Trần Quốc Tuấn', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Hải Phòng', N'tranquoctuanlearner123@gmail.com', N'0794161517', 46)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (19, N'Trần Việt Anh', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Hải Dương', N'tranvietanhlearner123@gmail.com', N'0794161517', 47)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (20, N'Chu Quang Vũ', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Hà nội', N'chuquangvulearner123@gmailc.om', N'0794161517', 48)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (21, N'Chu Đức Thắng', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Nghệ An', N'chuducthanglearner123@gmail.com', N'0794161517', 49)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (22, N'Phạm Huy Chiến', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Thái Bình', N'phamhuychienlearner123@gmail.com', N'0794161517', 50)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (23, N'Nguyễn Việt Cường', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Thái Bình', N'nguyenvietcuonglearner123@gmail.com', N'0794161517', 51)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (24, N'Vũ Đức Thắng', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Nghệ An', N'vuducthanglearner123@gmail.com', N'0794161517', 52)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (25, N'Hà Minh Hợp', N'avatar.png', 0, CAST(N'2004-12-09' AS Date), N'Bắc Ninh', N'haminhhop123@gmail.com', N'0794161517', 53)
INSERT [dbo].[Learner] ([learnerID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (26, N'Nguyễn Thành Đông', N'avatar.png', 1, CAST(N'2004-12-09' AS Date), N'Vũng Tàu', N'nguyenthanhdonglearner123@gmail.con', N'0794161517', 54)
SET IDENTITY_INSERT [dbo].[Learner] OFF
GO
SET IDENTITY_INSERT [dbo].[Lecture] ON 

INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (1, N'Lê Hùng Anh', N'avatar.png', 1, CAST(N'1998-09-03' AS Date), N'Nghệ An', N'lehunganhlecture123@gmail.com', N'0794161517', 3)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (2, N'Lê Mạnh Khiêm', N'avatar.png', 1, CAST(N'1990-12-12' AS Date), N'Quảng Ninh', N'lemanhkhiemlecture123@gmail.com', N'0794161517', 4)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (3, N'Ngô Hoàng Bách', N'avatar.png', 1, CAST(N'1998-09-03' AS Date), N'Hà Nội', N'ngohoangbachlecture123@gmail.com', N'0794161517', 5)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (4, N'Nguyễn Hiền Thục', N'avatar.png', 0, CAST(N'1998-09-03' AS Date), N'Ninh Bình', N'ngohienthuclecture123@gmail.com', N'0794161517', 13)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (5, N'Nguyễn Hiền Nhi', N'avatar.png', 0, CAST(N'1998-09-03' AS Date), N'Hà Nội', N'nguyenhiennhilecture123@gmail.com', N'0794161517', 14)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (6, N'Nguyễn Hồng Diễm', N'avatar.png', 0, CAST(N'1998-09-03' AS Date), N'Nghệ An', N'nguyenhongdiemlecture123@gmail.com', N'0794161517', 15)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (7, N'Nguyễn Mỹ Tâm', N'avatar.png', 0, CAST(N'1998-12-12' AS Date), N'Quảng Ngãi', N'nguyenmytamlecture123@gmail.com', N'0794161517', 16)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (8, N'Nguyễn Bích Thảo', N'avatar.png', 0, CAST(N'1998-09-03' AS Date), N'Hà Nội', N'nguyenbichthaolecture123@gmail.com', N'0794161517', 17)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (9, N'Nguyễn Đoan Trang', N'avatar.png', 0, CAST(N'1998-09-03' AS Date), N'Hải Phòng', N'nguyendoantranglecture123@gmail.cim', N'0794161517', 18)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (10, N'Nguyễn Thanh Phương', N'avatar.png', 0, CAST(N'1998-09-03' AS Date), N'Hải Dương', N'nguyenthanhphuonglecture123@gmail.com', N'0794161517', 19)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (11, N'Hoàng Chấn Phong', N'avatar.png', 1, CAST(N'1998-09-03' AS Date), N'Quảng Ninh', N'hoangchanphonglecture123@gmail.com', N'0794161517', 20)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (12, N'Nguyễn Bảo Nam', N'avatar.png', 1, CAST(N'1998-09-03' AS Date), N'Hải Dương', N'nguyenbaonamlecture123@gmail.com', N'0794161517', 21)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (13, N'Hoàng Bảo Long', N'avatar.png', 1, CAST(N'1998-09-03' AS Date), N'Hải Phòng', N'hoangbaolonglecture123@gmail.com', N'0794161517', 22)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (14, N'Hà Bảo Phúc', N'avatar.png', 1, CAST(N'1998-09-03' AS Date), N'Thanh Hóa', N'habaophuclecture123@gmail.com', N'0794161517', 23)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (15, N'Phạm Quốc Long', N'avatar.png', 1, CAST(N'1998-09-03' AS Date), N'Thanh Hóa', N'phamquoclonglecture123@gmail.com', N'0794161517', 24)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (16, N'Phạm Minh Lâm', N'avatar.png', 1, CAST(N'1998-09-03' AS Date), N'Nghệ An', N'phamminhlamlecture123@gmail.com', N'0794161517', 25)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (17, N'Hà Diễm Thu', N'avatar.png', 0, CAST(N'1998-09-03' AS Date), N'Hà Nội', N'hadiemthulecture123@gmail.com', N'0794161517', 26)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (18, N'Nguyễn Cát Tường', N'avatar.png', 0, CAST(N'1998-09-03' AS Date), N'Hải Phòng', N'nguyencattuonglecture123@gmail.com', N'0794161517', 27)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (19, N'Hà Lý Châu', N'avatar.png', 1, CAST(N'1998-09-03' AS Date), N'Hải Dương', N'halychaulecture123@gmail.com', N'0794161517', 28)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (20, N'Nguyễn Đan Thu', N'avatar.png', 0, CAST(N'1998-09-03' AS Date), N'Thái Bình', N'nguyendanthulecture123@gmail.com', N'0794161517', 29)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (21, N'Nguyễn An Nhiên', N'avatar.png', 0, CAST(N'1998-09-03' AS Date), N'Ninh Bình', N'nguyenannhienlecture123@gmail.com', N'0794161517', 30)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (22, N'Nguyễn Linh Lan', N'avatar.png', 0, CAST(N'1998-09-03' AS Date), N'Hải Phòng', N'nguyenlinhlan', N'0794161517', 31)
INSERT [dbo].[Lecture] ([lectureID], [fullname], [image], [gender], [dob], [address], [email], [phone], [accountID]) VALUES (23, N'Nguyễn Đoan Trang', N'avatar.png', 0, CAST(N'1998-09-03' AS Date), N'Nghệ An', N'nguyendoantranglecture123@gmail.com', N'0794161517', 32)
SET IDENTITY_INSERT [dbo].[Lecture] OFF
GO
SET IDENTITY_INSERT [dbo].[Lesson] ON 

INSERT [dbo].[Lesson] ([lessonID], [title], [reading], [video], [chapterID], [status]) VALUES (2, N'Kiểm tra SARS-CoV-2', NULL, NULL, 2, 1)
INSERT [dbo].[Lesson] ([lessonID], [title], [reading], [video], [chapterID], [status]) VALUES (3, N'Vai trò của các xét nghiệm chẩn đoán', NULL, NULL, 3, 1)
INSERT [dbo].[Lesson] ([lessonID], [title], [reading], [video], [chapterID], [status]) VALUES (4, N'Kế hoạch chiến lược quốc gia COVID-19', NULL, NULL, 4, 1)
INSERT [dbo].[Lesson] ([lessonID], [title], [reading], [video], [chapterID], [status]) VALUES (5, N'Quản lý chuỗi cung ứng', NULL, NULL, 5, 1)
INSERT [dbo].[Lesson] ([lessonID], [title], [reading], [video], [chapterID], [status]) VALUES (6, N'Đào tạo và đảm bảo chất lượng', NULL, NULL, 6, 1)
INSERT [dbo].[Lesson] ([lessonID], [title], [reading], [video], [chapterID], [status]) VALUES (7, N'Quản lý dữ liệu và giám sát và đánh giá', NULL, NULL, 7, 1)
INSERT [dbo].[Lesson] ([lessonID], [title], [reading], [video], [chapterID], [status]) VALUES (8, N'Khu vực y tế tư nhân là gì?', NULL, NULL, 8, 1)
INSERT [dbo].[Lesson] ([lessonID], [title], [reading], [video], [chapterID], [status]) VALUES (9, N'Tại sao các nhà hoạch định chính sách cần thu hút sự tham gia của khu vực y tế tư nhân?', NULL, NULL, 9, 1)
INSERT [dbo].[Lesson] ([lessonID], [title], [reading], [video], [chapterID], [status]) VALUES (10, N'Các hành vi chính để quản trị một hệ thống y tế hỗn hợp là gì?', NULL, NULL, 10, 1)
INSERT [dbo].[Lesson] ([lessonID], [title], [reading], [video], [chapterID], [status]) VALUES (11, N'Đối thoại công tư là gì và các phương pháp hay nhất của nó?', NULL, NULL, 11, 1)
INSERT [dbo].[Lesson] ([lessonID], [title], [reading], [video], [chapterID], [status]) VALUES (12, N'Làm thế nào để tạo điều kiện cho quá trình đối thoại công tư hiệu quả?', NULL, NULL, 12, 1)
INSERT [dbo].[Lesson] ([lessonID], [title], [reading], [video], [chapterID], [status]) VALUES (13, N'Giới thiệu về quản lý bệnh dịch', NULL, NULL, 13, 1)
INSERT [dbo].[Lesson] ([lessonID], [title], [reading], [video], [chapterID], [status]) VALUES (14, N'Giới thiệu về khoa học thông tin sai lệch', NULL, NULL, 14, 1)
INSERT [dbo].[Lesson] ([lessonID], [title], [reading], [video], [chapterID], [status]) VALUES (15, N'Xác minh và kiểm tra thực tế trong một cuộc khủng hoảng sức khỏe', NULL, NULL, 15, 1)
INSERT [dbo].[Lesson] ([lessonID], [title], [reading], [video], [chapterID], [status]) VALUES (16, N'Lý thuyết tạo mầm, khai thác và tiêm chủng', NULL, NULL, 16, 1)
INSERT [dbo].[Lesson] ([lessonID], [title], [reading], [video], [chapterID], [status]) VALUES (17, N'Thiết kế can thiệp và trao quyền cho cộng đồng', NULL, NULL, 17, 1)
SET IDENTITY_INSERT [dbo].[Lesson] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (31, N'Trung bình, tỷ lệ dịch vụ y tế ngoại trú của khu vực tư nhân là bao nhiêu?', 3, 1, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (32, N'Khu vực kinh tế tư nhân phục vụ cho bộ phận dân cư nào?', 3, 1, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (33, N'các hình thức tham gia với khu vực tư nhân là gì?', 1, 2, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (34, N'Lấy ví dụ về việc triển khai vắc xin COVID-19, mục tiêu nào dưới đây có thể đạt được thông qua sự tham gia của khu vực tư nhân?', 2, 2, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (35, N'Điều gì được bao gồm trong các công cụ “phần cứng” của sự tham gia của khu vực tư nhân?', 1, 2, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (36, N'Ai chịu trách nhiệm quản lý hệ thống y tế?', 3, 3, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (37, N'Lựa chọn nào dưới đây không phải là hành vi quản trị?', 2, 3, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (38, N'Chính phủ có thể thực hiện một trong những lựa chọn nào dưới đây để “nuôi dưỡng lòng tin”?', 1, 3, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (39, N'Lựa chọn nào dưới đây không mang lại lợi ích cho đối thoại công tư?', 3, 4, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (40, N'Lựa chọn nào dưới đây không phải là rủi ro đối với đối thoại công tư?', 2, 4, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (41, N'Một số thực hành tốt trong đối thoại công tư là gì? (Chọn tất cả các câu phù hợp)', 3, 4, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (42, N'Có thể làm gì để xây dựng nền tảng của quá trình đối thoại công tư?', 1, 5, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (43, N'Có thể làm gì để thiết lập các quy tắc của quá trình đối thoại công tư?', 2, 5, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (44, N'Có thể làm gì để điều phối các đối tác trong quá trình đối thoại công tư?', 3, 5, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (45, N'Bệnh dịch là tình trạng quá tải thông tin chỉ xảy ra trong môi trường kỹ thuật số khi bùng phát:', 1, 6, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (46, N'Một trận dịch dẫn đến sự không tin tưởng vào chính phủ và các cơ quan y tế công cộng, đồng thời có thể gây ra sự kỳ thị và làm suy giảm sự gắn kết xã hội.', 2, 6, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (47, N'Thông tin sai lệch về sức khỏe là một hiện tượng rất hiện đại.', 1, 6, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (48, N'Tác động thực sự của thông tin sai lệch có thể bị đánh giá thấp.', 2, 6, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (49, N'Tất cả chúng ta đều thấy phiên bản Internet giống nhau', 2, 6, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (50, N'Lĩnh vực xác minh thực tế bắt đầu từ những năm 90 ''bằng cách tập trung vào thông tin sai lệch về sức khỏe và khoa học.', 1, 7, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (51, N'Năm 2016 là một năm bước ngoặt đối với dư luận trên Internet. Tại sao?', 2, 7, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (52, N'Chọn câu đúng:', 1, 7, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (53, N'Giữa nhiều bất trắc, một nhân vật phản diện giản dị có thể mang lại sự thoải mái về tâm lý. Thông tin sai lệch thường hấp dẫn và lôi cuốn về mặt cảm xúc, trong khi sự thật có thể phức tạp và khó tưởng tượng.', 1, 7, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (54, N'Thông tin sai lệch về nguồn gốc của khủng hoảng sức khỏe cộng đồng có thể làm xói mòn lòng tin của công chúng đối với các tổ chức và thúc đẩy khả năng các biện pháp phòng ngừa và kiểm soát được thông qua.', 1, 7, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (55, N'Câu nào trong ba câu này là đúng?', 3, 8, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (56, N'Mạng lưới Kiểm tra Dữ kiện Quốc tế được thành lập vào năm 2015 như một diễn đàn của những người kiểm tra thông tin chuyên nghiệp tôn trọng Bộ Nguyên tắc IFCN.', 1, 8, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (57, N'Nghiên cứu gần đây có xu hướng cho thấy rằng ngày nay rất nhiều người kiểm tra thực tế được trả bằng các nền tảng trực tuyến, ngày càng có nhiều người tập trung vào việc chống lại thông tin sai lệch trực tuyến thay vì kiểm tra những lời ngụy biện từ các nhân vật công. (chọn tất cả các câu trả lời đúng)', 2, 8, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (58, N'Một trong những nguồn thông tin sai lệch ngoài ý muốn là việc trình bày các con số theo những cách không cho phép so sánh có ý nghĩa.', 1, 8, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (59, N'Khi phân tích các nghiên cứu khoa học, chúng ta cần nghĩ đến sai lệch lựa chọn tiềm năng vì: (chọn tất cả các câu trả lời đúng)', 3, 8, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (60, N'Các nghiên cứu cho thấy rằng:', 4, 9, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (61, N'Theo Timothy Caulfield, đâu là “điểm ngọt ngào” để bóc mẽ một vụ việc liên quan đến thông tin sai lệch đang bắt đầu lan truyền? (chọn tất cả các câu trả lời đúng)', 2, 9, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (62, N'Một chiến lược gỡ lỗi hiệu quả bao gồm: (chọn tất cả các câu trả lời đúng)', 1, 9, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (63, N'Thông tin sai lệch dễ dàng lan truyền khi thiếu thông tin và các câu hỏi từ mọi người không được giải quyết đủ nhanh.', 2, 9, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (64, N'“Lý thuyết tiêm chủng” là ý tưởng rằng nếu bạn giới thiệu một số dạng thông tin sai lệch đã suy yếu cho quần thể trước khi họ trải nghiệm nó trong tự nhiên, họ sẽ chuẩn bị tốt hơn để loại bỏ nó khi gặp phải.', 1, 9, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (65, N'Khoa học hành vi trong bối cảnh sức khỏe cộng đồng là khoa học về khái niệm, đo lường và thay đổi các hành vi sức khỏe. Nó giúp định hình vấn đề, đo lường và sử dụng kết quả để tạo ra các biện pháp can thiệp. Nó bao hàm sự tổng hợp của lý thuyết, nghiên cứu và thực hành.', 1, 10, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (66, N'Nghiên cứu của Solomon Asch năm 1951, thường được nói đến như một nghiên cứu về sự phù hợp, có thể giúp chúng ta hiểu tác động của bệnh dịch đối với hành vi của chúng ta vì nó có xu hướng cho thấy:', 2, 10, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (67, N'Thay đổi hành vi có những chi phí hữu hình và vô hình đối với con người. (chọn tất cả các câu trả lời đúng)', 3, 10, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (68, N'Các phương pháp thiết kế lấy con người làm trung tâm lấy cảm hứng từ ngành công nghệ ở Thung lũng Silicon có thể cung cấp thông tin về cách các cơ quan y tế công cộng xây dựng các biện pháp can thiệp của họ. Kết quả là:', 3, 10, 1)
INSERT [dbo].[Question] ([questionID], [content], [correctAnswer], [quizID], [status]) VALUES (69, N'Làm việc với các nhà lãnh đạo cộng đồng là điều cần thiết để tăng khả năng áp dụng các biện pháp y tế cộng đồng bằng cách cho phép họ điều chỉnh các thông điệp và biện pháp can thiệp phù hợp với văn hóa, chuẩn mực và thói quen của cộng đồng của họ.', 1, 10, 1)
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[Quiz] ON 

INSERT [dbo].[Quiz] ([quizID], [lessonID], [status]) VALUES (1, 8, 1)
INSERT [dbo].[Quiz] ([quizID], [lessonID], [status]) VALUES (2, 9, 1)
INSERT [dbo].[Quiz] ([quizID], [lessonID], [status]) VALUES (3, 10, 1)
INSERT [dbo].[Quiz] ([quizID], [lessonID], [status]) VALUES (4, 11, 1)
INSERT [dbo].[Quiz] ([quizID], [lessonID], [status]) VALUES (5, 12, 1)
INSERT [dbo].[Quiz] ([quizID], [lessonID], [status]) VALUES (6, 13, 1)
INSERT [dbo].[Quiz] ([quizID], [lessonID], [status]) VALUES (7, 14, 1)
INSERT [dbo].[Quiz] ([quizID], [lessonID], [status]) VALUES (8, 15, 1)
INSERT [dbo].[Quiz] ([quizID], [lessonID], [status]) VALUES (9, 16, 1)
INSERT [dbo].[Quiz] ([quizID], [lessonID], [status]) VALUES (10, 17, 1)
SET IDENTITY_INSERT [dbo].[Quiz] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([roleID], [name], [status]) VALUES (1, N'admin', 1)
INSERT [dbo].[Role] ([roleID], [name], [status]) VALUES (2, N'lecture', 1)
INSERT [dbo].[Role] ([roleID], [name], [status]) VALUES (3, N'learner', 1)
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Symptom] ON 

INSERT [dbo].[Symptom] ([symptomID], [name], [categoryID], [status]) VALUES (1, N'sốt', 1, 1)
INSERT [dbo].[Symptom] ([symptomID], [name], [categoryID], [status]) VALUES (2, N'ho', 1, 1)
INSERT [dbo].[Symptom] ([symptomID], [name], [categoryID], [status]) VALUES (3, N'mệt mỏi', 1, 1)
INSERT [dbo].[Symptom] ([symptomID], [name], [categoryID], [status]) VALUES (4, N'mất vị giác hoặc khứu giác', 1, 1)
INSERT [dbo].[Symptom] ([symptomID], [name], [categoryID], [status]) VALUES (5, N'đau họng', 2, 1)
INSERT [dbo].[Symptom] ([symptomID], [name], [categoryID], [status]) VALUES (6, N'đau đầu', 2, 1)
INSERT [dbo].[Symptom] ([symptomID], [name], [categoryID], [status]) VALUES (7, N'đau nhức', 2, 1)
INSERT [dbo].[Symptom] ([symptomID], [name], [categoryID], [status]) VALUES (8, N'tiêu chảy', 2, 1)
INSERT [dbo].[Symptom] ([symptomID], [name], [categoryID], [status]) VALUES (9, N'da nổi mẩn hay ngón tay hoặc ngón chân bị tấy đỏ', 2, 1)
INSERT [dbo].[Symptom] ([symptomID], [name], [categoryID], [status]) VALUES (10, N'mắt đỏ hoặc ngứa', 2, 1)
INSERT [dbo].[Symptom] ([symptomID], [name], [categoryID], [status]) VALUES (11, N'khó thở', 3, 1)
INSERT [dbo].[Symptom] ([symptomID], [name], [categoryID], [status]) VALUES (12, N'mất khả năng nói hay cử động hoặc thấy lù lẫn', 3, 1)
INSERT [dbo].[Symptom] ([symptomID], [name], [categoryID], [status]) VALUES (13, N'đau ngực', 3, 1)
SET IDENTITY_INSERT [dbo].[Symptom] OFF
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Answer] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Chapter] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Comment] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Course] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Do_Quiz] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Enroll] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Health_Status] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Lesson] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Question] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Quiz] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Symptom] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([roleID])
REFERENCES [dbo].[Role] ([roleID])
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD FOREIGN KEY([questionID])
REFERENCES [dbo].[Question] ([questionID])
GO
ALTER TABLE [dbo].[Chapter]  WITH CHECK ADD FOREIGN KEY([courseID])
REFERENCES [dbo].[Course] ([courseID])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([learnerID])
REFERENCES [dbo].[Learner] ([learnerID])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([lessonID])
REFERENCES [dbo].[Lesson] ([lessonID])
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD FOREIGN KEY([authorID])
REFERENCES [dbo].[Lecture] ([lectureID])
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([categoryID])
GO
ALTER TABLE [dbo].[Do_Quiz]  WITH CHECK ADD FOREIGN KEY([learnerID])
REFERENCES [dbo].[Learner] ([learnerID])
GO
ALTER TABLE [dbo].[Do_Quiz]  WITH CHECK ADD FOREIGN KEY([quizID])
REFERENCES [dbo].[Quiz] ([quizID])
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD FOREIGN KEY([courseID])
REFERENCES [dbo].[Course] ([courseID])
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD FOREIGN KEY([learnerID])
REFERENCES [dbo].[Learner] ([learnerID])
GO
ALTER TABLE [dbo].[Health_Status]  WITH CHECK ADD FOREIGN KEY([leanerID])
REFERENCES [dbo].[Learner] ([learnerID])
GO
ALTER TABLE [dbo].[Health_Status]  WITH CHECK ADD FOREIGN KEY([symptomID])
REFERENCES [dbo].[Symptom] ([symptomID])
GO
ALTER TABLE [dbo].[Learner]  WITH CHECK ADD FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Lecture]  WITH CHECK ADD FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD FOREIGN KEY([chapterID])
REFERENCES [dbo].[Chapter] ([chapterID])
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([quizID])
REFERENCES [dbo].[Quiz] ([quizID])
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD FOREIGN KEY([lessonID])
REFERENCES [dbo].[Lesson] ([lessonID])
GO
ALTER TABLE [dbo].[Rate]  WITH CHECK ADD FOREIGN KEY([learnerID])
REFERENCES [dbo].[Learner] ([learnerID])
GO
ALTER TABLE [dbo].[Rate]  WITH CHECK ADD FOREIGN KEY([lessonID])
REFERENCES [dbo].[Lesson] ([lessonID])
GO
ALTER TABLE [dbo].[Symptom]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([categoryID])
GO
