USE [master]
GO
/****** Object:  Database [School_Data]    Script Date: 6/3/2024 2:42:08 AM ******/
CREATE DATABASE [School_Data]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'School_Data', FILENAME = N'D:\Program Files\SQLDATA\MSSQL16.MSSQLSERVER\MSSQL\DATA\School_Data.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'School_Data_log', FILENAME = N'D:\Program Files\SQLDATA\MSSQL16.MSSQLSERVER\MSSQL\DATA\School_Data_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [School_Data] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [School_Data].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [School_Data] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [School_Data] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [School_Data] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [School_Data] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [School_Data] SET ARITHABORT OFF 
GO
ALTER DATABASE [School_Data] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [School_Data] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [School_Data] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [School_Data] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [School_Data] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [School_Data] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [School_Data] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [School_Data] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [School_Data] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [School_Data] SET  ENABLE_BROKER 
GO
ALTER DATABASE [School_Data] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [School_Data] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [School_Data] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [School_Data] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [School_Data] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [School_Data] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [School_Data] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [School_Data] SET RECOVERY FULL 
GO
ALTER DATABASE [School_Data] SET  MULTI_USER 
GO
ALTER DATABASE [School_Data] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [School_Data] SET DB_CHAINING OFF 
GO
ALTER DATABASE [School_Data] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [School_Data] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [School_Data] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [School_Data] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'School_Data', N'ON'
GO
ALTER DATABASE [School_Data] SET QUERY_STORE = ON
GO
ALTER DATABASE [School_Data] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [School_Data]
GO
/****** Object:  Table [dbo].[chicago_crime]    Script Date: 6/3/2024 2:42:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chicago_crime](
	[ID] [int] NULL,
	[CASE_NUMBER] [varchar](8) NULL,
	[DATE] [varchar](10) NULL,
	[BLOCK] [varchar](35) NULL,
	[IUCR] [varchar](4) NULL,
	[PRIMARY_TYPE] [varchar](33) NULL,
	[DESCRIPTION] [varchar](46) NULL,
	[LOCATION_DESCRIPTION] [varchar](33) NULL,
	[ARREST] [varchar](5) NULL,
	[DOMESTIC] [varchar](5) NULL,
	[BEAT] [int] NULL,
	[DISTRICT] [int] NULL,
	[WARD] [varchar](2) NULL,
	[COMMUNITY_AREA_NUMBER] [varchar](2) NULL,
	[FBICODE] [varchar](3) NULL,
	[X_COORDINATE] [varchar](7) NULL,
	[Y_COORDINATE] [varchar](7) NULL,
	[YEAR] [int] NULL,
	[LATITUDE] [varchar](30) NULL,
	[LONGITUDE] [varchar](30) NULL,
	[LOCATION] [varchar](29) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chicago_Public_Schools]    Script Date: 6/3/2024 2:42:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chicago_Public_Schools](
	[School_ID] [float] NULL,
	[NAME_OF_SCHOOL] [nvarchar](255) NULL,
	[Elementary, Middle, or High School] [nvarchar](255) NULL,
	[Street_Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[ZIP_Code] [float] NULL,
	[Phone_Number] [nvarchar](255) NULL,
	[Link] [nvarchar](255) NULL,
	[Network_Manager] [nvarchar](255) NULL,
	[Collaborative_Name] [nvarchar](255) NULL,
	[Adequate_Yearly_Progress_Made_] [nvarchar](255) NULL,
	[Track_Schedule] [nvarchar](255) NULL,
	[CPS_Performance_Policy_Status] [nvarchar](255) NULL,
	[CPS_Performance_Policy_Level] [nvarchar](255) NULL,
	[HEALTHY_SCHOOL_CERTIFIED] [nvarchar](255) NULL,
	[Safety_Icon] [nvarchar](255) NULL,
	[SAFETY_SCORE] [float] NULL,
	[Family_Involvement_Icon] [nvarchar](255) NULL,
	[Family_Involvement_Score] [float] NULL,
	[Environment_Icon] [nvarchar](255) NULL,
	[Environment_Score] [float] NULL,
	[Instruction_Icon] [nvarchar](255) NULL,
	[Instruction_Score] [float] NULL,
	[Leaders_Icon] [nvarchar](255) NULL,
	[Leaders_Score] [float] NULL,
	[Teachers_Icon] [nvarchar](255) NULL,
	[Teachers_Score] [float] NULL,
	[Parent_Engagement_Icon] [nvarchar](255) NULL,
	[Parent_Engagement_Score] [float] NULL,
	[Parent_Environment_Icon] [nvarchar](255) NULL,
	[Parent_Environment_Score] [float] NULL,
	[AVERAGE_STUDENT_ATTENDANCE] [float] NULL,
	[Rate_of_Misconducts__per_100_students_] [float] NULL,
	[Average_Teacher_Attendance] [float] NULL,
	[Individualized_Education_Program_Compliance_Rate] [float] NULL,
	[Pk_2_Literacy__] [float] NULL,
	[Pk_2_Math__] [nvarchar](255) NULL,
	[Gr3_5_Grade_Level_Math__] [float] NULL,
	[Gr3_5_Grade_Level_Read__] [float] NULL,
	[Gr3_5_Keep_Pace_Read__] [float] NULL,
	[Gr3_5_Keep_Pace_Math__] [float] NULL,
	[Gr6_8_Grade_Level_Math__] [float] NULL,
	[Gr6_8_Grade_Level_Read__] [float] NULL,
	[Gr6_8_Keep_Pace_Math_] [float] NULL,
	[Gr6_8_Keep_Pace_Read__] [float] NULL,
	[Gr_8_Explore_Math__] [float] NULL,
	[Gr_8_Explore_Read__] [float] NULL,
	[ISAT_Exceeding_Math__] [float] NULL,
	[ISAT_Exceeding_Reading__] [float] NULL,
	[ISAT_Value_Add_Math] [float] NULL,
	[ISAT_Value_Add_Read] [float] NULL,
	[ISAT_Value_Add_Color_Math] [nvarchar](255) NULL,
	[ISAT_Value_Add_Color_Read] [nvarchar](255) NULL,
	[Students_Taking__Algebra__] [float] NULL,
	[Students_Passing__Algebra__] [float] NULL,
	[9th Grade EXPLORE (2009)] [nvarchar](255) NULL,
	[9th Grade EXPLORE (2010)] [nvarchar](255) NULL,
	[10th Grade PLAN (2009)] [nvarchar](255) NULL,
	[10th Grade PLAN (2010)] [nvarchar](255) NULL,
	[Net_Change_EXPLORE_and_PLAN] [nvarchar](255) NULL,
	[11th Grade Average ACT (2011)] [nvarchar](255) NULL,
	[Net_Change_PLAN_and_ACT] [nvarchar](255) NULL,
	[College_Eligibility__] [nvarchar](255) NULL,
	[Graduation_Rate__] [nvarchar](255) NULL,
	[College_Enrollment_Rate__] [nvarchar](255) NULL,
	[COLLEGE_ENROLLMENT] [float] NULL,
	[General_Services_Route] [float] NULL,
	[Freshman_on_Track_Rate__] [nvarchar](255) NULL,
	[X_COORDINATE] [float] NULL,
	[Y_COORDINATE] [float] NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[COMMUNITY_AREA_NUMBER] [float] NULL,
	[COMMUNITY_AREA_NAME] [nvarchar](255) NULL,
	[Ward] [float] NULL,
	[Police_District] [float] NULL,
	[Location] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chicago_socioeconomic_data]    Script Date: 6/3/2024 2:42:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chicago_socioeconomic_data](
	[COMMUNITY_AREA_NUMBER] [varchar](2) NULL,
	[COMMUNITY_AREA_NAME] [varchar](22) NULL,
	[PERCENT_OF_HOUSING_CROWDED] [decimal](3, 1) NULL,
	[PERCENT_HOUSEHOLDS_BELOW_POVERTY] [decimal](3, 1) NULL,
	[PERCENT_AGED_16__UNEMPLOYED] [decimal](3, 1) NULL,
	[PERCENT_AGED_25__WITHOUT_HIGH_SCHOOL_DIPLOMA] [decimal](3, 1) NULL,
	[PERCENT_AGED_UNDER_18_OR_OVER_64] [decimal](3, 1) NULL,
	[PER_CAPITA_INCOME] [int] NULL,
	[HARDSHIP_INDEX] [varchar](2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [ID]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [CASE_NUMBER]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [DATE]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [BLOCK]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [IUCR]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [PRIMARY_TYPE]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [DESCRIPTION]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [LOCATION_DESCRIPTION]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [ARREST]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [DOMESTIC]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [BEAT]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [DISTRICT]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [WARD]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [COMMUNITY_AREA_NUMBER]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [FBICODE]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [X_COORDINATE]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [Y_COORDINATE]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [YEAR]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [LATITUDE]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [LONGITUDE]
GO
ALTER TABLE [dbo].[chicago_crime] ADD  DEFAULT (NULL) FOR [LOCATION]
GO
ALTER TABLE [dbo].[chicago_socioeconomic_data] ADD  DEFAULT (NULL) FOR [COMMUNITY_AREA_NUMBER]
GO
ALTER TABLE [dbo].[chicago_socioeconomic_data] ADD  DEFAULT (NULL) FOR [COMMUNITY_AREA_NAME]
GO
ALTER TABLE [dbo].[chicago_socioeconomic_data] ADD  DEFAULT (NULL) FOR [PERCENT_OF_HOUSING_CROWDED]
GO
ALTER TABLE [dbo].[chicago_socioeconomic_data] ADD  DEFAULT (NULL) FOR [PERCENT_HOUSEHOLDS_BELOW_POVERTY]
GO
ALTER TABLE [dbo].[chicago_socioeconomic_data] ADD  DEFAULT (NULL) FOR [PERCENT_AGED_16__UNEMPLOYED]
GO
ALTER TABLE [dbo].[chicago_socioeconomic_data] ADD  DEFAULT (NULL) FOR [PERCENT_AGED_25__WITHOUT_HIGH_SCHOOL_DIPLOMA]
GO
ALTER TABLE [dbo].[chicago_socioeconomic_data] ADD  DEFAULT (NULL) FOR [PERCENT_AGED_UNDER_18_OR_OVER_64]
GO
ALTER TABLE [dbo].[chicago_socioeconomic_data] ADD  DEFAULT (NULL) FOR [PER_CAPITA_INCOME]
GO
ALTER TABLE [dbo].[chicago_socioeconomic_data] ADD  DEFAULT (NULL) FOR [HARDSHIP_INDEX]
GO
USE [master]
GO
ALTER DATABASE [School_Data] SET  READ_WRITE 
GO
