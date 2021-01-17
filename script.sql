USE [trac_nghiem_online]
GO
/****** Object:  Table [dbo].[admins]    Script Date: 1/18/2021 12:03:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admins](
	[id_admin] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NOT NULL,
	[password] [varchar](32) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[avatar] [varchar](255) NULL,
	[name] [nvarchar](100) NOT NULL,
	[gender] [nvarchar](50) NOT NULL,
	[birthday] [date] NOT NULL,
	[phone] [varchar](45) NULL,
	[id_permission] [int] NOT NULL,
	[last_login] [datetime] NULL,
	[last_seen] [nvarchar](100) NULL,
	[last_seen_url] [varchar](100) NULL,
	[timestamps] [datetime] NULL,
 CONSTRAINT [PK__admins__89472E9530A157A8] PRIMARY KEY CLUSTERED 
(
	[id_admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[classes]    Script Date: 1/18/2021 12:03:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classes](
	[id_class] [int] IDENTITY(1,1) NOT NULL,
	[class_name] [nvarchar](50) NOT NULL,
	[id_grade] [int] NOT NULL,
	[id_speciality] [int] NOT NULL,
	[timestamps] [datetime] NULL,
 CONSTRAINT [PK__classes__2352EEA93059EA0D] PRIMARY KEY CLUSTERED 
(
	[id_class] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grades]    Script Date: 1/18/2021 12:03:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grades](
	[id_grade] [int] IDENTITY(1,1) NOT NULL,
	[grade_name] [nvarchar](50) NOT NULL,
	[timestamps] [datetime] NULL,
 CONSTRAINT [PK__grades__6DB797E43E3A39E1] PRIMARY KEY CLUSTERED 
(
	[id_grade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permissions]    Script Date: 1/18/2021 12:03:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permissions](
	[id_permission] [int] IDENTITY(1,1) NOT NULL,
	[permission_name] [nvarchar](50) NOT NULL,
	[timestamps] [datetime] NULL,
 CONSTRAINT [PK__permissi__5180B3BFE43D88CB] PRIMARY KEY CLUSTERED 
(
	[id_permission] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[questions]    Script Date: 1/18/2021 12:03:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[questions](
	[id_question] [int] IDENTITY(1,1) NOT NULL,
	[id_subject] [int] NOT NULL,
	[unit] [int] NOT NULL,
	[img_content] [varchar](255) NULL,
	[content] [ntext] NOT NULL,
	[answer_a] [ntext] NOT NULL,
	[answer_b] [ntext] NOT NULL,
	[answer_c] [ntext] NOT NULL,
	[answer_d] [ntext] NOT NULL,
	[correct_answer] [ntext] NOT NULL,
	[timestamps] [datetime] NULL,
 CONSTRAINT [PK__question__2BD924771B7173C5] PRIMARY KEY CLUSTERED 
(
	[id_question] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quests_of_test]    Script Date: 1/18/2021 12:03:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quests_of_test](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[test_code] [int] NOT NULL,
	[id_question] [int] NOT NULL,
	[timestamps] [datetime] NULL,
 CONSTRAINT [PK__quests_o__3214EC27B8C23CE0] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scores]    Script Date: 1/18/2021 12:03:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scores](
	[id_score] [int] IDENTITY(1,1) NOT NULL,
	[id_student] [int] NOT NULL,
	[test_code] [int] NOT NULL,
	[score_number] [float] NOT NULL,
	[detail] [nchar](50) NOT NULL,
	[time_finish] [datetime] NULL,
 CONSTRAINT [PK_scores] PRIMARY KEY CLUSTERED 
(
	[id_student] ASC,
	[test_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[specialities]    Script Date: 1/18/2021 12:03:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[specialities](
	[id_speciality] [int] IDENTITY(1,1) NOT NULL,
	[speciality_name] [nvarchar](255) NOT NULL,
	[timestamps] [datetime] NULL,
 CONSTRAINT [PK__speciali__CF97EB984CF2A323] PRIMARY KEY CLUSTERED 
(
	[id_speciality] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[statuses]    Script Date: 1/18/2021 12:03:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statuses](
	[id_status] [int] IDENTITY(1,1) NOT NULL,
	[status_name] [nvarchar](50) NOT NULL,
	[timestamps] [datetime] NULL,
 CONSTRAINT [PK__statuses__5D2DC6E865E1C90F] PRIMARY KEY CLUSTERED 
(
	[id_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student_test_detail]    Script Date: 1/18/2021 12:03:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student_test_detail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[id_student] [int] NOT NULL,
	[test_code] [int] NOT NULL,
	[id_question] [int] NOT NULL,
	[answer_a] [ntext] NOT NULL,
	[answer_b] [ntext] NOT NULL,
	[answer_c] [ntext] NOT NULL,
	[answer_d] [ntext] NOT NULL,
	[student_answer] [ntext] NULL,
	[timestamps] [datetime] NULL,
 CONSTRAINT [PK_student_test_detail] PRIMARY KEY CLUSTERED 
(
	[id_student] ASC,
	[test_code] ASC,
	[id_question] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[students]    Script Date: 1/18/2021 12:03:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[students](
	[id_student] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NOT NULL,
	[password] [varchar](32) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[avatar] [varchar](255) NULL,
	[name] [nvarchar](100) NOT NULL,
	[gender] [nvarchar](50) NOT NULL,
	[birthday] [date] NOT NULL,
	[phone] [varchar](45) NULL,
	[id_permission] [int] NOT NULL,
	[id_class] [int] NOT NULL,
	[id_speciality] [int] NOT NULL,
	[is_testing] [int] NULL,
	[time_start] [datetime] NULL,
	[time_remaining] [varchar](10) NULL,
	[last_login] [datetime] NULL,
	[last_seen] [nvarchar](100) NULL,
	[last_seen_url] [varchar](100) NULL,
	[timestamps] [datetime] NULL,
 CONSTRAINT [PK__students__2BE2EBB681A432C4] PRIMARY KEY CLUSTERED 
(
	[id_student] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subjects]    Script Date: 1/18/2021 12:03:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subjects](
	[id_subject] [int] IDENTITY(1,1) NOT NULL,
	[subject_name] [nvarchar](255) NOT NULL,
	[timestamps] [datetime] NULL,
 CONSTRAINT [PK__subjects__8F848F6098C0F347] PRIMARY KEY CLUSTERED 
(
	[id_subject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teachers]    Script Date: 1/18/2021 12:03:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teachers](
	[id_teacher] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NOT NULL,
	[password] [varchar](32) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[avatar] [varchar](255) NULL,
	[name] [nvarchar](100) NOT NULL,
	[gender] [nvarchar](50) NOT NULL,
	[birthday] [date] NOT NULL,
	[phone] [varchar](45) NULL,
	[id_permission] [int] NOT NULL,
	[id_speciality] [int] NOT NULL,
	[last_login] [datetime] NULL,
	[last_seen] [nvarchar](100) NULL,
	[last_seen_url] [varchar](100) NULL,
	[timestamps] [datetime] NULL,
 CONSTRAINT [PK__teachers__3BAEF8F9A484A318] PRIMARY KEY CLUSTERED 
(
	[id_teacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tests]    Script Date: 1/18/2021 12:03:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tests](
	[test_name] [nvarchar](255) NOT NULL,
	[test_code] [int] NOT NULL,
	[password] [varchar](32) NOT NULL,
	[id_subject] [int] NOT NULL,
	[total_questions] [int] NOT NULL,
	[time_to_do] [int] NOT NULL,
	[note] [ntext] NULL,
	[id_status] [int] NOT NULL,
	[timestamps] [datetime] NULL,
 CONSTRAINT [PK_tests] PRIMARY KEY CLUSTERED 
(
	[test_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admins] ON 

INSERT [dbo].[admins] ([id_admin], [username], [password], [email], [avatar], [name], [gender], [birthday], [phone], [id_permission], [last_login], [last_seen], [last_seen_url], [timestamps]) VALUES (1, N'admin', N'25d55ad283aa400af464c76d713c07ad', N'formype@gmail.com', N'avatar-default.jpg', N'administrator', N'Nam', CAST(N'1988-11-01' AS Date), N'921359480', 1, CAST(N'2021-01-18T00:02:45.377' AS DateTime), N'Trang Chủ', N'/Admin', CAST(N'2021-01-05T20:57:35.810' AS DateTime))
SET IDENTITY_INSERT [dbo].[admins] OFF
GO
SET IDENTITY_INSERT [dbo].[classes] ON 

INSERT [dbo].[classes] ([id_class], [class_name], [id_grade], [id_speciality], [timestamps]) VALUES (1, N'ktpm k14c', 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[classes] OFF
GO
SET IDENTITY_INSERT [dbo].[grades] ON 

INSERT [dbo].[grades] ([id_grade], [grade_name], [timestamps]) VALUES (1, N'k14', NULL)
SET IDENTITY_INSERT [dbo].[grades] OFF
GO
SET IDENTITY_INSERT [dbo].[permissions] ON 

INSERT [dbo].[permissions] ([id_permission], [permission_name], [timestamps]) VALUES (1, N'Admin', CAST(N'2021-01-05T20:57:25.903' AS DateTime))
INSERT [dbo].[permissions] ([id_permission], [permission_name], [timestamps]) VALUES (2, N'Giáo Viên', CAST(N'2021-01-05T20:57:25.903' AS DateTime))
INSERT [dbo].[permissions] ([id_permission], [permission_name], [timestamps]) VALUES (3, N'Học sinh', CAST(N'2021-01-05T20:57:25.903' AS DateTime))
SET IDENTITY_INSERT [dbo].[permissions] OFF
GO
SET IDENTITY_INSERT [dbo].[questions] ON 

INSERT [dbo].[questions] ([id_question], [id_subject], [unit], [img_content], [content], [answer_a], [answer_b], [answer_c], [answer_d], [correct_answer], [timestamps]) VALUES (1, 1, 1, N'noimage.png', N'ádasdasdasd', N'2', N'3', N'1', N'4', N'1', NULL)
INSERT [dbo].[questions] ([id_question], [id_subject], [unit], [img_content], [content], [answer_a], [answer_b], [answer_c], [answer_d], [correct_answer], [timestamps]) VALUES (2, 1, 7, N'noimage.png', N'ádasdasdasdasd', N'4', N'2', N'5', N'1', N'1', NULL)
SET IDENTITY_INSERT [dbo].[questions] OFF
GO
SET IDENTITY_INSERT [dbo].[quests_of_test] ON 

INSERT [dbo].[quests_of_test] ([ID], [test_code], [id_question], [timestamps]) VALUES (1, 924468, 1, NULL)
INSERT [dbo].[quests_of_test] ([ID], [test_code], [id_question], [timestamps]) VALUES (2, 924468, 2, NULL)
SET IDENTITY_INSERT [dbo].[quests_of_test] OFF
GO
SET IDENTITY_INSERT [dbo].[scores] ON 

INSERT [dbo].[scores] ([id_score], [id_student], [test_code], [score_number], [detail], [time_finish]) VALUES (1, 1, 924468, 0, N'0/2                                               ', CAST(N'2021-01-17T23:56:27.393' AS DateTime))
SET IDENTITY_INSERT [dbo].[scores] OFF
GO
SET IDENTITY_INSERT [dbo].[specialities] ON 

INSERT [dbo].[specialities] ([id_speciality], [speciality_name], [timestamps]) VALUES (1, N'ktpm', NULL)
SET IDENTITY_INSERT [dbo].[specialities] OFF
GO
SET IDENTITY_INSERT [dbo].[statuses] ON 

INSERT [dbo].[statuses] ([id_status], [status_name], [timestamps]) VALUES (1, N'Mở', CAST(N'2021-01-07T00:06:45.943' AS DateTime))
INSERT [dbo].[statuses] ([id_status], [status_name], [timestamps]) VALUES (2, N'Đóng', CAST(N'2021-01-07T00:06:45.943' AS DateTime))
INSERT [dbo].[statuses] ([id_status], [status_name], [timestamps]) VALUES (3, N'Chờ Duyệt', CAST(N'2021-01-07T00:06:45.943' AS DateTime))
INSERT [dbo].[statuses] ([id_status], [status_name], [timestamps]) VALUES (4, N'Đã Duyệt', CAST(N'2021-01-07T00:06:45.943' AS DateTime))
INSERT [dbo].[statuses] ([id_status], [status_name], [timestamps]) VALUES (5, N'Cho Phép Xem Đáp Án', CAST(N'2021-01-07T00:06:45.943' AS DateTime))
INSERT [dbo].[statuses] ([id_status], [status_name], [timestamps]) VALUES (6, N'Kết Thúc', CAST(N'2021-01-07T00:06:45.943' AS DateTime))
INSERT [dbo].[statuses] ([id_status], [status_name], [timestamps]) VALUES (7, N'Ẩn', CAST(N'2021-01-07T00:06:45.943' AS DateTime))
SET IDENTITY_INSERT [dbo].[statuses] OFF
GO
SET IDENTITY_INSERT [dbo].[student_test_detail] ON 

INSERT [dbo].[student_test_detail] ([ID], [id_student], [test_code], [id_question], [answer_a], [answer_b], [answer_c], [answer_d], [student_answer], [timestamps]) VALUES (2, 1, 924468, 1, N'4', N'2', N'1', N'3', N'4', NULL)
INSERT [dbo].[student_test_detail] ([ID], [id_student], [test_code], [id_question], [answer_a], [answer_b], [answer_c], [answer_d], [student_answer], [timestamps]) VALUES (1, 1, 924468, 2, N'2', N'4', N'1', N'5', N'2', NULL)
SET IDENTITY_INSERT [dbo].[student_test_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[students] ON 

INSERT [dbo].[students] ([id_student], [username], [password], [email], [avatar], [name], [gender], [birthday], [phone], [id_permission], [id_class], [id_speciality], [is_testing], [time_start], [time_remaining], [last_login], [last_seen], [last_seen_url], [timestamps]) VALUES (1, N'namdp8', N'25d55ad283aa400af464c76d713c07ad', N'namduong9710@gmail.com', N'avatar-default.jpg', N'Dương Phương Nam', N'Nam', CAST(N'1997-01-01' AS Date), NULL, 3, 1, 1, NULL, NULL, NULL, CAST(N'2021-01-17T23:56:34.757' AS DateTime), N'Trang Chủ', N'/Student', NULL)
SET IDENTITY_INSERT [dbo].[students] OFF
GO
SET IDENTITY_INSERT [dbo].[subjects] ON 

INSERT [dbo].[subjects] ([id_subject], [subject_name], [timestamps]) VALUES (1, N'CSDL', NULL)
INSERT [dbo].[subjects] ([id_subject], [subject_name], [timestamps]) VALUES (2, N'Nhập môn lập trình', NULL)
SET IDENTITY_INSERT [dbo].[subjects] OFF
GO
SET IDENTITY_INSERT [dbo].[teachers] ON 

INSERT [dbo].[teachers] ([id_teacher], [username], [password], [email], [avatar], [name], [gender], [birthday], [phone], [id_permission], [id_speciality], [last_login], [last_seen], [last_seen_url], [timestamps]) VALUES (1, N'dgnam97', N'25d55ad283aa400af464c76d713c07ad', N'namduong9710@gmail.com', N'avatar-default.jpg', N'Dương Phương Nam', N'Nam', CAST(N'1997-01-01' AS Date), NULL, 2, 1, CAST(N'2021-01-17T23:56:49.190' AS DateTime), N'Trang Chủ', N'/Teacher', NULL)
SET IDENTITY_INSERT [dbo].[teachers] OFF
GO
INSERT [dbo].[tests] ([test_name], [test_code], [password], [id_subject], [total_questions], [time_to_do], [note], [id_status], [timestamps]) VALUES (N'Admin', 924468, N'25d55ad283aa400af464c76d713c07ad', 1, 2, 10, N'ádasd', 1, NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__admins__B96D23647734DA5F]    Script Date: 1/18/2021 12:03:44 AM ******/
ALTER TABLE [dbo].[admins] ADD  CONSTRAINT [UQ__admins__B96D23647734DA5F] UNIQUE NONCLUSTERED 
(
	[username] ASC,
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__students__B96D2364BADF7213]    Script Date: 1/18/2021 12:03:44 AM ******/
ALTER TABLE [dbo].[students] ADD  CONSTRAINT [UQ__students__B96D2364BADF7213] UNIQUE NONCLUSTERED 
(
	[username] ASC,
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__teachers__B96D2364E4800B05]    Script Date: 1/18/2021 12:03:44 AM ******/
ALTER TABLE [dbo].[teachers] ADD  CONSTRAINT [UQ__teachers__B96D2364E4800B05] UNIQUE NONCLUSTERED 
(
	[username] ASC,
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__tests__040975AB90111C61]    Script Date: 1/18/2021 12:03:44 AM ******/
ALTER TABLE [dbo].[tests] ADD UNIQUE NONCLUSTERED 
(
	[test_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[admins] ADD  CONSTRAINT [DF__admins__avatar__45F365D3]  DEFAULT ('avatar-default.jpg') FOR [avatar]
GO
ALTER TABLE [dbo].[admins] ADD  CONSTRAINT [DF_admins_timestamps]  DEFAULT (getdate()) FOR [timestamps]
GO
ALTER TABLE [dbo].[classes] ADD  CONSTRAINT [DF_classes_timestamps]  DEFAULT (getdate()) FOR [timestamps]
GO
ALTER TABLE [dbo].[grades] ADD  CONSTRAINT [DF_grades_timestamps]  DEFAULT (getdate()) FOR [timestamps]
GO
ALTER TABLE [dbo].[permissions] ADD  CONSTRAINT [DF_permissions_timestamps]  DEFAULT (getdate()) FOR [timestamps]
GO
ALTER TABLE [dbo].[questions] ADD  CONSTRAINT [DF_questions_timestamps]  DEFAULT (getdate()) FOR [timestamps]
GO
ALTER TABLE [dbo].[quests_of_test] ADD  CONSTRAINT [DF_quests_of_test_timestamps]  DEFAULT (getdate()) FOR [timestamps]
GO
ALTER TABLE [dbo].[scores] ADD  CONSTRAINT [DF_scores_time_finish]  DEFAULT (getdate()) FOR [time_finish]
GO
ALTER TABLE [dbo].[specialities] ADD  CONSTRAINT [DF_specialities_timestamps]  DEFAULT (getdate()) FOR [timestamps]
GO
ALTER TABLE [dbo].[statuses] ADD  CONSTRAINT [DF_statuses_timestamps]  DEFAULT (getdate()) FOR [timestamps]
GO
ALTER TABLE [dbo].[student_test_detail] ADD  CONSTRAINT [DF_student_test_detail_timestamps]  DEFAULT (getdate()) FOR [timestamps]
GO
ALTER TABLE [dbo].[students] ADD  CONSTRAINT [DF__students__avatar__4E88ABD4]  DEFAULT ('avatar-default.jpg') FOR [avatar]
GO
ALTER TABLE [dbo].[students] ADD  CONSTRAINT [DF__students__is_tes__52593CB8]  DEFAULT (NULL) FOR [is_testing]
GO
ALTER TABLE [dbo].[students] ADD  CONSTRAINT [DF__students__time_r__534D60F1]  DEFAULT (NULL) FOR [time_remaining]
GO
ALTER TABLE [dbo].[students] ADD  CONSTRAINT [DF_students_timestamps]  DEFAULT (getdate()) FOR [timestamps]
GO
ALTER TABLE [dbo].[subjects] ADD  CONSTRAINT [DF_subjects_timestamps]  DEFAULT (getdate()) FOR [timestamps]
GO
ALTER TABLE [dbo].[teachers] ADD  CONSTRAINT [DF__teachers__avatar__49C3F6B7]  DEFAULT ('avatar-default.jpg') FOR [avatar]
GO
ALTER TABLE [dbo].[teachers] ADD  CONSTRAINT [DF_teachers_timestamps]  DEFAULT (getdate()) FOR [timestamps]
GO
ALTER TABLE [dbo].[tests] ADD  CONSTRAINT [DF_tests_timestamps]  DEFAULT (getdate()) FOR [timestamps]
GO
ALTER TABLE [dbo].[admins]  WITH CHECK ADD  CONSTRAINT [FK__admins__id_permi__46E78A0C] FOREIGN KEY([id_permission])
REFERENCES [dbo].[permissions] ([id_permission])
GO
ALTER TABLE [dbo].[admins] CHECK CONSTRAINT [FK__admins__id_permi__46E78A0C]
GO
ALTER TABLE [dbo].[classes]  WITH CHECK ADD  CONSTRAINT [fk_grade] FOREIGN KEY([id_grade])
REFERENCES [dbo].[grades] ([id_grade])
GO
ALTER TABLE [dbo].[classes] CHECK CONSTRAINT [fk_grade]
GO
ALTER TABLE [dbo].[classes]  WITH CHECK ADD  CONSTRAINT [fk_speciality] FOREIGN KEY([id_speciality])
REFERENCES [dbo].[specialities] ([id_speciality])
GO
ALTER TABLE [dbo].[classes] CHECK CONSTRAINT [fk_speciality]
GO
ALTER TABLE [dbo].[questions]  WITH CHECK ADD  CONSTRAINT [FK__questions__id_su__5629CD9C] FOREIGN KEY([id_subject])
REFERENCES [dbo].[subjects] ([id_subject])
GO
ALTER TABLE [dbo].[questions] CHECK CONSTRAINT [FK__questions__id_su__5629CD9C]
GO
ALTER TABLE [dbo].[quests_of_test]  WITH CHECK ADD  CONSTRAINT [FK_quests_of_test_questions] FOREIGN KEY([id_question])
REFERENCES [dbo].[questions] ([id_question])
GO
ALTER TABLE [dbo].[quests_of_test] CHECK CONSTRAINT [FK_quests_of_test_questions]
GO
ALTER TABLE [dbo].[quests_of_test]  WITH CHECK ADD  CONSTRAINT [FK_quests_of_test_tests] FOREIGN KEY([test_code])
REFERENCES [dbo].[tests] ([test_code])
GO
ALTER TABLE [dbo].[quests_of_test] CHECK CONSTRAINT [FK_quests_of_test_tests]
GO
ALTER TABLE [dbo].[scores]  WITH CHECK ADD  CONSTRAINT [FK__scores__id_stude__60A75C0F] FOREIGN KEY([id_student])
REFERENCES [dbo].[students] ([id_student])
GO
ALTER TABLE [dbo].[scores] CHECK CONSTRAINT [FK__scores__id_stude__60A75C0F]
GO
ALTER TABLE [dbo].[scores]  WITH CHECK ADD  CONSTRAINT [FK_scores_tests] FOREIGN KEY([test_code])
REFERENCES [dbo].[tests] ([test_code])
GO
ALTER TABLE [dbo].[scores] CHECK CONSTRAINT [FK_scores_tests]
GO
ALTER TABLE [dbo].[students]  WITH CHECK ADD  CONSTRAINT [FK__students__id_cla__5070F446] FOREIGN KEY([id_class])
REFERENCES [dbo].[classes] ([id_class])
GO
ALTER TABLE [dbo].[students] CHECK CONSTRAINT [FK__students__id_cla__5070F446]
GO
ALTER TABLE [dbo].[students]  WITH CHECK ADD  CONSTRAINT [FK__students__id_per__4F7CD00D] FOREIGN KEY([id_permission])
REFERENCES [dbo].[permissions] ([id_permission])
GO
ALTER TABLE [dbo].[students] CHECK CONSTRAINT [FK__students__id_per__4F7CD00D]
GO
ALTER TABLE [dbo].[students]  WITH CHECK ADD  CONSTRAINT [FK__students__id_spe__5165187F] FOREIGN KEY([id_speciality])
REFERENCES [dbo].[specialities] ([id_speciality])
GO
ALTER TABLE [dbo].[students] CHECK CONSTRAINT [FK__students__id_spe__5165187F]
GO
ALTER TABLE [dbo].[teachers]  WITH CHECK ADD  CONSTRAINT [FK__teachers__id_per__4AB81AF0] FOREIGN KEY([id_permission])
REFERENCES [dbo].[permissions] ([id_permission])
GO
ALTER TABLE [dbo].[teachers] CHECK CONSTRAINT [FK__teachers__id_per__4AB81AF0]
GO
ALTER TABLE [dbo].[teachers]  WITH CHECK ADD  CONSTRAINT [FK__teachers__id_spe__4BAC3F29] FOREIGN KEY([id_speciality])
REFERENCES [dbo].[specialities] ([id_speciality])
GO
ALTER TABLE [dbo].[teachers] CHECK CONSTRAINT [FK__teachers__id_spe__4BAC3F29]
GO
ALTER TABLE [dbo].[tests]  WITH CHECK ADD  CONSTRAINT [FK__tests__id_status__59FA5E80] FOREIGN KEY([id_status])
REFERENCES [dbo].[statuses] ([id_status])
GO
ALTER TABLE [dbo].[tests] CHECK CONSTRAINT [FK__tests__id_status__59FA5E80]
GO
ALTER TABLE [dbo].[tests]  WITH CHECK ADD  CONSTRAINT [FK__tests__id_subjec__59063A47] FOREIGN KEY([id_subject])
REFERENCES [dbo].[subjects] ([id_subject])
GO
ALTER TABLE [dbo].[tests] CHECK CONSTRAINT [FK__tests__id_subjec__59063A47]
GO
