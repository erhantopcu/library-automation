USE [Library]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameSurname] [nvarchar](100) NOT NULL,
	[Information] [nvarchar](max) NULL,
 CONSTRAINT [PK_Yazarlar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookComments]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookComments](
	[Book_ID] [int] NOT NULL,
	[Member_ID] [int] NOT NULL,
	[Ratings] [float] NOT NULL,
	[Comments] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Author_ID] [int] NOT NULL,
	[PublicationYear] [smalldatetime] NOT NULL,
	[NumberOfPages] [smallint] NULL,
	[Language_ID] [tinyint] NULL,
	[Publisher_ID] [int] NOT NULL,
	[Description] [ntext] NULL,
	[State] [bit] NOT NULL,
	[ShelfNumber] [nvarchar](50) NOT NULL,
	[Category_ID] [tinyint] NOT NULL,
	[Photo] [image] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Phone] [varchar](11) NOT NULL,
	[IdentityNumber] [varchar](11) NOT NULL,
	[Gender] [nvarchar](20) NULL,
	[BirthDate] [smalldatetime] NULL,
	[Permission_ID] [tinyint] NOT NULL,
	[Mail] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Language] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](20) NULL,
	[BirthDate] [datetime2](7) NULL,
	[Phone] [varchar](11) NOT NULL,
	[IdentityNumber] [varchar](11) NOT NULL,
	[Mail] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[Member_State_ID] [tinyint] NOT NULL,
	[MemberDate] [datetime] NOT NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Uyeler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberStates]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberStates](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[MemberState] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Uyelik_Durumu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Permission] [nvarchar](50) NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publishers]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publishers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Phone] [varchar](11) NULL,
	[Mail] [nvarchar](50) NULL,
	[Address] [nvarchar](200) NULL,
 CONSTRAINT [PK_YayınEvleri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Requests]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requests](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RequestType_ID] [tinyint] NOT NULL,
	[Request] [text] NOT NULL,
	[RequestNote] [nvarchar](200) NULL,
	[RequestState] [bit] NOT NULL,
	[Member_ID] [int] NOT NULL,
 CONSTRAINT [PK_Talepler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestTypes]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestTypes](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[RequestType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Talep_Turu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Member_ID] [int] NOT NULL,
	[Employee_ID] [int] NOT NULL,
	[Book_ID] [int] NOT NULL,
	[TransactionType_ID] [tinyint] NOT NULL,
	[TransactionsDate] [datetime] NOT NULL,
	[BookDepositDate] [datetime] NOT NULL,
	[BookReturnDate] [datetime] NULL,
	[TransactionNote] [text] NULL,
	[TransactionState] [bit] NOT NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionTypes]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionTypes](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[TransactionType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Islem_Turu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([ID], [NameSurname], [Information]) VALUES (1, N'Sabahattin Ali', N'jSabahattin Ali, Türk yazar ve şair. Edebî kişiliğini toplumcu gerçekçi bir düzleme oturtarak yaşamındaki deneyimlerini okuyucusuna yansıttı ve kendisinden sonraki Cumhuriyet dönemi Türk edebiyatını etkileyen bir figür hâline geldil')
INSERT [dbo].[Authors] ([ID], [NameSurname], [Information]) VALUES (2, N'Recep Tayyip Erdoğan', N'ç')
INSERT [dbo].[Authors] ([ID], [NameSurname], [Information]) VALUES (3, N'Anton Çehov', N'. türk yazar')
INSERT [dbo].[Authors] ([ID], [NameSurname], [Information]) VALUES (4, N'Mustafa Kemal Atatürk', N'Mustafa Kemal Atatürk, Türk asker ve devlet adamıdır. ')
INSERT [dbo].[Authors] ([ID], [NameSurname], [Information]) VALUES (5, N'Sait Faik Abasıyanık', N'Sait Faik Abasıyanık, Türk hikâye ve roman yazarı, şair. Türk hikâyeciliğinin önde gelen yazarlarından birisi olan Sait Faik, çağdaş hikâyeciliğe yaptığı katkılar nedeniyle Türk edebiyatının köşe taşlarından biri olarak kabul edilir.')
INSERT [dbo].[Authors] ([ID], [NameSurname], [Information]) VALUES (6, N'devo', N'memo')
INSERT [dbo].[Authors] ([ID], [NameSurname], [Information]) VALUES (7, N'ggg', N'jjjjjj')
INSERT [dbo].[Authors] ([ID], [NameSurname], [Information]) VALUES (8, N'Sait Faik Abasıyanıkk', N'Sait Faik Abasıyanık, Türk hikâye ve roman yazarı, şair. Türk hikâyeciliğinin önde gelen yazarlarından birisi olan Sait Faik, çağdaş hikâyeciliğe yaptığı katkılar nedeniyle Türk edebiyatının köşe taşlarından biri olarak kabul edilir.')
INSERT [dbo].[Authors] ([ID], [NameSurname], [Information]) VALUES (10, N'ashdsahdash', N'sdjfjksahfkasjfsajhfakshfaskfhaksjhfaksjfahskjfhsakjf


Türk')
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([ID], [Name], [Author_ID], [PublicationYear], [NumberOfPages], [Language_ID], [Publisher_ID], [Description], [State], [ShelfNumber], [Category_ID], [Photo]) VALUES (8, N'Nutuk Gençler Için Fotoğraflarla Mustafa Kemal Atatürk', 4, CAST(N'2021-01-01T00:00:00' AS SmallDateTime), 650, 1, 15, N'Ey Türk gençliği! Birinci görevin, Türk bağımsızlığını, Türk Cumhuriyeti’ni sonsuza kadar korumak ve savunmaktır. Varlığının ve geleceğinin tek temeli budur. Bu temel, senin en değerli hazinendir. Gelecekte de, seni bu hazineden yoksun bırakmak isteyecek iç ve dış düşmanların olacaktır. Bir gün, bağımsızlık ve cumhuriyeti savunma zorunluluğuna düşersen, göreve atılmak için, içinde bulunacağın durumun olanak ve koşullarını düşünmeyeceksin! Bu olanak ve koşullar çok elverişsiz bir nitelikte görünebilir. Bağımsızlık ve cumhuriyetine kastedecek düşmanlar, bütün dünyada benzeri görülmemiş bir zaferin temsilcisi olabilirler. Zorla ve aldatmacayla sevgili vatanın bütün kaleleri zaptedilmiş, bütün tersanelerine girilmiş, bütün orduları dağıtılmış ve ülkenin her köşesi fiili olarak ele geçirilmiş olabilir. Bütün bu koşullardan daha acıklı ve daha korkunç olmak üzere, ülkenin içinde iktidara sahip olanlar aymazlık ve sapkınlık ve hatta hainlik içinde bulunabilirler. Hatta bu iktidar sahipleri, kişisel çıkarlarını istilacıların siyasi emelleriyle birleştirebilirler. Ulus, yoksulluk ve sıkıntı içinde yorgun ve bitkin düşmüş olabilir. Ey Türk geleceğinin evladı! İşte, bu durum ve koşullar içinde bile görevin, Türk bağımsızlık ve cumhuriyetini kurtarmaktır! Muhtaç olduğun güç, damarlarındaki soylu kanda mevcuttur!', 1, N'A1', 1, NULL)
INSERT [dbo].[Books] ([ID], [Name], [Author_ID], [PublicationYear], [NumberOfPages], [Language_ID], [Publisher_ID], [Description], [State], [ShelfNumber], [Category_ID], [Photo]) VALUES (11, N'Daha Adil Bir Dünya Mümkün', 2, CAST(N'2021-01-01T00:00:00' AS SmallDateTime), 216, 1, 16, N'BOŞ', 1, N'C4', 19, NULL)
INSERT [dbo].[Books] ([ID], [Name], [Author_ID], [PublicationYear], [NumberOfPages], [Language_ID], [Publisher_ID], [Description], [State], [ShelfNumber], [Category_ID], [Photo]) VALUES (14, N'İçimizdeki Şeytan', 1, CAST(N'2016-01-01T00:00:00' AS SmallDateTime), 255, 1, 1, N'"İsteyip istemedeğimi doğru dürüst bilmediğim, fakat neticede aleyhime çıkarsa istemediğimi iddia ettiğim bu nevi söz ve fiillerimin daimi bir mesulünü bulmuştum: Buna içimdeki şeytan diyordum, müdafaasını üzerime almaktan korktuğum bütün hareketlerimi ona yüklüyor ve kendi suratıma tüküreceğim yerde, haksızlığa, tesadüfün cilvesine uğramış bir mazlum gibi nefsimi şefkat ve ihtimama layık görüyordum. Halbuki ne şeytanı azizim, ne şeytanı? Bu bizim gururumuzun, salaklığımızın uydurması.."

Bu romanında, toplumsal gündemin kişilikler üzerindeki baskısını ve güçsüz insanın "kapana kısılmışlığını" gösteriyor Sabahattin Ali. Aydın geçinenlerin karanlığına, "insanın içindeki şeytan"a keskin bir bakış.', 1, N'A2', 26, NULL)
INSERT [dbo].[Books] ([ID], [Name], [Author_ID], [PublicationYear], [NumberOfPages], [Language_ID], [Publisher_ID], [Description], [State], [ShelfNumber], [Category_ID], [Photo]) VALUES (15, N'Bahis', 3, CAST(N'2021-01-01T00:00:00' AS SmallDateTime), NULL, 1, 5, N'"Bahis", Anton Çehov''un ölüm cezasının hapishanedeki yaşamdan daha iyi veya daha kötü olup olmadığı üzerine bir konuşma sonrasında birbiriyle bahis yapan bir bankacı ve genç bir avukat hakkında 1889 kısa öyküsüdür. Bankacı, avukatın on beş yıl boyunca gönüllü olarak hücre hapsinde kalamayacağını iddia ediyor.', 0, N'A3', 26, NULL)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [Name]) VALUES (1, N'Anı')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (2, N'Anlatı')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (3, N'Araştırma-İnceleme')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (4, N'Bilim')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (5, N'Biyografi')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (6, N'Çizgi Roman
')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (7, N'Deneme')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (8, N'Edebiyat')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (9, N'Eğitim')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (10, N'Felsefe')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (11, N'Gençlik')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (12, N'Gezi')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (13, N'Hikaye')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (14, N'Hobi')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (15, N'İnceleme')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (16, N'İş Ekonomi - Hukuk
')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (17, N'Kişisel Gelişim
')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (18, N'Konuşmalar')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (19, N'Masal')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (20, N'Mektup')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (21, N'Mizah')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (22, N'Öykü')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (23, N'Polisiye')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (24, N'Psikoloji')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (25, N'Resimli Öykü
')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (26, N'Roman')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (27, N'Sağlık')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (28, N'Sanat - Tasarım
')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (29, N'Sanat - Müzik
')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (30, N'Sinema Tarihi
')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (31, N'Söyleşi')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (32, N'Şiir')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (33, N'Tarih')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (34, N'Yemek Kitapları
')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([ID], [Name], [Surname], [Phone], [IdentityNumber], [Gender], [BirthDate], [Permission_ID], [Mail], [Password]) VALUES (1, N'Devrim Mehmet', N'Pattabanoğlu', N'8887776644', N'11111122233', N'Erkek', CAST(N'1993-08-20T00:00:00' AS SmallDateTime), 1, N'devrimmehmet@gmail.com', N'123456')
INSERT [dbo].[Employees] ([ID], [Name], [Surname], [Phone], [IdentityNumber], [Gender], [BirthDate], [Permission_ID], [Mail], [Password]) VALUES (4, N'Mert', N'Tutunmaz', N'33333333333', N'22222222222', N'Belirtmek İstemiyor', CAST(N'1994-06-09T00:00:00' AS SmallDateTime), 1, N'mertt@gmail.com', N'1234567')
INSERT [dbo].[Employees] ([ID], [Name], [Surname], [Phone], [IdentityNumber], [Gender], [BirthDate], [Permission_ID], [Mail], [Password]) VALUES (6, N'Devrim Mehmet', N'Pattabanoğlu', N'88877766445', N'11111122244', N'Erkek', CAST(N'1993-08-20T00:00:00' AS SmallDateTime), 1, N'devrimmehme@tmail.com', N'123456')
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Languages] ON 

INSERT [dbo].[Languages] ([ID], [Language]) VALUES (1, N'Türkçe')
INSERT [dbo].[Languages] ([ID], [Language]) VALUES (2, N'Rusça')
INSERT [dbo].[Languages] ([ID], [Language]) VALUES (3, N'İngilizce')
INSERT [dbo].[Languages] ([ID], [Language]) VALUES (4, N'Almanca')
INSERT [dbo].[Languages] ([ID], [Language]) VALUES (5, N'Fransızca')
INSERT [dbo].[Languages] ([ID], [Language]) VALUES (7, N'İtalyanca')
SET IDENTITY_INSERT [dbo].[Languages] OFF
GO
SET IDENTITY_INSERT [dbo].[Members] ON 

INSERT [dbo].[Members] ([ID], [Name], [Surname], [Gender], [BirthDate], [Phone], [IdentityNumber], [Mail], [Address], [Member_State_ID], [MemberDate], [Password]) VALUES (35, N'Büşra', N'Söyünmez', N'Kadın', CAST(N'1999-04-04T00:00:00.0000000' AS DateTime2), N'4445553366', N'16432578794', N'busra@gmail.com', N'Mecidiyeköy', 2, CAST(N'2022-10-27T11:27:43.177' AS DateTime), N'123456')
INSERT [dbo].[Members] ([ID], [Name], [Surname], [Gender], [BirthDate], [Phone], [IdentityNumber], [Mail], [Address], [Member_State_ID], [MemberDate], [Password]) VALUES (44, N'Mısra', N'Yılmaz', N'Belirtmek İstemiyor', CAST(N'1999-05-31T00:00:00.0000000' AS DateTime2), N'77777777777', N'16345278955', N'mısra@gmail.com', N'SultanbeylifdfddfSultanbeylifdfddf
Sultanbeylifdfddf
', 2, CAST(N'2022-10-28T15:37:03.397' AS DateTime), N'123456')
INSERT [dbo].[Members] ([ID], [Name], [Surname], [Gender], [BirthDate], [Phone], [IdentityNumber], [Mail], [Address], [Member_State_ID], [MemberDate], [Password]) VALUES (46, N'Büşra', N'Söyünmez', N'Erkek', CAST(N'1999-04-04T00:00:00.0000000' AS DateTime2), N'4445553366', N'16432578795', N'busra@gmail.com', N'Mecidiyeköy', 1, CAST(N'2022-10-28T16:35:57.730' AS DateTime), N'123456')
INSERT [dbo].[Members] ([ID], [Name], [Surname], [Gender], [BirthDate], [Phone], [IdentityNumber], [Mail], [Address], [Member_State_ID], [MemberDate], [Password]) VALUES (47, N'Mısra', N'Yılmaz', N'Erkek', CAST(N'1999-05-31T00:00:00.0000000' AS DateTime2), N'5554443366', N'16345278954', N'mısra@gmail.com', N'SultanbeylifdfddfSultanbeylifdfddf
Sultanbeylifdfddf
', 3, CAST(N'2022-10-28T16:36:29.463' AS DateTime), N'123456')
INSERT [dbo].[Members] ([ID], [Name], [Surname], [Gender], [BirthDate], [Phone], [IdentityNumber], [Mail], [Address], [Member_State_ID], [MemberDate], [Password]) VALUES (48, N'Büşraggggggg', N'Söyünmkkk', N'Belirtmek İstemiyor', CAST(N'1994-06-15T00:00:00.0000000' AS DateTime2), N'77777666666', N'16432578793', N'zxczczx@gmail.com', N'Mecidiyeköydsvfdsfdsf', 2, CAST(N'2022-10-28T21:47:47.057' AS DateTime), N'1234567')
INSERT [dbo].[Members] ([ID], [Name], [Surname], [Gender], [BirthDate], [Phone], [IdentityNumber], [Mail], [Address], [Member_State_ID], [MemberDate], [Password]) VALUES (49, N'Büşragggggggggggggggggggggggggggggggggggggghhhhhhh', N'Söyünmkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', N'Kadın', CAST(N'1999-04-04T00:00:00.0000000' AS DateTime2), N'77777888888', N'16432578799', N'zxczczx@memo.com', N'Mecidiyeköykkkkkkkkk', 1, CAST(N'2022-10-28T21:50:00.170' AS DateTime), N'123456')
INSERT [dbo].[Members] ([ID], [Name], [Surname], [Gender], [BirthDate], [Phone], [IdentityNumber], [Mail], [Address], [Member_State_ID], [MemberDate], [Password]) VALUES (50, N'Büşragggggggggggggggggggggggggggggggggggggghhhhhhh', N'Söyünmkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', N'Kadın', CAST(N'1999-04-04T00:00:00.0000000' AS DateTime2), N'77777888889', N'16432578797', N'zxczczx@memo.com', N'Mecidiyeköy', 3, CAST(N'2022-10-28T22:02:27.460' AS DateTime), N'123456')
INSERT [dbo].[Members] ([ID], [Name], [Surname], [Gender], [BirthDate], [Phone], [IdentityNumber], [Mail], [Address], [Member_State_ID], [MemberDate], [Password]) VALUES (52, N'Mısra', N'Yılmaz', N'Erkek', CAST(N'1999-05-31T00:00:00.0000000' AS DateTime2), N'55544433667', N'16345278966', N'mısra@gmail.com', N'SultanbeylifdfddfSultanbeylifdfddf
Sultanbeylifdfddf
', 1, CAST(N'2022-10-28T22:04:43.740' AS DateTime), N'123456')
SET IDENTITY_INSERT [dbo].[Members] OFF
GO
SET IDENTITY_INSERT [dbo].[MemberStates] ON 

INSERT [dbo].[MemberStates] ([ID], [MemberState]) VALUES (1, N'Aktif')
INSERT [dbo].[MemberStates] ([ID], [MemberState]) VALUES (2, N'Pasif')
INSERT [dbo].[MemberStates] ([ID], [MemberState]) VALUES (3, N'Cezalı')
SET IDENTITY_INSERT [dbo].[MemberStates] OFF
GO
SET IDENTITY_INSERT [dbo].[Permissions] ON 

INSERT [dbo].[Permissions] ([ID], [Permission]) VALUES (1, N'Admin')
SET IDENTITY_INSERT [dbo].[Permissions] OFF
GO
SET IDENTITY_INSERT [dbo].[Publishers] ON 

INSERT [dbo].[Publishers] ([ID], [Name], [Phone], [Mail], [Address]) VALUES (1, N'YAPI KREDİ YAYINLARI', N'55555555555', N'mail', N'kastamonu')
INSERT [dbo].[Publishers] ([ID], [Name], [Phone], [Mail], [Address]) VALUES (2, N'KAPRA YAYINCILIK', NULL, NULL, NULL)
INSERT [dbo].[Publishers] ([ID], [Name], [Phone], [Mail], [Address]) VALUES (3, N'TÜBİTAK YAYINLARI', NULL, NULL, NULL)
INSERT [dbo].[Publishers] ([ID], [Name], [Phone], [Mail], [Address]) VALUES (4, N'KARBON KİTAPLAR', NULL, NULL, NULL)
INSERT [dbo].[Publishers] ([ID], [Name], [Phone], [Mail], [Address]) VALUES (5, N'CAN YAYINLARI', NULL, NULL, NULL)
INSERT [dbo].[Publishers] ([ID], [Name], [Phone], [Mail], [Address]) VALUES (6, N'CAN ÇOCUK YAYINLARI', NULL, NULL, NULL)
INSERT [dbo].[Publishers] ([ID], [Name], [Phone], [Mail], [Address]) VALUES (7, N'GÜNIŞIĞI KİTAPLIĞI', NULL, NULL, NULL)
INSERT [dbo].[Publishers] ([ID], [Name], [Phone], [Mail], [Address]) VALUES (8, N'KRONİK KİTAP', NULL, NULL, NULL)
INSERT [dbo].[Publishers] ([ID], [Name], [Phone], [Mail], [Address]) VALUES (9, N'PEGASUS YAYINLARI', NULL, NULL, NULL)
INSERT [dbo].[Publishers] ([ID], [Name], [Phone], [Mail], [Address]) VALUES (10, N'HAYY KİTAP', NULL, NULL, NULL)
INSERT [dbo].[Publishers] ([ID], [Name], [Phone], [Mail], [Address]) VALUES (11, N'İTHAKİ YAYINLARI', NULL, NULL, NULL)
INSERT [dbo].[Publishers] ([ID], [Name], [Phone], [Mail], [Address]) VALUES (12, N'DOĞAN KİTAP', NULL, NULL, NULL)
INSERT [dbo].[Publishers] ([ID], [Name], [Phone], [Mail], [Address]) VALUES (13, N'TİMAŞ ÇOCUK YAYINLARI', NULL, NULL, NULL)
INSERT [dbo].[Publishers] ([ID], [Name], [Phone], [Mail], [Address]) VALUES (14, N'DOMİNGO YAYINEVİ', NULL, NULL, NULL)
INSERT [dbo].[Publishers] ([ID], [Name], [Phone], [Mail], [Address]) VALUES (15, N'TÜRKİYE İŞ BANKASI KÜLTÜR YAYINLARI', NULL, NULL, NULL)
INSERT [dbo].[Publishers] ([ID], [Name], [Phone], [Mail], [Address]) VALUES (16, N'TURKUVAZ KİTAP', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Publishers] OFF
GO
SET IDENTITY_INSERT [dbo].[RequestTypes] ON 

INSERT [dbo].[RequestTypes] ([ID], [RequestType]) VALUES (1, N'Kitap İsteği')
INSERT [dbo].[RequestTypes] ([ID], [RequestType]) VALUES (2, N'Öneri')
INSERT [dbo].[RequestTypes] ([ID], [RequestType]) VALUES (3, N'Şikayet')
INSERT [dbo].[RequestTypes] ([ID], [RequestType]) VALUES (4, N'Diğer')
SET IDENTITY_INSERT [dbo].[RequestTypes] OFF
GO
ALTER TABLE [dbo].[Books] ADD  CONSTRAINT [DF_Books_State]  DEFAULT ((1)) FOR [State]
GO
ALTER TABLE [dbo].[Members] ADD  CONSTRAINT [DF_Members_Member_State_ID]  DEFAULT ((1)) FOR [Member_State_ID]
GO
ALTER TABLE [dbo].[Members] ADD  CONSTRAINT [DF_Members_MemberDate]  DEFAULT (getdate()) FOR [MemberDate]
GO
ALTER TABLE [dbo].[BookComments]  WITH CHECK ADD  CONSTRAINT [FK_BookComments_Books] FOREIGN KEY([Book_ID])
REFERENCES [dbo].[Books] ([ID])
GO
ALTER TABLE [dbo].[BookComments] CHECK CONSTRAINT [FK_BookComments_Books]
GO
ALTER TABLE [dbo].[BookComments]  WITH CHECK ADD  CONSTRAINT [FK_BookComments_Members] FOREIGN KEY([Member_ID])
REFERENCES [dbo].[Members] ([ID])
GO
ALTER TABLE [dbo].[BookComments] CHECK CONSTRAINT [FK_BookComments_Members]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors] FOREIGN KEY([Author_ID])
REFERENCES [dbo].[Authors] ([ID])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Authors]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Categories] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Categories]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Languages] FOREIGN KEY([Language_ID])
REFERENCES [dbo].[Languages] ([ID])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Languages]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Publishers] FOREIGN KEY([Publisher_ID])
REFERENCES [dbo].[Publishers] ([ID])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Publishers]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Permissions] FOREIGN KEY([Permission_ID])
REFERENCES [dbo].[Permissions] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Permissions]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_MemberStates] FOREIGN KEY([Member_State_ID])
REFERENCES [dbo].[MemberStates] ([ID])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_MemberStates]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_Members] FOREIGN KEY([Member_ID])
REFERENCES [dbo].[Members] ([ID])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_Members]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_RequestTypes] FOREIGN KEY([RequestType_ID])
REFERENCES [dbo].[RequestTypes] ([ID])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_RequestTypes]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Books] FOREIGN KEY([Book_ID])
REFERENCES [dbo].[Books] ([ID])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Books]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Employees] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Employees]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Members] FOREIGN KEY([Member_ID])
REFERENCES [dbo].[Members] ([ID])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Members]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_TransactionTypes] FOREIGN KEY([TransactionType_ID])
REFERENCES [dbo].[TransactionTypes] ([ID])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_TransactionTypes]
GO
/****** Object:  StoredProcedure [dbo].[DeleteFromAuthors]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[DeleteFromAuthors]
(
  @ID int
)
as
delete Authors where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[DeleteFromCategories]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteFromCategories]
(
  @ID int
)
as
delete Categories where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[DeleteFromEmployees]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteFromEmployees]
(
  @ID int
)
as
delete Employees where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[DeleteFromLanguages]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[DeleteFromLanguages]
(
  @ID int
)
as
delete Languages where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[DeleteFromMemberRequestTypes]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteFromMemberRequestTypes]
(
  @ID int
)
as
delete RequestTypes where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[DeleteFromMembers]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteFromMembers]
(
  @ID int
)
as
delete Members where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[DeleteFromMemberStates]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteFromMemberStates]
(
  @ID int
)
as
delete MemberStates where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[DeleteFromPermissions]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteFromPermissions]
(
  @ID int
)
as
delete Permissions where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[DeleteFromPublishers]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteFromPublishers]
(
  @ID int
)
as
delete Publishers where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[UpdateFromAuthors]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateFromAuthors]
(
     @ID int,
     @NameSurname nvarchar(100),
     @Information nvarchar(Max)
   
)
as
update Authors set NameSurname=@NameSurname,Information=@Information where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[UpdateFromCategories]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateFromCategories]
(
     @ID int,
     @Name nvarchar(50)
   
)
as
update Categories set Name=@Name where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[UpdateFromEmployees]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[UpdateFromEmployees]
(
     @ID int,
     @Name nvarchar(50),
     @Surname nvarchar(50),
     @Gender nvarchar(20),
	 @BirthDate datetime2(7),
	 @Phone varchar(11),
	
	 @Mail nvarchar(50),
	 
	 @Permission_ID tinyint,
	 
	 @Password nvarchar(50)
)
as
update Employees set Name=@Name,Surname=@Surname, Gender=@Gender,BirthDate=@BirthDate,Phone=@Phone,Mail=@Mail,Permission_ID=@Permission_ID,Password=@Password where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[UpdateFromLanguages]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateFromLanguages]
(
     @ID int,
     @Language nvarchar(20)
   
)
as
update Languages set Language=@Language where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[UpdateFromMembers]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateFromMembers]
(
     @ID int,
     @Name nvarchar(50),
     @Surname nvarchar(50),
     @Gender nvarchar(20),
	 @BirthDate datetime2(7),
	 @Phone varchar(11),
	
	 @Mail nvarchar(50),
	 @Address nvarchar(200),
	 @Member_State_ID tinyint,
	 
	 @Password nvarchar(50)
)
as
update Members set Name=@Name,Surname=@Surname, Gender=@Gender,BirthDate=@BirthDate,Phone=@Phone,Mail=@Mail,Address=@Address,Member_State_ID=@Member_State_ID,Password=@Password where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[UpdateFromMemberStates]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateFromMemberStates]
(
     @ID int,
     @MemberState nvarchar(50)
    
   
)
as
update MemberStates set MemberState=@MemberState where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[UpdateFromPermissions]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateFromPermissions]
(
     @ID int,
     @Permission nvarchar(50)
     
)
as
update Permissions set Permission=@Permission where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[UpdateFromPublishers]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateFromPublishers]
(
     @ID int,
     @Name nvarchar(50),
	 @Phone varchar(11),
	 @Mail nvarchar(50),
	 @Adress nvarchar(200)
)
as
update Publishers set Name=@Name,Phone=@Phone,Mail=@Mail,Address=@Adress where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[UpdateFromRequestTypes]    Script Date: 29.10.2022 01:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateFromRequestTypes]
(
     @ID int,
     @RequestType nvarchar(50)
    
   
)
as
update RequestTypes set RequestType=@RequestType where ID=@ID
GO
