USE [FEPMS]
GO
/****** Object:  Table [dbo].[AccessLog]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessLog](
	[id] [uniqueidentifier] NOT NULL,
	[date] [datetime] NULL,
	[user_full_name] [nvarchar](250) NULL,
	[ip_address] [nvarchar](150) NULL,
	[machine_name] [nvarchar](250) NULL,
	[operation] [nvarchar](250) NULL,
	[object_info] [nvarchar](250) NULL,
	[browser_info] [text] NULL,
 CONSTRAINT [PK_AccessLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LNK_ROLE_PERMISSION]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LNK_ROLE_PERMISSION](
	[RoleId] [uniqueidentifier] NOT NULL,
	[PermissionId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_LNK_ROLE_PERMISSION] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LNK_USER_ROLE]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LNK_USER_ROLE](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_LNK_USER_ROLE] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logins]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logins](
	[id] [uniqueidentifier] NOT NULL,
	[nonce] [varchar](50) NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_Logins] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERMISSIONS]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERMISSIONS](
	[PermissionId] [uniqueidentifier] NOT NULL,
	[PermissionDescription] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_PERMISSIONS] PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROLES]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLES](
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[RoleDescription] [nvarchar](250) NULL,
	[LastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_lu_CountryOfOrigin]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lu_CountryOfOrigin](
	[Id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_lu_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_lu_Incoterm]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lu_Incoterm](
	[Id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_lu_MOP] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_lu_MethodOfPayment]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lu_MethodOfPayment](
	[Id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_lu_MethodOfPayment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_lu_PortOfDestination]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lu_PortOfDestination](
	[Id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_lu_PortOfDestination] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_lu_PortOfLoading]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lu_PortOfLoading](
	[Id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_lu_PortOfLoading] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_lu_ShipmentAllowedBy]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lu_ShipmentAllowedBy](
	[Id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_lu_ShipmentAllowedBy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_lu_Status]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lu_Status](
	[Id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_lu_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblApplicant]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblApplicant](
	[Id] [uniqueidentifier] NOT NULL,
	[CIFNumber] [nvarchar](10) NOT NULL,
	[ApplicantName] [nvarchar](max) NOT NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblApplicant_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_tblApplicant] UNIQUE NONCLUSTERED 
(
	[CIFNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblApplication]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblApplication](
	[Id] [uniqueidentifier] NOT NULL,
	[PermitNumber] [nvarchar](50) NOT NULL,
	[ApplicantId] [uniqueidentifier] NOT NULL,
	[Date] [datetime] NOT NULL,
	[PermitStatusId] [uniqueidentifier] NOT NULL,
	[PermitType] [varchar](5) NOT NULL,
	[SerialNumberShelfId] [uniqueidentifier] NOT NULL,
	[PermitYear] [varchar](10) NOT NULL,
	[CurrencyType] [nvarchar](10) NULL,
	[CurrencyRate] [decimal](18, 6) NULL,
	[Amount] [decimal](18, 6) NULL,
	[RemainingAmount] [decimal](18, 6) NULL,
	[USDRate] [decimal](18, 6) NULL,
	[AmountInUSD] [decimal](18, 6) NULL,
	[RemainingAmountInUSD] [decimal](18, 6) NULL,
	[AmountInBirr] [decimal](18, 6) NULL,
	[RemainingAmountInBirr] [decimal](18, 6) NULL,
	[ApprovalStatus] [nvarchar](50) NULL,
	[NBEApprovalRefNumber] [nvarchar](50) NULL,
	[QueueRound] [nvarchar](50) NULL,
	[QueueNumber] [nvarchar](50) NULL,
	[OwnSourceValue] [nvarchar](50) NULL,
	[PurposeOfPayment] [varchar](max) NOT NULL,
	[Beneficiary] [varchar](max) NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [date] NULL,
	[IncreasedAmount] [decimal](18, 6) NULL,
	[IncreasedAmountInUSD] [decimal](18, 6) NULL,
	[IncreasedAmountInBirr] [decimal](18, 6) NULL,
	[DecreasedAmount] [decimal](18, 6) NULL,
	[DecreasedAmountInUSD] [decimal](18, 6) NULL,
	[DecreasedAmountInBirr] [decimal](18, 6) NULL,
 CONSTRAINT [PK_tblApplication] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_tblApplication] UNIQUE NONCLUSTERED 
(
	[PermitNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblApplicationAmount]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblApplicationAmount](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[ApprovalStatusId] [uniqueidentifier] NOT NULL,
	[CurrencyRate] [decimal](18, 6) NULL,
	[Amount] [decimal](18, 6) NULL,
	[AmountInUSD] [decimal](18, 6) NULL,
	[AmountInBirr] [decimal](18, 6) NULL,
	[USDRate] [decimal](18, 6) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ApprovedBy] [uniqueidentifier] NULL,
	[ApprovedDate] [datetime] NULL,
	[Reason] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblApplicationAmount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblItemPriority]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblItemPriority](
	[Id] [uniqueidentifier] NOT NULL,
	[Priority] [nvarchar](50) NOT NULL,
	[GroupBy] [nvarchar](300) NULL,
	[Name] [nvarchar](300) NULL,
 CONSTRAINT [PK_tblItemPriority] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMerchant]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMerchant](
	[Id] [uniqueidentifier] NOT NULL,
	[TinNumber] [nvarchar](15) NOT NULL,
	[ImporterName] [nvarchar](max) NULL,
	[TradeName] [nvarchar](max) NULL,
	[NBENumber] [nvarchar](50) NULL,
	[MobileNumber] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](254) NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblMerchant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_NBENumber_tblCustomer] UNIQUE NONCLUSTERED 
(
	[NBENumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_tblMerchant] UNIQUE NONCLUSTERED 
(
	[TinNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPermit]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPermit](
	[Id] [uniqueidentifier] NOT NULL,
	[PermitNumber] [nvarchar](50) NOT NULL,
	[MerchantId] [uniqueidentifier] NOT NULL,
	[Date] [datetime] NULL,
	[PermitStatusId] [uniqueidentifier] NULL,
	[PermitType] [varchar](5) NOT NULL,
	[SerialNumberShelfId] [uniqueidentifier] NOT NULL,
	[PermitYear] [varchar](10) NOT NULL,
	[LPCONumber] [nvarchar](50) NULL,
	[CurrencyType] [nvarchar](10) NOT NULL,
	[CurrencyRate] [decimal](18, 6) NULL,
	[Amount] [decimal](18, 6) NOT NULL,
	[AmountInBirr] [decimal](18, 6) NULL,
	[AmountInUSD] [decimal](18, 6) NULL,
	[RemainingAmount] [decimal](18, 6) NULL,
	[RemainingAmountInUSD] [decimal](18, 6) NULL,
	[RemainingAmountInBirr] [decimal](18, 6) NULL,
	[USDRate] [decimal](18, 6) NULL,
	[MethodOfPaymentId] [uniqueidentifier] NULL,
	[NonPriorityItems] [varchar](max) NULL,
	[ApprovalStatus] [nvarchar](50) NULL,
	[NBEApprovalRefNumber] [nvarchar](50) NULL,
	[QueueRound] [nvarchar](50) NULL,
	[QueueNumber] [nvarchar](50) NULL,
	[OwnSourceValue] [nvarchar](50) NULL,
	[IncreasedAmount] [decimal](18, 6) NULL,
	[IncreasedAmountInUSD] [decimal](18, 6) NULL,
	[IncreasedAmountInBirr] [decimal](18, 6) NULL,
	[DecreasedAmount] [decimal](18, 6) NULL,
	[DecreasedAmountInUSD] [decimal](18, 6) NULL,
	[DecreasedAmountInBirr] [decimal](18, 6) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [date] NULL,
 CONSTRAINT [PK_tblPermit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_tblPermit] UNIQUE NONCLUSTERED 
(
	[PermitNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPermitAmount]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPermitAmount](
	[Id] [uniqueidentifier] NOT NULL,
	[PermitId] [uniqueidentifier] NOT NULL,
	[ApprovalStatusId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ApprovedBy] [uniqueidentifier] NULL,
	[ApprovedDate] [datetime] NULL,
	[Reason] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblPermitAmount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPermitAmountDetail]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPermitAmountDetail](
	[Id] [uniqueidentifier] NOT NULL,
	[PermitAmountId] [uniqueidentifier] NOT NULL,
	[Amount] [decimal](18, 6) NOT NULL,
	[USDRate] [decimal](18, 6) NULL,
	[AmountInUSD] [decimal](18, 6) NULL,
	[CurrencyRate] [decimal](18, 6) NULL,
	[AmountInBirr] [decimal](18, 6) NULL,
 CONSTRAINT [PK_tblPermitAmountDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPermitCountryOfOrigin]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPermitCountryOfOrigin](
	[PermitId] [uniqueidentifier] NOT NULL,
	[CountryOfOriginId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblPermitCountryOfOrigin] PRIMARY KEY CLUSTERED 
(
	[PermitId] ASC,
	[CountryOfOriginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPermitIncoterm]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPermitIncoterm](
	[PermitId] [uniqueidentifier] NOT NULL,
	[IncotermId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblPermitIncoterm] PRIMARY KEY CLUSTERED 
(
	[PermitId] ASC,
	[IncotermId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPermitItemPriority]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPermitItemPriority](
	[PermitId] [uniqueidentifier] NOT NULL,
	[ItemPriorityId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_MerchantPermitItemPriority] PRIMARY KEY CLUSTERED 
(
	[PermitId] ASC,
	[ItemPriorityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPermitPortOfDestination]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPermitPortOfDestination](
	[PermitId] [uniqueidentifier] NOT NULL,
	[PortOfDestinationId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblPermitPortOfDestination] PRIMARY KEY CLUSTERED 
(
	[PermitId] ASC,
	[PortOfDestinationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPermitPortOfLoading]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPermitPortOfLoading](
	[PermitId] [uniqueidentifier] NOT NULL,
	[PortOfLoadingId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblPermitPortOfLoading] PRIMARY KEY CLUSTERED 
(
	[PermitId] ASC,
	[PortOfLoadingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPermitShipmentAllowedBy]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPermitShipmentAllowedBy](
	[PermitId] [uniqueidentifier] NOT NULL,
	[ShipmentAllowedById] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblPermitShipmentAllowedBy] PRIMARY KEY CLUSTERED 
(
	[PermitId] ASC,
	[ShipmentAllowedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPOPermitAmountDetail]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPOPermitAmountDetail](
	[Id] [uniqueidentifier] NOT NULL,
	[PermitAmountId] [uniqueidentifier] NOT NULL,
	[PermitId] [uniqueidentifier] NULL,
	[Amount] [decimal](18, 6) NOT NULL,
	[USDRate] [decimal](18, 6) NULL,
	[AmountInUSD] [decimal](18, 6) NULL,
	[CurrencyRate] [decimal](18, 6) NULL,
	[AmountInBirr] [decimal](18, 6) NULL,
 CONSTRAINT [PK_tblPOPermitAmountDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPOPermitDetail]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPOPermitDetail](
	[Id] [uniqueidentifier] NOT NULL,
	[POId] [uniqueidentifier] NULL,
	[PermitId] [uniqueidentifier] NULL,
	[AmountBeforePermit] [decimal](18, 6) NULL,
	[AmountAfterPermit] [decimal](18, 6) NULL,
	[AmountInUSDBeforePermit] [decimal](18, 6) NULL,
	[AmountInUSDAfterPermit] [decimal](18, 6) NULL,
	[AmountInBirrBeforePermit] [decimal](18, 6) NULL,
	[AmountInBirrAfterPermit] [decimal](18, 6) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_tblPOPermitDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPOPermitExpiry]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPOPermitExpiry](
	[Id] [uniqueidentifier] NOT NULL,
	[PermitId] [uniqueidentifier] NOT NULL,
	[ExpiryDate] [date] NOT NULL,
	[IsExtension] [bit] NULL,
	[ChargeCollected] [bit] NULL,
 CONSTRAINT [PK_tblPOPermitExpiry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSerialNumberShelf]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSerialNumberShelf](
	[Id] [uniqueidentifier] NOT NULL,
	[SerialNumberType] [varchar](10) NOT NULL,
	[SerialNumberValue] [int] NOT NULL,
	[IsLatest] [bit] NOT NULL,
	[Year] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tblSerialNumberShelf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 9/21/2024 12:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[UserId] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](100) NOT NULL,
	[LastModified] [datetime] NULL,
	[Inactive] [bit] NULL,
	[Firstname] [nvarchar](250) NULL,
	[Lastname] [nvarchar](250) NULL,
	[IDNo] [nvarchar](100) NULL,
	[Title] [nvarchar](100) NULL,
	[Initial] [nvarchar](100) NULL,
	[EMail] [nvarchar](100) NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ROLES] ADD  CONSTRAINT [DF_ROLES_LastModified]  DEFAULT (getdate()) FOR [LastModified]
GO
ALTER TABLE [dbo].[USERS] ADD  CONSTRAINT [DF_USERS_Inactive]  DEFAULT ((0)) FOR [Inactive]
GO
ALTER TABLE [dbo].[LNK_ROLE_PERMISSION]  WITH CHECK ADD  CONSTRAINT [FK_LNK_ROLE_PERMISSION_LNK_ROLE_PERMISSION] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[PERMISSIONS] ([PermissionId])
GO
ALTER TABLE [dbo].[LNK_ROLE_PERMISSION] CHECK CONSTRAINT [FK_LNK_ROLE_PERMISSION_LNK_ROLE_PERMISSION]
GO
ALTER TABLE [dbo].[LNK_ROLE_PERMISSION]  WITH CHECK ADD  CONSTRAINT [FK_LNK_ROLE_PERMISSION_ROLES] FOREIGN KEY([RoleId])
REFERENCES [dbo].[ROLES] ([RoleId])
GO
ALTER TABLE [dbo].[LNK_ROLE_PERMISSION] CHECK CONSTRAINT [FK_LNK_ROLE_PERMISSION_ROLES]
GO
ALTER TABLE [dbo].[LNK_USER_ROLE]  WITH NOCHECK ADD  CONSTRAINT [FK_LNK_USER_ROLE_ROLES] FOREIGN KEY([RoleId])
REFERENCES [dbo].[ROLES] ([RoleId])
GO
ALTER TABLE [dbo].[LNK_USER_ROLE] CHECK CONSTRAINT [FK_LNK_USER_ROLE_ROLES]
GO
ALTER TABLE [dbo].[LNK_USER_ROLE]  WITH NOCHECK ADD  CONSTRAINT [FK_LNK_USER_ROLE_USERS] FOREIGN KEY([UserId])
REFERENCES [dbo].[USERS] ([UserId])
GO
ALTER TABLE [dbo].[LNK_USER_ROLE] CHECK CONSTRAINT [FK_LNK_USER_ROLE_USERS]
GO
ALTER TABLE [dbo].[tblApplication]  WITH CHECK ADD  CONSTRAINT [FK_tblApplication_tbl_lu_Status] FOREIGN KEY([PermitStatusId])
REFERENCES [dbo].[tbl_lu_Status] ([Id])
GO
ALTER TABLE [dbo].[tblApplication] CHECK CONSTRAINT [FK_tblApplication_tbl_lu_Status]
GO
ALTER TABLE [dbo].[tblApplication]  WITH CHECK ADD  CONSTRAINT [FK_tblApplication_tblApplicant] FOREIGN KEY([ApplicantId])
REFERENCES [dbo].[tblApplicant] ([Id])
GO
ALTER TABLE [dbo].[tblApplication] CHECK CONSTRAINT [FK_tblApplication_tblApplicant]
GO
ALTER TABLE [dbo].[tblApplication]  WITH CHECK ADD  CONSTRAINT [FK_tblApplication_tblSerialNumberShelf] FOREIGN KEY([SerialNumberShelfId])
REFERENCES [dbo].[tblSerialNumberShelf] ([Id])
GO
ALTER TABLE [dbo].[tblApplication] CHECK CONSTRAINT [FK_tblApplication_tblSerialNumberShelf]
GO
ALTER TABLE [dbo].[tblApplication]  WITH CHECK ADD  CONSTRAINT [FK_tblApplication_USERS] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[USERS] ([UserId])
GO
ALTER TABLE [dbo].[tblApplication] CHECK CONSTRAINT [FK_tblApplication_USERS]
GO
ALTER TABLE [dbo].[tblApplicationAmount]  WITH CHECK ADD  CONSTRAINT [FK_tblApplicationAmount_tbl_lu_Status] FOREIGN KEY([ApprovalStatusId])
REFERENCES [dbo].[tbl_lu_Status] ([Id])
GO
ALTER TABLE [dbo].[tblApplicationAmount] CHECK CONSTRAINT [FK_tblApplicationAmount_tbl_lu_Status]
GO
ALTER TABLE [dbo].[tblApplicationAmount]  WITH CHECK ADD  CONSTRAINT [FK_tblApplicationAmount_tblApplication] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[tblApplication] ([Id])
GO
ALTER TABLE [dbo].[tblApplicationAmount] CHECK CONSTRAINT [FK_tblApplicationAmount_tblApplication]
GO
ALTER TABLE [dbo].[tblApplicationAmount]  WITH CHECK ADD  CONSTRAINT [FK_tblApplicationAmount_USERS] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[USERS] ([UserId])
GO
ALTER TABLE [dbo].[tblApplicationAmount] CHECK CONSTRAINT [FK_tblApplicationAmount_USERS]
GO
ALTER TABLE [dbo].[tblApplicationAmount]  WITH CHECK ADD  CONSTRAINT [FK_tblApplicationAmount_USERS1] FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[USERS] ([UserId])
GO
ALTER TABLE [dbo].[tblApplicationAmount] CHECK CONSTRAINT [FK_tblApplicationAmount_USERS1]
GO
ALTER TABLE [dbo].[tblPermit]  WITH CHECK ADD  CONSTRAINT [FK_tblMerchantPermit_tbl_lu_MethodOfPayment] FOREIGN KEY([MethodOfPaymentId])
REFERENCES [dbo].[tbl_lu_MethodOfPayment] ([Id])
GO
ALTER TABLE [dbo].[tblPermit] CHECK CONSTRAINT [FK_tblMerchantPermit_tbl_lu_MethodOfPayment]
GO
ALTER TABLE [dbo].[tblPermit]  WITH CHECK ADD  CONSTRAINT [FK_tblMerchantPermit_tblMerchantPermit] FOREIGN KEY([PermitStatusId])
REFERENCES [dbo].[tbl_lu_Status] ([Id])
GO
ALTER TABLE [dbo].[tblPermit] CHECK CONSTRAINT [FK_tblMerchantPermit_tblMerchantPermit]
GO
ALTER TABLE [dbo].[tblPermit]  WITH CHECK ADD  CONSTRAINT [FK_tblPermit_tblMerchant] FOREIGN KEY([MerchantId])
REFERENCES [dbo].[tblMerchant] ([Id])
GO
ALTER TABLE [dbo].[tblPermit] CHECK CONSTRAINT [FK_tblPermit_tblMerchant]
GO
ALTER TABLE [dbo].[tblPermit]  WITH CHECK ADD  CONSTRAINT [FK_tblPermit_tblSerialNumberShelf] FOREIGN KEY([SerialNumberShelfId])
REFERENCES [dbo].[tblSerialNumberShelf] ([Id])
GO
ALTER TABLE [dbo].[tblPermit] CHECK CONSTRAINT [FK_tblPermit_tblSerialNumberShelf]
GO
ALTER TABLE [dbo].[tblPermit]  WITH CHECK ADD  CONSTRAINT [FK_tblPermit_USERS] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[USERS] ([UserId])
GO
ALTER TABLE [dbo].[tblPermit] CHECK CONSTRAINT [FK_tblPermit_USERS]
GO
ALTER TABLE [dbo].[tblPermitAmount]  WITH CHECK ADD  CONSTRAINT [FK_tblPermitAmount_tbl_lu_Status] FOREIGN KEY([ApprovalStatusId])
REFERENCES [dbo].[tbl_lu_Status] ([Id])
GO
ALTER TABLE [dbo].[tblPermitAmount] CHECK CONSTRAINT [FK_tblPermitAmount_tbl_lu_Status]
GO
ALTER TABLE [dbo].[tblPermitAmount]  WITH CHECK ADD  CONSTRAINT [FK_tblPermitAmount_tblPermit] FOREIGN KEY([PermitId])
REFERENCES [dbo].[tblPermit] ([Id])
GO
ALTER TABLE [dbo].[tblPermitAmount] CHECK CONSTRAINT [FK_tblPermitAmount_tblPermit]
GO
ALTER TABLE [dbo].[tblPermitAmount]  WITH CHECK ADD  CONSTRAINT [FK_tblPermitAmount_USERS] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[USERS] ([UserId])
GO
ALTER TABLE [dbo].[tblPermitAmount] CHECK CONSTRAINT [FK_tblPermitAmount_USERS]
GO
ALTER TABLE [dbo].[tblPermitAmount]  WITH CHECK ADD  CONSTRAINT [FK_tblPermitAmount_USERS1] FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[USERS] ([UserId])
GO
ALTER TABLE [dbo].[tblPermitAmount] CHECK CONSTRAINT [FK_tblPermitAmount_USERS1]
GO
ALTER TABLE [dbo].[tblPermitAmountDetail]  WITH CHECK ADD  CONSTRAINT [FK_tblPermitAmountDetail_tblPermitAmount] FOREIGN KEY([PermitAmountId])
REFERENCES [dbo].[tblPermitAmount] ([Id])
GO
ALTER TABLE [dbo].[tblPermitAmountDetail] CHECK CONSTRAINT [FK_tblPermitAmountDetail_tblPermitAmount]
GO
ALTER TABLE [dbo].[tblPermitCountryOfOrigin]  WITH CHECK ADD  CONSTRAINT [FK_tblPermitCountryOfOrigin_tbl_lu_CountryOfOrigin] FOREIGN KEY([CountryOfOriginId])
REFERENCES [dbo].[tbl_lu_CountryOfOrigin] ([Id])
GO
ALTER TABLE [dbo].[tblPermitCountryOfOrigin] CHECK CONSTRAINT [FK_tblPermitCountryOfOrigin_tbl_lu_CountryOfOrigin]
GO
ALTER TABLE [dbo].[tblPermitCountryOfOrigin]  WITH CHECK ADD  CONSTRAINT [FK_tblPermitCountryOfOrigin_tblPermit] FOREIGN KEY([PermitId])
REFERENCES [dbo].[tblPermit] ([Id])
GO
ALTER TABLE [dbo].[tblPermitCountryOfOrigin] CHECK CONSTRAINT [FK_tblPermitCountryOfOrigin_tblPermit]
GO
ALTER TABLE [dbo].[tblPermitIncoterm]  WITH CHECK ADD  CONSTRAINT [FK_tblPermitIncoterm_tbl_lu_Incoterm] FOREIGN KEY([IncotermId])
REFERENCES [dbo].[tbl_lu_Incoterm] ([Id])
GO
ALTER TABLE [dbo].[tblPermitIncoterm] CHECK CONSTRAINT [FK_tblPermitIncoterm_tbl_lu_Incoterm]
GO
ALTER TABLE [dbo].[tblPermitIncoterm]  WITH CHECK ADD  CONSTRAINT [FK_tblPermitIncoterm_tblPermit] FOREIGN KEY([PermitId])
REFERENCES [dbo].[tblPermit] ([Id])
GO
ALTER TABLE [dbo].[tblPermitIncoterm] CHECK CONSTRAINT [FK_tblPermitIncoterm_tblPermit]
GO
ALTER TABLE [dbo].[tblPermitItemPriority]  WITH CHECK ADD  CONSTRAINT [FK_MerchantPermitItemPriority_tblItemPriority] FOREIGN KEY([ItemPriorityId])
REFERENCES [dbo].[tblItemPriority] ([Id])
GO
ALTER TABLE [dbo].[tblPermitItemPriority] CHECK CONSTRAINT [FK_MerchantPermitItemPriority_tblItemPriority]
GO
ALTER TABLE [dbo].[tblPermitItemPriority]  WITH CHECK ADD  CONSTRAINT [FK_tblPermitItemPriority_tblPermit] FOREIGN KEY([PermitId])
REFERENCES [dbo].[tblPermit] ([Id])
GO
ALTER TABLE [dbo].[tblPermitItemPriority] CHECK CONSTRAINT [FK_tblPermitItemPriority_tblPermit]
GO
ALTER TABLE [dbo].[tblPermitPortOfDestination]  WITH CHECK ADD  CONSTRAINT [FK_tblPermitPortOfDestination_tbl_lu_PortOfDestination] FOREIGN KEY([PortOfDestinationId])
REFERENCES [dbo].[tbl_lu_PortOfDestination] ([Id])
GO
ALTER TABLE [dbo].[tblPermitPortOfDestination] CHECK CONSTRAINT [FK_tblPermitPortOfDestination_tbl_lu_PortOfDestination]
GO
ALTER TABLE [dbo].[tblPermitPortOfDestination]  WITH CHECK ADD  CONSTRAINT [FK_tblPermitPortOfDestination_tblPermit] FOREIGN KEY([PermitId])
REFERENCES [dbo].[tblPermit] ([Id])
GO
ALTER TABLE [dbo].[tblPermitPortOfDestination] CHECK CONSTRAINT [FK_tblPermitPortOfDestination_tblPermit]
GO
ALTER TABLE [dbo].[tblPermitPortOfLoading]  WITH CHECK ADD  CONSTRAINT [FK_tblPermitPortOfLoading_tbl_lu_PortOfLoading] FOREIGN KEY([PortOfLoadingId])
REFERENCES [dbo].[tbl_lu_PortOfLoading] ([Id])
GO
ALTER TABLE [dbo].[tblPermitPortOfLoading] CHECK CONSTRAINT [FK_tblPermitPortOfLoading_tbl_lu_PortOfLoading]
GO
ALTER TABLE [dbo].[tblPermitPortOfLoading]  WITH CHECK ADD  CONSTRAINT [FK_tblPermitPortOfLoading_tblPermit] FOREIGN KEY([PermitId])
REFERENCES [dbo].[tblPermit] ([Id])
GO
ALTER TABLE [dbo].[tblPermitPortOfLoading] CHECK CONSTRAINT [FK_tblPermitPortOfLoading_tblPermit]
GO
ALTER TABLE [dbo].[tblPermitShipmentAllowedBy]  WITH CHECK ADD  CONSTRAINT [FK_tblPermitShipmentAllowedBy_tbl_lu_ShipmentAllowedBy] FOREIGN KEY([ShipmentAllowedById])
REFERENCES [dbo].[tbl_lu_ShipmentAllowedBy] ([Id])
GO
ALTER TABLE [dbo].[tblPermitShipmentAllowedBy] CHECK CONSTRAINT [FK_tblPermitShipmentAllowedBy_tbl_lu_ShipmentAllowedBy]
GO
ALTER TABLE [dbo].[tblPermitShipmentAllowedBy]  WITH CHECK ADD  CONSTRAINT [FK_tblPermitShipmentAllowedBy_tblPermit] FOREIGN KEY([PermitId])
REFERENCES [dbo].[tblPermit] ([Id])
GO
ALTER TABLE [dbo].[tblPermitShipmentAllowedBy] CHECK CONSTRAINT [FK_tblPermitShipmentAllowedBy_tblPermit]
GO
ALTER TABLE [dbo].[tblPOPermitAmountDetail]  WITH CHECK ADD  CONSTRAINT [FK_tblPOPermitAmountDetail_tblPermit] FOREIGN KEY([PermitId])
REFERENCES [dbo].[tblPermit] ([Id])
GO
ALTER TABLE [dbo].[tblPOPermitAmountDetail] CHECK CONSTRAINT [FK_tblPOPermitAmountDetail_tblPermit]
GO
ALTER TABLE [dbo].[tblPOPermitAmountDetail]  WITH CHECK ADD  CONSTRAINT [FK_tblPOPermitAmountDetail_tblPermitAmount] FOREIGN KEY([PermitAmountId])
REFERENCES [dbo].[tblPermitAmount] ([Id])
GO
ALTER TABLE [dbo].[tblPOPermitAmountDetail] CHECK CONSTRAINT [FK_tblPOPermitAmountDetail_tblPermitAmount]
GO
ALTER TABLE [dbo].[tblPOPermitDetail]  WITH CHECK ADD  CONSTRAINT [FK_tblPOPermitDetail_tblPermit] FOREIGN KEY([POId])
REFERENCES [dbo].[tblPermit] ([Id])
GO
ALTER TABLE [dbo].[tblPOPermitDetail] CHECK CONSTRAINT [FK_tblPOPermitDetail_tblPermit]
GO
ALTER TABLE [dbo].[tblPOPermitDetail]  WITH CHECK ADD  CONSTRAINT [FK_tblPOPermitDetail_tblPermit1] FOREIGN KEY([PermitId])
REFERENCES [dbo].[tblPermit] ([Id])
GO
ALTER TABLE [dbo].[tblPOPermitDetail] CHECK CONSTRAINT [FK_tblPOPermitDetail_tblPermit1]
GO
ALTER TABLE [dbo].[tblPOPermitExpiry]  WITH CHECK ADD  CONSTRAINT [FK_tblPOPermitExpiry_tblPermit] FOREIGN KEY([PermitId])
REFERENCES [dbo].[tblPermit] ([Id])
GO
ALTER TABLE [dbo].[tblPOPermitExpiry] CHECK CONSTRAINT [FK_tblPOPermitExpiry_tblPermit]
GO
