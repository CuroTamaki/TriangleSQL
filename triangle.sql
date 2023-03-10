USE [master]
GO
/****** Object:  Database [Triangle]    Script Date: 2023/1/3 下午 04:07:17 ******/
CREATE DATABASE [Triangle]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Triangle', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Triangle.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Triangle_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Triangle_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Triangle] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Triangle].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Triangle] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Triangle] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Triangle] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Triangle] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Triangle] SET ARITHABORT OFF 
GO
ALTER DATABASE [Triangle] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Triangle] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Triangle] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Triangle] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Triangle] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Triangle] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Triangle] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Triangle] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Triangle] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Triangle] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Triangle] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Triangle] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Triangle] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Triangle] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Triangle] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Triangle] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Triangle] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Triangle] SET RECOVERY FULL 
GO
ALTER DATABASE [Triangle] SET  MULTI_USER 
GO
ALTER DATABASE [Triangle] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Triangle] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Triangle] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Triangle] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Triangle] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Triangle] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Triangle', N'ON'
GO
ALTER DATABASE [Triangle] SET QUERY_STORE = OFF
GO
USE [Triangle]
GO
/****** Object:  Table [dbo].[AptitudeTest]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AptitudeTest](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](100) NULL,
	[Count] [int] NULL,
 CONSTRAINT [PK_AptitudeTest] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[ArticleId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[AuthorId] [int] NULL,
	[UpdateTime] [date] NULL,
	[Keyword] [nvarchar](200) NULL,
	[img] [nvarchar](100) NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[ArticleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidate](
	[CandidateId] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](12) NULL,
	[Password] [nvarchar](12) NULL,
	[Name] [nvarchar](10) NULL,
	[IdCard] [nvarchar](10) NULL,
	[Telephone] [nvarchar](10) NULL,
	[Cellphone] [nvarchar](10) NULL,
	[Birth] [date] NULL,
	[Address] [nvarchar](30) NULL,
	[Education] [nvarchar](30) NULL,
	[Seniority] [int] NULL,
	[Status] [int] NULL,
	[Img] [nvarchar](100) NULL,
	[Autobiography] [nvarchar](700) NULL,
 CONSTRAINT [PK_Candidate] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateCV]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateCV](
	[CandidateCVId] [int] IDENTITY(1,1) NOT NULL,
	[CVSource] [nvarchar](100) NULL,
	[CandidateId] [int] NULL,
	[CVId] [int] NULL,
 CONSTRAINT [PK_CandidateCV] PRIMARY KEY CLUSTERED 
(
	[CandidateCVId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateSkill]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateSkill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CandidateId] [int] NOT NULL,
	[SkillId] [int] NOT NULL,
 CONSTRAINT [PK_CandidateSkill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](10) NULL,
	[TeacherID] [int] NULL,
	[TeacherName] [nvarchar](10) NULL,
	[Price] [int] NULL,
	[Addedtime] [date] NULL,
	[website] [nvarchar](20) NULL,
	[img] [nvarchar](200) NULL,
	[keyword] [nvarchar](500) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseDetail]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NULL,
	[SkillId] [int] NULL,
 CONSTRAINT [PK_CourseDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseOrder]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseOrder](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CandidateId] [int] NULL,
	[CourseId] [int] NULL,
	[Buyingtime] [date] NULL,
	[Vaild] [bit] NULL,
 CONSTRAINT [PK_CourseOrder] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CV]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CV](
	[CVId] [int] IDENTITY(1,1) NOT NULL,
	[Img] [nvarchar](100) NULL,
	[Source] [nvarchar](100) NULL,
 CONSTRAINT [PK_CV] PRIMARY KEY CLUSTERED 
(
	[CVId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise](
	[EnterpriseId] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](12) NULL,
	[Password] [nvarchar](12) NULL,
	[Category] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[UniformNumbers] [nvarchar](10) NULL,
	[Telephone] [nvarchar](10) NULL,
	[Fax] [nvarchar](10) NULL,
	[OpeningHours] [time](7) NULL,
	[Address] [nvarchar](50) NULL,
	[Principal] [nvarchar](10) NULL,
	[ContactPhone] [nvarchar](10) NULL,
	[ContactTime] [time](7) NULL,
	[Email] [nvarchar](20) NULL,
	[Info] [nvarchar](200) NULL,
	[img] [nvarchar](100) NULL,
 CONSTRAINT [PK_Enterprise] PRIMARY KEY CLUSTERED 
(
	[EnterpriseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterestedArticle]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterestedArticle](
	[CandidateId] [int] NOT NULL,
	[ArticleId] [int] NOT NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_InterestedArticle_1] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC,
	[ArticleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterestedCourse]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterestedCourse](
	[CandidateId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_InterestedCourse_1] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC,
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterestedCV]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterestedCV](
	[CandidateId] [int] NOT NULL,
	[CVId] [int] NOT NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_InterestedCV_1] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC,
	[CVId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterestedEnterprise]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterestedEnterprise](
	[CandidateId] [int] NOT NULL,
	[EnterpriseId] [int] NOT NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_InterestedEnterprise_1] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC,
	[EnterpriseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterestedPlatformArticle]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterestedPlatformArticle](
	[CandidateId] [int] NOT NULL,
	[PlatformArticleId] [int] NOT NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_InterestedPlatformArticle] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC,
	[PlatformArticleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Platform]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platform](
	[ArticleId] [int] IDENTITY(1,1) NOT NULL,
	[ArticleName] [nvarchar](10) NULL,
	[AuthorId] [int] NULL,
	[Contents] [nvarchar](500) NULL,
	[UpdateTime] [date] NULL,
 CONSTRAINT [PK_Platform] PRIMARY KEY CLUSTERED 
(
	[ArticleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reply]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reply](
	[ReplyId] [int] IDENTITY(1,1) NOT NULL,
	[ArticleId] [int] NOT NULL,
	[ReplyTime] [date] NULL,
	[Floor] [int] NULL,
 CONSTRAINT [PK_Reply] PRIMARY KEY CLUSTERED 
(
	[ReplyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CandidaterId] [int] NULL,
	[Score] [int] NULL,
	[AnswerTime] [date] NULL,
	[Result] [nvarchar](500) NULL,
 CONSTRAINT [PK_Result] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [nvarchar](50) NULL,
	[Category] [int] NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](10) NULL,
	[Categories] [nvarchar](50) NULL,
	[EntryTime] [date] NULL,
	[Experience] [nvarchar](100) NULL,
	[Working] [bit] NULL,
	[img] [nvarchar](100) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacancy]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacancy](
	[VacancyId] [int] IDENTITY(1,1) NOT NULL,
	[WorkName] [nvarchar](50) NULL,
	[EnterpriseId] [int] NULL,
	[WorkPlace] [nvarchar](50) NULL,
	[WorkTime] [time](7) NULL,
	[Salary] [int] NULL,
	[FullPartTime] [bit] NULL,
	[Shift] [nvarchar](10) NULL,
	[WorkContent] [nvarchar](50) NULL,
	[updatetime] [date] NULL,
	[Seniority] [int] NULL,
	[Category] [nvarchar](10) NULL,
 CONSTRAINT [PK_Vacancy] PRIMARY KEY CLUSTERED 
(
	[VacancyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VacancySkill]    Script Date: 2023/1/3 下午 04:07:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VacancySkill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VacancyId] [int] NULL,
	[NeedSkillId] [int] NULL,
 CONSTRAINT [PK_VacancySkill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_InterestedCV]    Script Date: 2023/1/3 下午 04:07:17 ******/
CREATE NONCLUSTERED INDEX [IX_InterestedCV] ON [dbo].[InterestedCV]
(
	[CandidateId] ASC,
	[CVId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_InterestedEnterprise]    Script Date: 2023/1/3 下午 04:07:17 ******/
CREATE NONCLUSTERED INDEX [IX_InterestedEnterprise] ON [dbo].[InterestedEnterprise]
(
	[CandidateId] ASC,
	[EnterpriseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_InterestedPlatformArticle]    Script Date: 2023/1/3 下午 04:07:17 ******/
CREATE NONCLUSTERED INDEX [IX_InterestedPlatformArticle] ON [dbo].[InterestedPlatformArticle]
(
	[CandidateId] ASC,
	[PlatformArticleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Triangle] SET  READ_WRITE 
GO
