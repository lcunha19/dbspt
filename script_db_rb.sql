USE [REFERENCE_BROKER_DEV]
GO
/****** Object:  Table [dbo].[__APIResponse]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__APIResponse](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [bigint] NOT NULL,
	[status] [nvarchar](40) NOT NULL,
	[detail] [nvarchar](80) NULL,
	[description] [nvarchar](100) NULL,
	[help] [nvarchar](200) NULL,
	[cause] [nvarchar](100) NULL,
 CONSTRAINT [PK___APIResponse] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[__GeneralConfigs]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__GeneralConfigs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[root_folder] [nvarchar](100) NOT NULL,
	[path_to_reference_attachments] [nvarchar](100) NOT NULL,
	[min_acceptable_amount] [decimal](13, 2) NOT NULL,
	[max_acceptable_amount] [decimal](13, 2) NOT NULL,
 CONSTRAINT [PK___GeneralConfigs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_ApplicationAPIService]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_ApplicationAPIService](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](150) NULL,
	[url] [nvarchar](50) NOT NULL,
	[http_method] [nvarchar](10) NOT NULL,
	[id_application_module] [int] NOT NULL,
	[id_privilege] [int] NOT NULL,
 CONSTRAINT [PK__ApplicationAPIService] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_ApplicationMenu]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_ApplicationMenu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](150) NULL,
	[icon_name] [nvarchar](30) NULL,
	[id_application_module] [int] NULL,
 CONSTRAINT [PK__ApplicationMenu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_ApplicationMenuItem]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_ApplicationMenuItem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](150) NULL,
	[displaying_order] [int] NULL,
	[icon_name] [nvarchar](30) NULL,
	[page_link] [nvarchar](100) NOT NULL,
	[text] [nvarchar](50) NULL,
	[multi_language_key] [nvarchar](50) NULL,
	[id_application_menu] [int] NOT NULL,
	[id_parent_application_menu_item] [int] NULL,
	[id_privilege] [int] NULL,
	[displaying_level] [int] NOT NULL,
 CONSTRAINT [PK__ApplicationMenuItem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_ApplicationModule]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_ApplicationModule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[description] [nvarchar](150) NULL,
	[displaying_order] [int] NOT NULL,
	[icon_name] [nvarchar](15) NULL,
 CONSTRAINT [PK__ApplicationModule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_MFT_FMOVDetailLog]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_MFT_FMOVDetailLog](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[reference_number] [nvarchar](15) NOT NULL,
	[amount] [numeric](15, 2) NOT NULL,
	[transaction_date] [datetime] NOT NULL,
	[mft_client_processing_date] [datetime] NOT NULL,
	[response_identification_number] [bigint] NOT NULL,
	[product_code] [nvarchar](2) NOT NULL,
	[product_parameter] [nvarchar](2) NOT NULL,
	[terminal_type] [nvarchar](1) NOT NULL,
	[terminal_id] [nvarchar](10) NOT NULL,
	[terminal_location] [nvarchar](15) NOT NULL,
	[id_mftfile_fmov] [bigint] NOT NULL,
 CONSTRAINT [PK_MFFile_FMOV_Detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_MFT_FMOVLog]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_MFT_FMOVLog](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[filename] [nvarchar](50) NOT NULL,
	[mft_client_processing_date] [datetime] NOT NULL,
	[emis_processing_date] [date] NOT NULL,
	[sequence] [nvarchar](3) NOT NULL,
	[previous_file_id] [nvarchar](50) NULL,
	[payment_entity_number] [int] NOT NULL,
	[details_count] [int] NOT NULL,
	[valid_details_count] [int] NOT NULL,
	[total_amount] [numeric](15, 2) NOT NULL,
	[total_tax] [numeric](10, 2) NOT NULL,
	[currency_code] [nvarchar](3) NOT NULL,
	[is_mft_client_processing_finished] [bit] NOT NULL,
 CONSTRAINT [PK_MFT_ProcessedFile] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_PRT_MessageLog]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_PRT_MessageLog](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[request] [nvarchar](200) NOT NULL,
	[response] [nvarchar](200) NULL,
	[request_message_type] [nvarchar](6) NOT NULL,
	[response_message_type] [nvarchar](6) NULL,
	[payment_entity_number] [int] NULL,
	[reference_number] [nvarchar](15) NULL,
	[response_identification_number] [bigint] NULL,
	[amount] [decimal](13, 2) NULL,
	[request_date] [datetime] NOT NULL,
	[response_date] [datetime] NULL,
	[currency_code] [nvarchar](3) NULL,
	[product_code] [nvarchar](2) NULL,
	[product_parameter] [nvarchar](2) NULL,
	[terminal_type] [nvarchar](1) NULL,
	[terminal_id] [nvarchar](10) NULL,
	[terminal_location] [nvarchar](15) NULL,
	[emis_prt_processing_date] [datetime] NULL,
	[response_code] [nvarchar](1) NULL,
 CONSTRAINT [PK__PRT_MessageLog_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_PRT_Motor_Configs]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_PRT_Motor_Configs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[is_started] [bit] NOT NULL,
	[max_threads] [nchar](10) NOT NULL,
	[session_id] [nvarchar](50) NOT NULL,
	[bridge_hostname] [nvarchar](50) NOT NULL,
	[bridge_socket_port_number] [nvarchar](50) NOT NULL,
	[session_opening_pattern] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__PRT_Motor_Configs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_PRT_Motor_Logs]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_PRT_Motor_Logs](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_PRT_Motor_Logs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_PRT_PaymentNotificationHistory]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_PRT_PaymentNotificationHistory](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[reference_number] [char](15) NOT NULL,
	[amount_to_pay] [numeric](13, 2) NOT NULL,
	[partial_amount_to_pay] [numeric](13, 2) NULL,
	[payment_entity_number] [int] NOT NULL,
	[payment_slip_text] [nvarchar](400) NULL,
	[client_code] [nvarchar](10) NULL,
	[payment_slip_text_line_count] [int] NULL,
	[response_identification_number] [int] NOT NULL,
	[is_loaded_by_dispatcher] [bit] NOT NULL,
	[is_dispatched_by_dispatcher] [bit] NOT NULL,
	[is_received_from_emis] [bit] NOT NULL,
	[id_reference_in_history] [bigint] NULL,
 CONSTRAINT [PK__PRT_PaymentNotificationHistory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_PRT_PaymentNotificationInUse]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_PRT_PaymentNotificationInUse](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[reference_number] [char](15) NOT NULL,
	[amount_to_pay] [numeric](13, 2) NOT NULL,
	[partial_amount_to_pay] [numeric](11, 2) NULL,
	[payment_entity_number] [int] NOT NULL,
	[payment_slip_text] [nvarchar](400) NULL,
	[client_code] [nvarchar](10) NULL,
	[payment_slip_text_line_count] [int] NULL,
	[response_identification_number] [int] NOT NULL,
	[is_loaded_by_dispatcher] [bit] NOT NULL,
	[is_dispatched_by_dispatcher] [bit] NOT NULL,
	[is_received_from_emis] [bit] NOT NULL,
	[id_reference_in_history] [bigint] NULL,
 CONSTRAINT [PK_Payment_Notification] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ADD SENSITIVITY CLASSIFICATION TO [dbo].[_PRT_PaymentNotificationInUse].[payment_entity_number] WITH (label = 'Confidential', information_type = 'Financial');
GO
/****** Object:  Table [dbo].[_PRT_ReferenceToPayInHistory]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_PRT_ReferenceToPayInHistory](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[reference_number] [nvarchar](15) NOT NULL,
	[amount] [numeric](13, 2) NOT NULL,
	[payment_entity_number] [int] NOT NULL,
	[client_code] [nvarchar](10) NULL,
	[payment_slip_text] [nvarchar](30) NOT NULL,
	[payment_slip_text_line_count] [int] NULL,
	[response_identification_number] [bigint] NULL,
	[external_id] [nvarchar](10) NULL,
	[expiration_date] [datetime] NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[is_payment_entity_shared] [bit] NOT NULL,
	[is_waiting_for_payment_confirmation] [bit] NOT NULL,
	[payment_date] [datetime] NULL,
	[id_business] [bigint] NOT NULL,
	[is_paid] [bit] NOT NULL,
	[id_reference_in_history] [bigint] NOT NULL,
	[id_reference_type_category] [int] NOT NULL,
	[amount_paid] [numeric](13, 2) NOT NULL,
	[is_payment_prt_confirmed] [bit] NOT NULL,
	[is_payment_mft_confirmed] [bit] NOT NULL,
	[amount_paid_summed] [numeric](13, 2) NULL,
	[id_reference_amount_part] [bigint] NULL,
 CONSTRAINT [PK__PRT_ReferenceToPayHistory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_PRT_ReferenceToPayInUse]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_PRT_ReferenceToPayInUse](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[reference_number] [nvarchar](15) NOT NULL,
	[amount] [numeric](13, 2) NOT NULL,
	[payment_entity_number] [int] NOT NULL,
	[client_code] [nvarchar](10) NULL,
	[payment_slip_text] [nvarchar](30) NOT NULL,
	[payment_slip_text_line_count] [int] NULL,
	[response_identification_number] [bigint] NULL,
	[external_id] [nvarchar](10) NULL,
	[expiration_date] [datetime] NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[is_payment_entity_shared] [bit] NOT NULL,
	[is_waiting_for_payment_confirmation] [bit] NOT NULL,
	[payment_date] [datetime] NULL,
	[id_business] [bigint] NOT NULL,
	[id_reference_in_history] [bigint] NOT NULL,
	[id_reference_to_pay_in_history] [bigint] NOT NULL,
	[id_reference_type_category] [int] NOT NULL,
	[amount_paid] [numeric](13, 2) NOT NULL,
	[id_reference_amount_part] [bigint] NULL,
 CONSTRAINT [PK_References_to_Pay] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[number] [nvarchar](9) NOT NULL,
	[profilename] [nvarchar](50) NOT NULL,
	[is_active] [bit] NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[client_id] [nvarchar](50) NULL,
	[id_account_type] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ADD SENSITIVITY CLASSIFICATION TO [dbo].[Account].[username] WITH (label = 'Confidential', information_type = 'Credentials');
GO
ADD SENSITIVITY CLASSIFICATION TO [dbo].[Account].[password] WITH (label = 'Confidential', information_type = 'Credentials');
GO
ADD SENSITIVITY CLASSIFICATION TO [dbo].[Account].[number] WITH (label = 'Confidential - GDPR', information_type = 'National ID');
GO
/****** Object:  Table [dbo].[Account_Roles]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Roles](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_account] [bigint] NOT NULL,
	[id_role] [bigint] NOT NULL,
	[id_business] [bigint] NOT NULL,
 CONSTRAINT [PK_Account_Roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ADD SENSITIVITY CLASSIFICATION TO [dbo].[Account_Roles].[id_account] WITH (label = 'Confidential', information_type = 'Financial');
GO
/****** Object:  Table [dbo].[AccountType]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](150) NULL,
 CONSTRAINT [PK_AccountType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[street] [nvarchar](50) NOT NULL,
	[building_name] [nvarchar](50) NULL,
	[floor] [int] NULL,
	[house_number] [nvarchar](10) NULL,
	[id_county] [int] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ADD SENSITIVITY CLASSIFICATION TO [dbo].[Address].[street] WITH (label = 'Confidential', information_type = 'Contact Info');
GO
/****** Object:  Table [dbo].[Application_Variables]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application_Variables](
	[entity_number] [bigint] NOT NULL,
	[application_number] [bigint] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_General_Configs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bank]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[initials] [nvarchar](10) NOT NULL,
	[description] [nvarchar](150) NULL,
	[bna_code] [nchar](10) NULL,
 CONSTRAINT [PK_Bank] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankaryDetails]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankaryDetails](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[account_number] [nvarchar](50) NOT NULL,
	[account_iban] [nvarchar](50) NOT NULL,
	[comments] [nvarchar](100) NULL,
	[id_bank] [int] NULL,
	[bna_code] [nvarchar](50) NULL,
 CONSTRAINT [PK_BankDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ADD SENSITIVITY CLASSIFICATION TO [dbo].[BankaryDetails].[account_number] WITH (label = 'Confidential', information_type = 'Financial');
GO
ADD SENSITIVITY CLASSIFICATION TO [dbo].[BankaryDetails].[account_iban] WITH (label = 'Confidential', information_type = 'Financial');
GO
/****** Object:  Table [dbo].[Business]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Business](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[internal_number] [char](9) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[description] [nvarchar](150) NULL,
	[id_subscriber] [bigint] NOT NULL,
	[id_account] [bigint] NOT NULL,
	[token] [nvarchar](200) NOT NULL,
	[is_active] [bit] NOT NULL,
	[register_date] [date] NOT NULL,
	[id_payment_entity] [bigint] NULL,
	[icon_name] [nvarchar](20) NULL,
	[folder_name] [nvarchar](20) NOT NULL,
	[id_business_category] [int] NOT NULL,
	[min_acceptable_amount] [numeric](13, 2) NULL,
	[max_acceptable_amount] [numeric](13, 2) NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ADD SENSITIVITY CLASSIFICATION TO [dbo].[Business].[internal_number] WITH (label = 'Confidential - GDPR', information_type = 'National ID');
GO
ADD SENSITIVITY CLASSIFICATION TO [dbo].[Business].[id_account] WITH (label = 'Confidential', information_type = 'Financial');
GO
/****** Object:  Table [dbo].[Business_BusinessCategories]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Business_BusinessCategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_business] [bigint] NOT NULL,
	[id_business_category] [int] NOT NULL,
 CONSTRAINT [PK_BuinessCategories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Business_Partner]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Business_Partner](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_project] [bigint] NOT NULL,
	[id_partner] [bigint] NOT NULL,
	[id_bank_details] [bigint] NOT NULL,
 CONSTRAINT [PK_Project_Partner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessCategory]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](150) NULL,
	[icon] [nvarchar](50) NULL,
 CONSTRAINT [PK_ApplicationCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessPaymentNotificationConfig]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessPaymentNotificationConfig](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[notification_url] [nvarchar](50) NOT NULL,
	[client_id] [nvarchar](50) NOT NULL,
	[client_secret] [nvarchar](50) NOT NULL,
	[current_token] [nvarchar](500) NOT NULL,
	[id_business] [bigint] NOT NULL,
	[is_active] [bit] NOT NULL,
	[token_url] [nvarchar](50) NOT NULL,
	[is_started] [bit] NOT NULL,
 CONSTRAINT [PK_BusinessPaymentNotificationConfig] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessPaymentType]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessPaymentType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](150) NULL,
 CONSTRAINT [PK_ProjectPaymentType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[County]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[id_province] [int] NOT NULL,
 CONSTRAINT [PK_County] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fee]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fee](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ammount] [numeric](11, 2) NULL,
	[percentage] [float] NULL,
	[starting_date] [date] NOT NULL,
	[id_saleoff] [bigint] NOT NULL,
	[id_reference] [bigint] NULL,
 CONSTRAINT [PK_ReferenceSaleOff_Fee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[code] [varchar](4) NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](30) NOT NULL,
	[detail] [nvarchar](50) NOT NULL,
	[help] [nvarchar](50) NULL,
	[id_message] [bigint] NOT NULL,
	[language] [nvarchar](5) NOT NULL,
	[code] [char](9) NOT NULL,
	[type] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](150) NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[starting_date] [datetime] NOT NULL,
	[id_business] [bigint] NOT NULL,
	[id_partner] [bigint] NULL,
	[payment_entity_number] [int] NOT NULL,
	[id_reference_in_history] [bigint] NOT NULL,
	[account_number] [nvarchar](20) NOT NULL,
	[account_iban] [nvarchar](30) NOT NULL,
	[bank_name] [nvarchar](50) NOT NULL,
	[last_part_payment_date] [datetime] NOT NULL,
	[business_name] [nvarchar](50) NOT NULL,
	[subscriber_name] [nvarchar](50) NOT NULL,
	[ending_date] [datetime] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentEntity]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentEntity](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[entity_number] [int] NOT NULL,
	[description] [nvarchar](150) NULL,
	[reference_size] [int] NULL,
	[id_payment_entity_type] [int] NULL,
	[is_shared] [bit] NULL,
	[min_acceptable_amount] [decimal](13, 2) NULL,
	[max_acceptable_amount] [decimal](13, 2) NULL,
	[id_bankary_details] [bigint] NULL,
 CONSTRAINT [PK_PaymentEntity] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentEntityType]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentEntityType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
 CONSTRAINT [PK_PaymentEntityType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentPart]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentPart](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[amount] [numeric](13, 2) NOT NULL,
	[date] [datetime] NOT NULL,
	[id_payment] [bigint] NOT NULL,
	[product_code] [nvarchar](2) NULL,
	[product_parameter] [nvarchar](2) NULL,
	[terminal_type] [nvarchar](1) NULL,
	[terminal_id] [nvarchar](10) NULL,
	[terminal_location] [nvarchar](15) NULL,
	[currency_code] [nvarchar](3) NULL,
	[id_reference_amount_part] [bigint] NULL,
	[response_identification_number] [bigint] NULL,
 CONSTRAINT [PK_PaymentAmountPart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentRedirection_History]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentRedirection_History](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[percentage] [float] NOT NULL,
	[amount_sent] [numeric](13, 2) NOT NULL,
	[amount_received] [numeric](13, 2) NOT NULL,
	[amount_after_taxes] [numeric](13, 2) NOT NULL,
	[id_project] [bigint] NOT NULL,
	[id_partner] [bigint] NOT NULL,
 CONSTRAINT [PK_PaymentRedirection_History] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ADD SENSITIVITY CLASSIFICATION TO [dbo].[PaymentRedirection_History].[amount_after_taxes] WITH (label = 'Confidential', information_type = 'Financial');
GO
/****** Object:  Table [dbo].[PaymentsRedirection]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentsRedirection](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[percentage] [float] NOT NULL,
	[id_business] [bigint] NOT NULL,
	[id_partner] [bigint] NOT NULL,
 CONSTRAINT [PK_PaymentsRedirection] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentTransfer]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTransfer](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[date] [datetime] NOT NULL,
	[total_amount] [decimal](18, 2) NOT NULL,
	[id_payment_transfer_config] [bigint] NOT NULL,
	[external_id] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PaymentTransferHistory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentTransfer_PaymentPart]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTransfer_PaymentPart](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_payment_transfer] [bigint] NOT NULL,
	[id_payment_part] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_PaymentTransferHistory_Payment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentTransferConfig]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTransferConfig](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_source_business] [bigint] NOT NULL,
	[id_destination_business] [bigint] NOT NULL,
	[starting_date] [date] NOT NULL,
	[is_active] [bigint] NOT NULL,
 CONSTRAINT [PK_PaymentTransfer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Privilege]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Privilege](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](150) NULL,
 CONSTRAINT [PK_Privilege] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Province]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[id_country] [int] NOT NULL,
 CONSTRAINT [PK_Province] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReferenceAmountPart]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferenceAmountPart](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[amount] [numeric](13, 2) NOT NULL,
	[id_reference_in_use] [bigint] NULL,
	[id_reference_in_history] [bigint] NOT NULL,
 CONSTRAINT [PK_ReferenceAmountPart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReferenceInHistory]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferenceInHistory](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[reference_number] [varchar](50) NOT NULL,
	[expiration_date] [date] NOT NULL,
	[id_reference_type] [int] NOT NULL,
	[id_business] [bigint] NOT NULL,
	[description] [nvarchar](150) NULL,
	[amount] [numeric](13, 2) NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[is_in_use] [bit] NOT NULL,
	[alias] [nvarchar](50) NULL,
	[attachment] [nvarchar](50) NULL,
	[id_partner] [bigint] NULL,
	[payment_slip_text] [nvarchar](30) NULL,
	[client_code] [nvarchar](10) NULL,
	[payment_slip_text_line_count] [int] NULL,
	[group_name] [nvarchar](50) NULL,
	[phone_number] [nvarchar](20) NULL,
	[email] [nvarchar](30) NULL,
	[external_id] [nvarchar](50) NULL,
	[is_paid] [bit] NOT NULL,
	[is_expired] [bit] NULL,
	[is_has_payments] [bit] NOT NULL,
	[is_frozen] [bit] NOT NULL,
 CONSTRAINT [PK_ReferenceInHistory_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReferenceInUse]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferenceInUse](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[reference_number] [varchar](15) NOT NULL,
	[expiration_date] [date] NOT NULL,
	[id_reference_type] [int] NOT NULL,
	[id_business] [bigint] NOT NULL,
	[description] [nvarchar](150) NULL,
	[amount] [numeric](13, 2) NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[alias] [nvarchar](50) NULL,
	[attachment] [nvarchar](50) NULL,
	[id_partner] [bigint] NULL,
	[payment_slip_text] [nvarchar](30) NOT NULL,
	[client_code] [nvarchar](10) NULL,
	[payment_slip_text_line_count] [int] NULL,
	[group_name] [nvarchar](50) NULL,
	[phone_number] [nvarchar](20) NULL,
	[email] [nvarchar](30) NULL,
	[external_id] [nvarchar](50) NULL,
	[id_reference_in_history] [bigint] NOT NULL,
 CONSTRAINT [PK_ReferenceLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ADD SENSITIVITY CLASSIFICATION TO [dbo].[ReferenceInUse].[expiration_date] WITH (label = 'Confidential', information_type = 'Credit Card');
GO
/****** Object:  Table [dbo].[ReferenceLog]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferenceLog](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[reference_number] [varchar](15) NOT NULL,
	[event_date] [datetime] NOT NULL,
	[operation] [nvarchar](50) NOT NULL,
	[details] [text] NULL,
	[id_business] [bigint] NOT NULL,
	[business_name] [nvarchar](50) NOT NULL,
	[id_reference_type] [int] NOT NULL,
	[reference_type_name] [nvarchar](50) NOT NULL,
	[id_partner] [bigint] NULL,
	[partner_name] [nvarchar](50) NULL,
	[id_reference_in_history] [bigint] NOT NULL,
 CONSTRAINT [PK_ReferenceLog_2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReferenceType]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferenceType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](150) NULL,
	[shortening] [char](1) NOT NULL,
	[duration] [int] NOT NULL,
	[is_fixed_duration] [bit] NOT NULL,
	[is_active] [bit] NOT NULL,
	[max_acceptable_amount] [numeric](13, 2) NULL,
	[min_acceptable_amount] [numeric](13, 2) NULL,
	[id_reference_type_category] [int] NOT NULL,
	[min_acceptable_amount_part] [numeric](13, 2) NULL,
	[max_acceptable_amount_part] [numeric](13, 2) NULL,
 CONSTRAINT [PK_ReferenceType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReferenceTypeCategory]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferenceTypeCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
 CONSTRAINT [PK_ReferenceTypeCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](150) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Privileges]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Privileges](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_role] [bigint] NOT NULL,
	[id_privilege] [int] NOT NULL,
 CONSTRAINT [PK_Role_Privileges] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleOff]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleOff](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ammount] [numeric](11, 2) NOT NULL,
	[id_reference] [bigint] NOT NULL,
	[is_paid] [bit] NOT NULL,
 CONSTRAINT [PK_Reference_SaleOff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscriber]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscriber](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[internal_number] [char](4) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](150) NULL,
	[is_active] [bit] NOT NULL,
	[creation_date] [date] NOT NULL,
	[id_subscriber_type] [int] NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[phone_number] [nvarchar](13) NOT NULL,
	[id_bank_details] [bigint] NOT NULL,
	[id_account] [bigint] NOT NULL,
	[token] [nvarchar](200) NOT NULL,
	[id_subscriber_category] [int] NOT NULL,
	[fin] [nvarchar](20) NULL,
	[eac] [nvarchar](5) NULL,
	[id_address] [bigint] NULL,
	[initials] [nvarchar](50) NULL,
 CONSTRAINT [PK_Entity] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ADD SENSITIVITY CLASSIFICATION TO [dbo].[Subscriber].[internal_number] WITH (label = 'Confidential - GDPR', information_type = 'National ID');
GO
ADD SENSITIVITY CLASSIFICATION TO [dbo].[Subscriber].[email] WITH (label = 'Confidential', information_type = 'Contact Info');
GO
ADD SENSITIVITY CLASSIFICATION TO [dbo].[Subscriber].[phone_number] WITH (label = 'Confidential', information_type = 'Contact Info');
GO
ADD SENSITIVITY CLASSIFICATION TO [dbo].[Subscriber].[id_account] WITH (label = 'Confidential', information_type = 'Financial');
GO
/****** Object:  Table [dbo].[Subscriber_Partners]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscriber_Partners](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_company] [bigint] NOT NULL,
	[id_partner] [bigint] NOT NULL,
 CONSTRAINT [PK_Company_Partner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscriber_SubscriberCategories]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscriber_SubscriberCategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_subscriber] [bigint] NOT NULL,
	[id_subscriber_category] [int] NOT NULL,
 CONSTRAINT [PK_Subscriber_SubscriberCategories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubscriberCategory]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscriberCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](150) NULL,
	[icon] [nvarchar](50) NULL,
 CONSTRAINT [PK_EntityCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubscriberType]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscriberType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](150) NULL,
	[icon] [nvarchar](50) NULL,
 CONSTRAINT [PK_EntityType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ValidTokens]    Script Date: 26/04/2024 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValidTokens](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[client_id] [nvarchar](50) NOT NULL,
	[token] [nvarchar](450) NOT NULL,
	[expiry_date] [datetime] NOT NULL,
 CONSTRAINT [PK_ValidTokens] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[__APIResponse] ON 

INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (1, 2011, N'ReferenceCreated', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (2, 2001, N'LoginSucessful', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (3, 4041, N'AccountNotFound', N'Bad credentials, token or other data', NULL, NULL, N'[username, password]')
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (4, 5001, N'InternalError', N'If the error persists, please, contact the support team', NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (5, 4001, N'BadRequestInput', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (6, 4031, N'AccessDenied', N'Access to the service for the current business denied', NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (8, 4011, N'Unauthorized', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (9, 4004, N'InvalidReferenceSizeForBusiness', N'Reference digits count out of the bounds for the chosen Business.', N'', NULL, N'[referenceNumber]')
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (10, 4005, N'ReferenceNumberAlreadyExists', N'Reference already exists for the current Payment Entity', NULL, NULL, N'[referenceNumber]')
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (11, 4002, N'AccountBlocked', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (12, 4003, N'AccountExpired', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (16, 4007, N'InvalidAmountForReferenceType', N'Amount out of the bounds for the chosen ReferenceType', NULL, NULL, N'[amount]')
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (17, 4008, N'ReferenceAliasAlreadyExists', NULL, NULL, NULL, N'[alias]')
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (19, 4006, N'InvalidAmountForBusiness', N'Amount out of the bounds for the chosen Business', NULL, NULL, N'[amount]')
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (21, 2002, N'ReferencesFound', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (23, 4042, N'ReferencesNotFound', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (24, 2003, N'ReferenceLogsFound', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (25, 4043, N'ReferenceLogsNotFound', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (26, 2004, N'ReferenceUpdated', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (27, 2005, N'ReferenceDeleted', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (29, 2006, N'SubscribersFound', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (30, 4044, N'SubscribersNotFound', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (31, 2007, N'BusinessesFound', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (32, 4045, N'BusinessesNotFound', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (33, 2008, N'ReferenceTypesFound', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (34, 4046, N'ReferenceTypesNotFound', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (36, 4009, N'InvalidExpirationDateForReferenceType', N'Expiring date out of the bounds for the specified ReferenceType', NULL, NULL, N'[expirationDate]')
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (37, 2009, N'PaymentsFound', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (39, 4047, N'PaymentsNotFound', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (40, 40010, N'NoChangesFound', N'Update not executed because the data was not changed', NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (42, 40011, N'ReferenceExpired', N'Reference has expired', NULL, NULL, N'[expirationDate]')
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (43, 20010, N'NotificationConfigFound', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (44, 4048, N'NotificationConfigNotFound', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (45, 40012, N'NotificationConfigDisabled', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (46, 40013, N'NotificationConfigAlreadyStarted', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (47, 40014, N'NotificationConfigAlreadyPaused', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (48, 40015, N'NotificationConfigAlreadyEnabled', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (50, 40016, N'NotificationConfigAlreadyDisabled', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (51, 20011, N'NotificationConfigUpdated', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (52, 40017, N'ReferenceExternalIdAlreadyExists', NULL, NULL, NULL, N'[externalId]')
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (53, 40018, N'InvalidFileExtension', NULL, NULL, NULL, N'[attachment]')
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (54, 40019, N'AmountPartsNotAllowed', NULL, NULL, NULL, N'[amountParts]')
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (55, 40020, N'AmountPartsRequired', NULL, NULL, NULL, N'[amountParts]')
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (56, 40021, N'InvalidAmountPartsSum', NULL, NULL, NULL, N'[amountParts]')
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (57, 40022, N'InvalidAmountForPaymentByReference', N'Amount out of the bounds for a Payment by Reference', NULL, NULL, N'[amount]')
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (58, 40023, N'InvalidAmountPartForReferenceType', NULL, NULL, NULL, N'[amountParts]')
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (59, 40024, N'InvalidAmountPartForBusiness', NULL, NULL, NULL, N'[amountParts]')
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (60, 40025, N'InvalidAmountPartForPaymentByReference', NULL, NULL, NULL, N'[amountParts]')
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (63, 4032, N'SubscriberAccessDenied', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (65, 4033, N'BusinessAccessDenied', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (66, 40026, N'SubscriberNotActive', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (67, 40027, N'BusinessNotActive', NULL, NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (68, 40028, N'ReferencePaid', N'Reference already paid', NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (69, 40029, N'ReferenceFrozen', N'Reference frozen due to waiting for a payment confirmation', NULL, NULL, NULL)
INSERT [dbo].[__APIResponse] ([id], [code], [status], [detail], [description], [help], [cause]) VALUES (70, 40030, N'ReferenceHasPayments', N'Reference has payments', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[__APIResponse] OFF
GO
SET IDENTITY_INSERT [dbo].[__GeneralConfigs] ON 

INSERT [dbo].[__GeneralConfigs] ([id], [root_folder], [path_to_reference_attachments], [min_acceptable_amount], [max_acceptable_amount]) VALUES (1, N'C:\\_MyDevs\\MTR', N'\\References\\Attachments', CAST(100.00 AS Decimal(13, 2)), CAST(19999999.99 AS Decimal(13, 2)))
SET IDENTITY_INSERT [dbo].[__GeneralConfigs] OFF
GO
SET IDENTITY_INSERT [dbo].[_ApplicationMenu] ON 

INSERT [dbo].[_ApplicationMenu] ([id], [name], [description], [icon_name], [id_application_module]) VALUES (3, N'Main menu', NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[_ApplicationMenu] OFF
GO
SET IDENTITY_INSERT [dbo].[_ApplicationMenuItem] ON 

INSERT [dbo].[_ApplicationMenuItem] ([id], [name], [description], [displaying_order], [icon_name], [page_link], [text], [multi_language_key], [id_application_menu], [id_parent_application_menu_item], [id_privilege], [displaying_level]) VALUES (3, N'Dashboards', NULL, 1, N'fa fa-dashboard', N'#', N'Dashboards', NULL, 3, NULL, NULL, 0)
INSERT [dbo].[_ApplicationMenuItem] ([id], [name], [description], [displaying_order], [icon_name], [page_link], [text], [multi_language_key], [id_application_menu], [id_parent_application_menu_item], [id_privilege], [displaying_level]) VALUES (5, N'References management', NULL, 2, N'fa fa-dashboard', N'abc', N'Gerir Referências', NULL, 3, NULL, NULL, 0)
INSERT [dbo].[_ApplicationMenuItem] ([id], [name], [description], [displaying_order], [icon_name], [page_link], [text], [multi_language_key], [id_application_menu], [id_parent_application_menu_item], [id_privilege], [displaying_level]) VALUES (8, N'Reference creation submenu', N'CREATE', 1, NULL, N'/references/create', N'Criar', NULL, 3, 5, 2, 1)
INSERT [dbo].[_ApplicationMenuItem] ([id], [name], [description], [displaying_order], [icon_name], [page_link], [text], [multi_language_key], [id_application_menu], [id_parent_application_menu_item], [id_privilege], [displaying_level]) VALUES (14, N'Reference Other Operations', N'OTHERS', 2, NULL, N'/references/find', N'Procurar', NULL, 3, 5, 4, 1)
INSERT [dbo].[_ApplicationMenuItem] ([id], [name], [description], [displaying_order], [icon_name], [page_link], [text], [multi_language_key], [id_application_menu], [id_parent_application_menu_item], [id_privilege], [displaying_level]) VALUES (15, N'Dash Geral', N'DASH GERAL', 1, NULL, N'abc', N'Geral', NULL, 3, 3, 1, 1)
SET IDENTITY_INSERT [dbo].[_ApplicationMenuItem] OFF
GO
SET IDENTITY_INSERT [dbo].[_ApplicationModule] ON 

INSERT [dbo].[_ApplicationModule] ([id], [name], [description], [displaying_order], [icon_name]) VALUES (2, N'Clients Portal', NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[_ApplicationModule] OFF
GO
SET IDENTITY_INSERT [dbo].[_MFT_FMOVDetailLog] ON 

INSERT [dbo].[_MFT_FMOVDetailLog] ([id], [reference_number], [amount], [transaction_date], [mft_client_processing_date], [response_identification_number], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [id_mftfile_fmov]) VALUES (122, N'000000613934234', CAST(100.00 AS Numeric(15, 2)), CAST(N'2024-04-03T15:14:05.000' AS DateTime), CAST(N'2024-04-03T08:10:20.637' AS DateTime), 694158372325, N'01', N'00', N'M', N'0000000000', N'Internet', 406)
INSERT [dbo].[_MFT_FMOVDetailLog] ([id], [reference_number], [amount], [transaction_date], [mft_client_processing_date], [response_identification_number], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [id_mftfile_fmov]) VALUES (123, N'000000578518024', CAST(100.00 AS Numeric(15, 2)), CAST(N'2024-04-03T15:55:10.000' AS DateTime), CAST(N'2024-04-03T08:10:20.637' AS DateTime), 342254249554, N'01', N'00', N'A', N'0000062126', N'Luanda', 406)
INSERT [dbo].[_MFT_FMOVDetailLog] ([id], [reference_number], [amount], [transaction_date], [mft_client_processing_date], [response_identification_number], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [id_mftfile_fmov]) VALUES (124, N'000000742615136', CAST(100.00 AS Numeric(15, 2)), CAST(N'2024-04-03T16:54:39.000' AS DateTime), CAST(N'2024-04-03T09:10:17.723' AS DateTime), 234675592993, N'01', N'00', N'M', N'0000000000', N'Internet', 407)
INSERT [dbo].[_MFT_FMOVDetailLog] ([id], [reference_number], [amount], [transaction_date], [mft_client_processing_date], [response_identification_number], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [id_mftfile_fmov]) VALUES (125, N'000000770215683', CAST(100.00 AS Numeric(15, 2)), CAST(N'2024-04-03T17:18:12.000' AS DateTime), CAST(N'2024-04-03T10:10:13.873' AS DateTime), 24401532505, N'01', N'00', N'M', N'0000000000', N'Internet', 408)
INSERT [dbo].[_MFT_FMOVDetailLog] ([id], [reference_number], [amount], [transaction_date], [mft_client_processing_date], [response_identification_number], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [id_mftfile_fmov]) VALUES (126, N'000000836241599', CAST(100.00 AS Numeric(15, 2)), CAST(N'2024-04-03T17:40:08.000' AS DateTime), CAST(N'2024-04-03T10:10:13.873' AS DateTime), 423490623215, N'01', N'00', N'M', N'0000000000', N'Internet', 408)
INSERT [dbo].[_MFT_FMOVDetailLog] ([id], [reference_number], [amount], [transaction_date], [mft_client_processing_date], [response_identification_number], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [id_mftfile_fmov]) VALUES (127, N'000000328869088', CAST(100.00 AS Numeric(15, 2)), CAST(N'2024-04-03T18:45:26.000' AS DateTime), CAST(N'2024-04-03T11:10:31.337' AS DateTime), 696521604557, N'01', N'00', N'M', N'0000000000', N'Internet', 409)
SET IDENTITY_INSERT [dbo].[_MFT_FMOVDetailLog] OFF
GO
SET IDENTITY_INSERT [dbo].[_MFT_FMOVLog] ON 

INSERT [dbo].[_MFT_FMOVLog] ([id], [filename], [mft_client_processing_date], [emis_processing_date], [sequence], [previous_file_id], [payment_entity_number], [details_count], [valid_details_count], [total_amount], [total_tax], [currency_code], [is_mft_client_processing_finished]) VALUES (406, N'202404030075.inp', CAST(N'2024-04-03T08:10:20.637' AS DateTime), CAST(N'2024-04-03' AS Date), N'001', N'20231209002', 1090, 2, 2, CAST(200.00 AS Numeric(15, 2)), CAST(0.00 AS Numeric(10, 2)), N'024', 1)
INSERT [dbo].[_MFT_FMOVLog] ([id], [filename], [mft_client_processing_date], [emis_processing_date], [sequence], [previous_file_id], [payment_entity_number], [details_count], [valid_details_count], [total_amount], [total_tax], [currency_code], [is_mft_client_processing_finished]) VALUES (407, N'202404030076.inp', CAST(N'2024-04-03T09:10:17.723' AS DateTime), CAST(N'2024-04-03' AS Date), N'002', N'20240403001', 1090, 1, 1, CAST(100.00 AS Numeric(15, 2)), CAST(0.00 AS Numeric(10, 2)), N'024', 1)
INSERT [dbo].[_MFT_FMOVLog] ([id], [filename], [mft_client_processing_date], [emis_processing_date], [sequence], [previous_file_id], [payment_entity_number], [details_count], [valid_details_count], [total_amount], [total_tax], [currency_code], [is_mft_client_processing_finished]) VALUES (408, N'202404030077.inp', CAST(N'2024-04-03T10:10:13.873' AS DateTime), CAST(N'2024-04-03' AS Date), N'003', N'20240403002', 1090, 2, 2, CAST(200.00 AS Numeric(15, 2)), CAST(0.00 AS Numeric(10, 2)), N'024', 1)
INSERT [dbo].[_MFT_FMOVLog] ([id], [filename], [mft_client_processing_date], [emis_processing_date], [sequence], [previous_file_id], [payment_entity_number], [details_count], [valid_details_count], [total_amount], [total_tax], [currency_code], [is_mft_client_processing_finished]) VALUES (409, N'202404030078.inp', CAST(N'2024-04-03T11:10:31.337' AS DateTime), CAST(N'2024-04-03' AS Date), N'004', N'20240403003', 1090, 1, 1, CAST(100.00 AS Numeric(15, 2)), CAST(0.00 AS Numeric(10, 2)), N'024', 1)
SET IDENTITY_INSERT [dbo].[_MFT_FMOVLog] OFF
GO
SET IDENTITY_INSERT [dbo].[_PRT_MessageLog] ON 

INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (1, N'E038041249900880499010910000000494497310100000000200000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900880499010914000834597530Reference not found.          ', N'E03804', NULL, 1091, N'000000049449731', 834597530, CAST(20000.00 AS Decimal(13, 2)), CAST(N'2023-12-06T13:59:22.780' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (2, N'E038041249900167085010910000000494497310100000000200000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900167085010914584187828232Reference not found.          ', N'E03804', NULL, 1091, N'000000049449731', 584187828232, CAST(20000.00 AS Decimal(13, 2)), CAST(N'2023-12-06T14:01:37.180' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (3, N'E038041249900153241010910000006785019650100000001000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900153241010910338062357400Paid | Pago                   ', N'E03804', NULL, 1091, N'000000678501965', 338062357400, CAST(100000.00 AS Decimal(13, 2)), CAST(N'2023-12-06T14:08:59.997' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (4, N'E038041249900540206010910000000123456700100000020000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900540206010910593962497513Por pagar                     ', N'E03804', NULL, 1091, N'000000012345670', 593962497513, CAST(2000000.00 AS Decimal(13, 2)), CAST(N'2023-12-06T14:15:17.693' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (5, N'E038041249900258493010910000000123456700100000020000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900258493010910483812281093Por pagar                     ', N'E03804', NULL, 1091, N'000000012345670', 483812281093, CAST(2000000.00 AS Decimal(13, 2)), CAST(N'2023-12-06T14:33:08.697' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (6, N'E038041249900689783010910000000012345670100000020000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900689783010910158185444071Por pagar                     ', N'E03804', NULL, 1091, N'000000001234567', 158185444071, CAST(2000000.00 AS Decimal(13, 2)), CAST(N'2023-12-06T14:44:46.427' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (7, N'E038041249900466134010910000000001234560100000020000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900466134010910012356825573Por pagar                     ', N'E03804', NULL, 1091, N'000000000123456', 12356825573, CAST(2000000.00 AS Decimal(13, 2)), CAST(N'2023-12-06T14:47:03.817' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (8, N'E04000127180000259401091127180000259320211008082912012356825573', N'E14000127180000259401091127180000259320211008082912012356825573', N'E04000', NULL, 1091, NULL, 12356825573, NULL, CAST(N'2023-12-06T14:47:04.313' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (9, N'E038048767312464919010900000000000001230100000000001000020231206172716M000000000000000000Internet       000000000000000000024', N'E138048767312464919010904328459757972Reference not found.          ', N'E03804', NULL, 1090, N'000000000000123', 328459757972, CAST(100.00 AS Decimal(13, 2)), CAST(N'2023-12-06T08:27:16.973' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (10, N'E038048767312633804010900000006362330740100000000001000020231206173844M000000000000000000Internet       000000000000000000024', N'E138048767312633804010900148239901096Por pagar                     ', N'E03804', NULL, 1090, N'000000636233074', 148239901096, CAST(100.00 AS Decimal(13, 2)), CAST(N'2023-12-06T08:38:55.217' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (11, N'E038048767312815157010900000000000001230100000000001000020231206175056M000000000000000000Internet       000000000000000000024', N'E138048767312815157010904171431695547Reference not found.          ', N'E03804', NULL, 1090, N'000000000000123', 171431695547, CAST(100.00 AS Decimal(13, 2)), CAST(N'2023-12-06T08:50:57.167' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (12, N'E038048767313090988010900000004079642990100000000001000020231206180927M000000000000000000Internet       000000000000000000024', N'E138048767313090988010900054102336932Por pagar                     ', N'E03804', NULL, 1090, N'000000407964299', 54102336932, CAST(100.00 AS Decimal(13, 2)), CAST(N'2023-12-06T09:09:29.123' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (13, N'E038048767313240704010900000000726455310100000000001000020231206181935M000000000000000000Internet       000000000000000000024', N'E138048767313240704010900756089370705Por pagar                     ', N'E03804', NULL, 1090, N'000000072645531', 756089370705, CAST(100.00 AS Decimal(13, 2)), CAST(N'2023-12-06T09:19:35.897' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (14, N'E038041767313479964010900000004926490290100000000002000020231206183531A000001460501900082Luanda         000000000000000000024', N'E138041767313479964010904384107396540An invalid amount was used.   ', N'E03804', NULL, 1090, N'000000492649029', 384107396540, CAST(200.00 AS Decimal(13, 2)), CAST(N'2023-12-06T09:35:31.923' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (15, N'E04000176731350400601090176731350389920231206183709030301702844', N'E14000176731350400601090176731350389920231206183709030301702844', N'E04000', NULL, 1090, NULL, 30301702844, NULL, CAST(N'2023-12-06T09:37:09.480' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (16, N'E038041767313503899010900000004926490290100000000001000020231206183709A000001460501900087Luanda         000000000000000000024', N'E138041767313503899010900030301702844Por pagar                     ', N'E03804', NULL, 1090, N'000000492649029', 30301702844, CAST(100.00 AS Decimal(13, 2)), CAST(N'2023-12-06T09:37:09.853' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (17, N'E038041249900451596010910000007979029690100000000001000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900451596010914243739173987Reference not found.          ', N'E03804', NULL, 1091, N'000000797902969', 243739173987, CAST(100.00 AS Decimal(13, 2)), CAST(N'2023-12-09T21:01:57.363' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (18, N'E04000127180000259401090127180000259320211008082912384896959308', N'E14000127180000259401090127180000259320211008082912384896959308', N'E04000', NULL, 1090, NULL, 384896959308, NULL, CAST(N'2023-12-09T21:02:07.540' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (19, N'E038041249900969650010900000007979029690100000000001000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900969650010900384896959308Por pagar                     ', N'E03804', NULL, 1090, N'000000797902969', 384896959308, CAST(100.00 AS Decimal(13, 2)), CAST(N'2023-12-09T21:02:21.710' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (20, N'E038041249900193616010900000003550448380100000000001000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900193616010904210861295576PRTReferenceToPayInUse not found.', N'E03804', NULL, 1090, N'000000355044838', 210861295576, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-02T21:23:50.820' AS DateTime), CAST(N'2024-04-02T21:23:50.847' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA         ', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (21, N'E038041249900991720010900000006538475810100000000001000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900991720010900912928266416Por pagar                     ', N'E03804', NULL, 1090, N'000000653847581', 912928266416, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-02T21:27:27.977' AS DateTime), CAST(N'2024-04-02T21:27:28.007' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA         ', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (22, N'E04000127180000259401090127180000259320211008082912912928266416', N'E14000127180000259401090127180000259320211008082912912928266416', N'E04000', NULL, NULL, NULL, 912928266416, NULL, CAST(N'2024-04-02T21:27:29.737' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (23, N'E038041249900071084010900000002736109180100000000001000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900071084010900510861249302Por pagar                     ', N'E03804', NULL, 1090, N'000000273610918', 510861249302, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-02T21:43:54.843' AS DateTime), CAST(N'2024-04-02T21:43:54.993' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA         ', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (24, N'E04000127180000259401090127180000259320211008082912510861249302', N'E14000127180000259401090127180000259320211008082912510861249302', N'E04000', NULL, NULL, NULL, 510861249302, NULL, CAST(N'2024-04-02T21:43:57.077' AS DateTime), CAST(N'2024-04-02T21:43:57.083' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (25, N'E038041249900483655010900000002736109180100000000001000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900483655010904134198761392ReferenceToPayInUse not found.', N'E03804', N'E13804', 1090, N'000000273610918', 134198761392, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-02T22:03:00.200' AS DateTime), CAST(N'2024-04-02T22:03:00.367' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA         ', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (26, N'E038041249900249536010900000002510226790100000000001000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900249536010900155130556959Por pagar                     ', N'E03804', N'E13804', 1090, N'000000251022679', 155130556959, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-02T22:03:20.667' AS DateTime), CAST(N'2024-04-02T22:03:20.703' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA         ', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (27, N'E04000127180000259401090127180000259320211008082912155130556959', N'E14000127180000259401090127180000259320211008082912155130556959', N'E04000', N'E14000', NULL, NULL, 155130556959, NULL, CAST(N'2024-04-02T22:03:22.273' AS DateTime), CAST(N'2024-04-02T22:03:22.287' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (28, N'E038041249900345162010900000004560248030100000000001000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900345162010900778191651873Por pagar                     ', N'E03804', N'E13804', 1090, N'000000456024803', 778191651873, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-02T22:17:24.650' AS DateTime), CAST(N'2024-04-02T22:17:24.907' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (29, N'E04000127180000259401090127180000259320211008082912778191651873', N'E14000127180000259401090127180000259320211008082912778191651873', N'E04000', N'E14000', NULL, NULL, 778191651873, NULL, CAST(N'2024-04-02T22:17:26.643' AS DateTime), CAST(N'2024-04-02T22:17:26.647' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (30, N'E038041249900211922010900000009683571360100000000001000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900211922010900630834830170Por pagar                     ', N'E03804', N'E13804', 1090, N'000000968357136', 630834830170, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-02T22:30:30.907' AS DateTime), CAST(N'2024-04-02T22:30:31.073' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (31, N'E04000127180000259401090127180000259320211008082912630834830170', N'E14000127180000259401090127180000259320211008082912630834830170', N'E04000', N'E14000', NULL, NULL, 630834830170, NULL, CAST(N'2024-04-02T22:30:32.490' AS DateTime), CAST(N'2024-04-02T22:30:32.493' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (32, N'E038041249900519484010900000003409199570100000000001000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900519484010904834065969937An invalid amount was used.   ', N'E03804', N'E13804', 1090, N'000000340919957', 834065969937, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-02T22:31:32.397' AS DateTime), CAST(N'2024-04-02T22:31:32.420' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (33, N'E038041249900838340010900000003409199570100000100000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900838340010900207384810730Por pagar                     ', N'E03804', N'E13804', 1090, N'000000340919957', 207384810730, CAST(10000000.00 AS Decimal(13, 2)), CAST(N'2024-04-02T22:31:45.627' AS DateTime), CAST(N'2024-04-02T22:31:45.680' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (34, N'E04000127180000259401090127180000259320211008082912207384810730', N'E14000127180000259401090127180000259320211008082912207384810730', N'E04000', N'E14000', NULL, NULL, 207384810730, NULL, CAST(N'2024-04-02T22:31:47.747' AS DateTime), CAST(N'2024-04-02T22:31:47.750' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (35, N'E038041249900856735010900000003409199570100000100000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900856735010900392392885597Por pagar                     ', N'E03804', N'E13804', 1090, N'000000340919957', 392392885597, CAST(10000000.00 AS Decimal(13, 2)), CAST(N'2024-04-02T22:31:53.520' AS DateTime), CAST(N'2024-04-02T22:31:53.547' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (36, N'E04000127180000259401090127180000259320211008082912392392885597', N'E14000127180000259401090127180000259320211008082912392392885597', N'E04000', N'E14000', NULL, NULL, 392392885597, NULL, CAST(N'2024-04-02T22:31:55.560' AS DateTime), CAST(N'2024-04-02T22:31:55.563' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (37, N'E038041249900812103010900000003409199570100000100000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900812103010904914246041071ReferenceToPayInUse not found.', N'E03804', N'E13804', 1090, N'000000340919957', 914246041071, CAST(10000000.00 AS Decimal(13, 2)), CAST(N'2024-04-02T22:31:58.297' AS DateTime), CAST(N'2024-04-02T22:31:58.317' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (38, N'E038041249900116474010900000003409199570100000100000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900116474010904656987762530ReferenceToPayInUse not found.', N'E03804', N'E13804', 1090, N'000000340919957', 656987762530, CAST(10000000.00 AS Decimal(13, 2)), CAST(N'2024-04-02T22:32:49.427' AS DateTime), CAST(N'2024-04-02T22:32:49.457' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (39, N'E038041249900432938010900000005640286940100000100000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900432938010904260630984816An invalid amount was used.   ', N'E03804', N'E13804', 1090, N'000000564028694', 260630984816, CAST(10000000.00 AS Decimal(13, 2)), CAST(N'2024-04-02T22:33:10.113' AS DateTime), CAST(N'2024-04-02T22:33:10.387' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (40, N'E038041249900266627010900000005640286940100000010000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900266627010900531019507500Por pagar                     ', N'E03804', N'E13804', 1090, N'000000564028694', 531019507500, CAST(1000000.00 AS Decimal(13, 2)), CAST(N'2024-04-02T22:33:21.223' AS DateTime), CAST(N'2024-04-02T22:33:21.260' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (41, N'E04000127180000259401090127180000259320211008082912531019507500', N'E14000127180000259401090127180000259320211008082912531019507500', N'E04000', N'E14000', NULL, NULL, 531019507500, NULL, CAST(N'2024-04-02T22:33:23.290' AS DateTime), CAST(N'2024-04-02T22:33:23.290' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (42, N'E038041249900705906010900000005640286940100000010000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900705906010900642630147876Por pagar                     ', N'E03804', N'E13804', 1090, N'000000564028694', 642630147876, CAST(1000000.00 AS Decimal(13, 2)), CAST(N'2024-04-02T22:33:24.937' AS DateTime), CAST(N'2024-04-02T22:33:24.960' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (43, N'E04000127180000259401090127180000259320211008082912642630147876', N'E14000127180000259401090127180000259320211008082912642630147876', N'E04000', N'E14000', NULL, NULL, 642630147876, NULL, CAST(N'2024-04-02T22:33:26.947' AS DateTime), CAST(N'2024-04-02T22:33:26.947' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (44, N'E038041249900465929010900000005640286940100000020000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900465929010904541803723669ReferenceToPayInUse not found.', N'E03804', N'E13804', 1090, N'000000564028694', 541803723669, CAST(2000000.00 AS Decimal(13, 2)), CAST(N'2024-04-02T22:33:33.947' AS DateTime), CAST(N'2024-04-02T22:33:33.970' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (45, N'E038041249900340538010900000005640286940100000005000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900340538010904627092145702ReferenceToPayInUse not found.', N'E03804', N'E13804', 1090, N'000000564028694', 627092145702, CAST(500000.00 AS Decimal(13, 2)), CAST(N'2024-04-02T22:33:41.970' AS DateTime), CAST(N'2024-04-02T22:33:41.997' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (46, N'E038041249900596636010900000006752469630100000005000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900596636010900137261965676Por pagar                     ', N'E03804', N'E13804', 1090, N'000000675246963', 137261965676, CAST(500000.00 AS Decimal(13, 2)), CAST(N'2024-04-02T23:29:19.217' AS DateTime), CAST(N'2024-04-02T23:29:19.387' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (47, N'E038041249900206007010900000006752469630100000008000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900206007010900658730153895Por pagar                     ', N'E03804', N'E13804', 1090, N'000000675246963', 658730153895, CAST(800000.00 AS Decimal(13, 2)), CAST(N'2024-04-02T23:29:28.167' AS DateTime), CAST(N'2024-04-02T23:29:28.193' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (48, N'E04000127180000259401090127180000259320211008082912137261965676', N'E14000127180000259401090127180000259320211008082912137261965676', N'E04000', N'E14000', NULL, NULL, 137261965676, NULL, CAST(N'2024-04-02T23:29:21.287' AS DateTime), CAST(N'2024-04-02T23:29:21.290' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (49, N'E04000127180000259401090127180000259320211008082912658730153895', N'E14000127180000259401090127180000259320211008082912658730153895', N'E04000', N'E14000', NULL, NULL, 658730153895, NULL, CAST(N'2024-04-02T23:29:30.110' AS DateTime), CAST(N'2024-04-02T23:29:30.110' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (50, N'E038041249900218500010900000006752469630100000012000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900218500010904718579670626An invalid amount was used.   ', N'E03804', N'E13804', 1090, N'000000675246963', 718579670626, CAST(1200000.00 AS Decimal(13, 2)), CAST(N'2024-04-02T23:29:39.260' AS DateTime), CAST(N'2024-04-02T23:29:39.287' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (51, N'E038041249900440264010900000006752469630100000001200000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900440264010900434998601203Por pagar                     ', N'E03804', N'E13804', 1090, N'000000675246963', 434998601203, CAST(120000.00 AS Decimal(13, 2)), CAST(N'2024-04-02T23:29:53.537' AS DateTime), CAST(N'2024-04-02T23:29:53.563' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (52, N'E04000127180000259401090127180000259320211008082912434998601203', N'E14000127180000259401090127180000259320211008082912434998601203', N'E04000', N'E14000', NULL, NULL, 434998601203, NULL, CAST(N'2024-04-02T23:29:55.547' AS DateTime), CAST(N'2024-04-02T23:29:55.547' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (53, N'E038041249900255161010900000006752469630100000005800000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900255161010900665194003175Por pagar                     ', N'E03804', N'E13804', 1090, N'000000675246963', 665194003175, CAST(580000.00 AS Decimal(13, 2)), CAST(N'2024-04-02T23:31:21.780' AS DateTime), CAST(N'2024-04-02T23:31:21.827' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (54, N'E04000127180000259401090127180000259320211008082912665194003175', N'E14000127180000259401090127180000259320211008082912665194003175', N'E04000', N'E14000', NULL, NULL, 665194003175, NULL, CAST(N'2024-04-02T23:31:23.623' AS DateTime), CAST(N'2024-04-02T23:31:23.623' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (55, N'E038041249900401555010900000006752469630100000000001000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900401555010904813651892849ReferenceToPayInUse not found.', N'E03804', N'E13804', 1090, N'000000675246963', 813651892849, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-02T23:31:29.713' AS DateTime), CAST(N'2024-04-02T23:31:29.737' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (56, N'E038041249900052783010900000001963253080100000100000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900052783010900454888471059Por pagar                     ', N'E03804', N'E13804', 1090, N'000000196325308', 454888471059, CAST(10000000.00 AS Decimal(13, 2)), CAST(N'2024-04-02T23:33:31.873' AS DateTime), CAST(N'2024-04-02T23:33:31.923' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (57, N'E04000127180000259401090127180000259320211008082912454888471059', N'E14000127180000259401090127180000259320211008082912454888471059', N'E04000', N'E14000', NULL, NULL, 454888471059, NULL, CAST(N'2024-04-02T23:33:33.497' AS DateTime), CAST(N'2024-04-02T23:33:33.497' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (58, N'E038041249900263264010900000001963253080100000100000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900263264010900088491422744Por pagar                     ', N'E03804', N'E13804', 1090, N'000000196325308', 88491422744, CAST(10000000.00 AS Decimal(13, 2)), CAST(N'2024-04-02T23:33:37.737' AS DateTime), CAST(N'2024-04-02T23:33:37.760' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (59, N'E04000127180000259401090127180000259320211008082912088491422744', N'E14000127180000259401090127180000259320211008082912088491422744', N'E04000', N'E14000', NULL, NULL, 88491422744, NULL, CAST(N'2024-04-02T23:33:39.220' AS DateTime), CAST(N'2024-04-02T23:33:39.220' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (60, N'E038041249900630032010900000008188146210100000100000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900630032010900081274361497Por pagar                     ', N'E03804', N'E13804', 1090, N'000000818814621', 81274361497, CAST(10000000.00 AS Decimal(13, 2)), CAST(N'2024-04-02T23:50:10.940' AS DateTime), CAST(N'2024-04-02T23:50:10.973' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (61, N'E04000127180000259401090127180000259320211008082912081274361497', N'E14000127180000259401090127180000259320211008082912081274361497', N'E04000', N'E14000', NULL, NULL, 81274361497, NULL, CAST(N'2024-04-02T23:50:12.777' AS DateTime), CAST(N'2024-04-02T23:50:12.777' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (62, N'E038041249900604972010900000006370708700100000100000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900604972010900667844540371Por pagar                     ', N'E03804', N'E13804', 1090, N'000000637070870', 667844540371, CAST(10000000.00 AS Decimal(13, 2)), CAST(N'2024-04-03T00:00:16.330' AS DateTime), CAST(N'2024-04-03T00:00:16.547' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (63, N'E04000127180000259401090127180000259320211008082912667844540371', N'E14000127180000259401090127180000259320211008082912667844540371', N'E04000', N'E14000', NULL, NULL, 667844540371, NULL, CAST(N'2024-04-03T00:00:18.027' AS DateTime), CAST(N'2024-04-03T00:00:18.033' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (64, N'E038041249900600680010900000006967878530100000000001000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900600680010900116705111858Por pagar                     ', N'E03804', N'E13804', 1090, N'000000696787853', 116705111858, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-03T00:02:07.563' AS DateTime), CAST(N'2024-04-03T00:02:07.590' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (65, N'E04000127180000259401090127180000259320211008082912116705111858', N'E14000127180000259401090127180000259320211008082912116705111858', N'E04000', N'E14000', NULL, NULL, 116705111858, NULL, CAST(N'2024-04-03T00:02:09.237' AS DateTime), CAST(N'2024-04-03T00:02:09.237' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (66, N'E038041249900774312010900000006967878530100000000001000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900774312010904321250109254ReferenceToPayInUse not found.', N'E03804', N'E13804', 1090, N'000000696787853', 321250109254, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-03T00:08:06.150' AS DateTime), CAST(N'2024-04-03T00:08:06.337' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (67, N'E038041249900845335010900000007793575640100000000001000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900845335010900661577365739Por pagar                     ', N'E03804', N'E13804', 1090, N'000000779357564', 661577365739, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-03T00:08:23.773' AS DateTime), CAST(N'2024-04-03T00:08:23.810' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (68, N'E04000127180000259401090127180000259320211008082912661577365739', N'E14000127180000259401090127180000259320211008082912661577365739', N'E04000', N'E14000', NULL, NULL, 661577365739, NULL, CAST(N'2024-04-03T00:08:25.317' AS DateTime), CAST(N'2024-04-03T00:08:25.317' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (69, N'E038041249900095859010900000009237523090100000100000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900095859010900804231403167Por pagar                     ', N'E03804', N'E13804', 1090, N'000000923752309', 804231403167, CAST(10000000.00 AS Decimal(13, 2)), CAST(N'2024-04-03T00:09:26.827' AS DateTime), CAST(N'2024-04-03T00:09:26.860' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (70, N'E04000127180000259401090127180000259320211008082912804231403167', N'E14000127180000259401090127180000259320211008082912804231403167', N'E04000', N'E14000', NULL, NULL, 804231403167, NULL, CAST(N'2024-04-03T00:09:28.507' AS DateTime), CAST(N'2024-04-03T00:09:28.507' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (71, N'E038041249900056294010900000009237523090100000100000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900056294010900969981041306Por pagar                     ', N'E03804', N'E13804', 1090, N'000000923752309', 969981041306, CAST(10000000.00 AS Decimal(13, 2)), CAST(N'2024-04-03T00:09:44.467' AS DateTime), CAST(N'2024-04-03T00:09:44.493' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (72, N'E04000127180000259401090127180000259320211008082912969981041306', N'E14000127180000259401090127180000259320211008082912969981041306', N'E04000', N'E14000', NULL, NULL, 969981041306, NULL, CAST(N'2024-04-03T00:09:45.710' AS DateTime), CAST(N'2024-04-03T00:09:45.710' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (73, N'E038041249900441828010900000009237523090100000100000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900441828010904281956037875ReferenceToPayInUse not found.', N'E03804', N'E13804', 1090, N'000000923752309', 281956037875, CAST(10000000.00 AS Decimal(13, 2)), CAST(N'2024-04-03T00:09:49.323' AS DateTime), CAST(N'2024-04-03T00:09:49.347' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (74, N'E038041249900341711010900000009836882630100000010000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900341711010900122663474359Por pagar                     ', N'E03804', N'E13804', 1090, N'000000983688263', 122663474359, CAST(1000000.00 AS Decimal(13, 2)), CAST(N'2024-04-03T00:11:31.897' AS DateTime), CAST(N'2024-04-03T00:11:31.927' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (75, N'E04000127180000259401090127180000259320211008082912122663474359', N'E14000127180000259401090127180000259320211008082912122663474359', N'E04000', N'E14000', NULL, NULL, 122663474359, NULL, CAST(N'2024-04-03T00:11:33.677' AS DateTime), CAST(N'2024-04-03T00:11:33.677' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (76, N'E038041249900282192010900000009873330630100000010000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900282192010900816291955375Por pagar                     ', N'E03804', N'E13804', 1090, N'000000987333063', 816291955375, CAST(1000000.00 AS Decimal(13, 2)), CAST(N'2024-04-03T00:12:07.483' AS DateTime), CAST(N'2024-04-03T00:12:07.510' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (77, N'E04000127180000259401090127180000259320211008082912816291955375', N'E14000127180000259401090127180000259320211008082912816291955375', N'E04000', N'E14000', NULL, NULL, 816291955375, NULL, CAST(N'2024-04-03T00:12:08.677' AS DateTime), CAST(N'2024-04-03T00:12:08.677' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (78, N'E038041249900809824010900000009873330630100000010000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900809824010900115027381211Por pagar                     ', N'E03804', N'E13804', 1090, N'000000987333063', 115027381211, CAST(1000000.00 AS Decimal(13, 2)), CAST(N'2024-04-03T00:13:00.507' AS DateTime), CAST(N'2024-04-03T00:13:00.540' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (79, N'E04000127180000259401090127180000259320211008082912115027381211', N'E14000127180000259401090127180000259320211008082912115027381211', N'E04000', N'E14000', NULL, NULL, 115027381211, NULL, CAST(N'2024-04-03T00:13:02.497' AS DateTime), CAST(N'2024-04-03T00:13:02.497' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (80, N'E038041249900537846010900000009873330630100000010000000020201023123138A000000010300600116LUANDA         000000000000000000024', N'E138041249900537846010904846354640630ReferenceToPayInUse not found.', N'E03804', N'E13804', 1090, N'000000987333063', 846354640630, CAST(1000000.00 AS Decimal(13, 2)), CAST(N'2024-04-03T00:13:05.387' AS DateTime), CAST(N'2024-04-03T00:13:05.410' AS DateTime), N'024', N'01', N'00', N'A', N'0000000103', N'LUANDA', CAST(N'2020-10-23T12:31:38.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (81, N'E038048779204433074010901231231231231230100000000001000020240403085023M000000000000000000Internet       000000000000000000024', N'E138048779204433074010904321632968650ReferenceToPayInUse not found.', N'E03804', N'E13804', 1090, N'123123123123123', 321632968650, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-03T00:50:23.493' AS DateTime), CAST(N'2024-04-03T00:50:38.027' AS DateTime), N'024', N'01', N'00', N'M', N'0000000000', N'Internet', CAST(N'2024-04-03T08:50:23.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (82, N'E038048779204685691010900000000000000030100000000001000020240403090555M000000000000000000Internet       000000000000000000024', N'E138048779204685691010904756777069433ReferenceToPayInUse not found.', N'E03804', N'E13804', 1090, N'000000000000003', 756777069433, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-03T01:05:55.077' AS DateTime), CAST(N'2024-04-03T01:05:55.343' AS DateTime), N'024', N'01', N'00', N'M', N'0000000000', N'Internet', CAST(N'2024-04-03T09:05:55.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (83, N'E038048779206697316010900000000000001230100000000001000020240403110116M000000000000000000Internet       000000000000000000024', N'E138048779206697316010904322077988367ReferenceToPayInUse not found.', N'E03804', N'E13804', 1090, N'000000000000123', 322077988367, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-03T03:01:16.573' AS DateTime), CAST(N'2024-04-03T03:01:16.823' AS DateTime), N'024', N'01', N'00', N'M', N'0000000000', N'Internet', CAST(N'2024-04-03T11:01:16.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (84, N'E038048779206707969010900000000000004560100000000001000020240403110150M000000000000000000Internet       000000000000000000024', N'E138048779206707969010904593590023192ReferenceToPayInUse not found.', N'E03804', N'E13804', 1090, N'000000000000456', 593590023192, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-03T03:01:50.783' AS DateTime), CAST(N'2024-04-03T03:01:50.813' AS DateTime), N'024', N'01', N'00', N'M', N'0000000000', N'Internet', CAST(N'2024-04-03T11:01:50.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (85, N'E038048779211111496010900000006139342340100000000001000020240403151405M000000000000000000Internet       000000000000000000024', N'E138048779211111496010900694158372325Por pagar                     ', N'E03804', N'E13804', 1090, N'000000613934234', 694158372325, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-03T07:14:05.653' AS DateTime), CAST(N'2024-04-03T07:14:05.933' AS DateTime), N'024', N'01', N'00', N'M', N'0000000000', N'Internet', CAST(N'2024-04-03T15:14:05.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (86, N'E038041779211782193010900000005785180240100000000001000020240403155510A000006212600701221Luanda         000000000000000000024', N'E138041779211782193010900342254249554Por pagar                     ', N'E03804', N'E13804', 1090, N'000000578518024', 342254249554, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-03T07:55:10.177' AS DateTime), CAST(N'2024-04-03T07:55:10.210' AS DateTime), N'024', N'01', N'00', N'A', N'0000062126', N'Luanda', CAST(N'2024-04-03T15:55:10.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (87, N'E04000177921178232401090177921178219320240403155510342254249554', N'E14000177921178232401090177921178219320240403155510342254249554', N'E04000', N'E14000', NULL, NULL, 342254249554, NULL, CAST(N'2024-04-03T07:55:10.257' AS DateTime), CAST(N'2024-04-03T07:55:10.257' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (88, N'E038048779212746962010900000007426151360100000000010000020240403165428M000000000000000000Internet       000000000000000000024', N'E138048779212746962010904560670309782An invalid amount was used.   ', N'E03804', N'E13804', 1090, N'000000742615136', 560670309782, CAST(1000.00 AS Decimal(13, 2)), CAST(N'2024-04-03T08:54:28.170' AS DateTime), CAST(N'2024-04-03T08:54:28.200' AS DateTime), N'024', N'01', N'00', N'M', N'0000000000', N'Internet', CAST(N'2024-04-03T16:54:28.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (89, N'E038048779212750054010900000007426151360100000000001000020240403165439M000000000000000000Internet       000000000000000000024', N'E138048779212750054010900234675592993Por pagar                     ', N'E03804', N'E13804', 1090, N'000000742615136', 234675592993, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-03T08:54:39.750' AS DateTime), CAST(N'2024-04-03T08:54:39.767' AS DateTime), N'024', N'01', N'00', N'M', N'0000000000', N'Internet', CAST(N'2024-04-03T16:54:39.000' AS DateTime), NULL)
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (90, N'E038048779213130423010900000007702156830100000000001000020240403171812M000000000000000000Internet       000000000000000000024', N'E138048779213130423010900024401532505Por pagar                     ', N'E03804', N'E13804', 1090, N'000000770215683', 24401532505, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-03T09:18:12.923' AS DateTime), CAST(N'2024-04-03T09:18:13.190' AS DateTime), N'024', N'01', N'00', N'M', N'0000000000', N'Internet', CAST(N'2024-04-03T17:18:12.000' AS DateTime), N'0')
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (91, N'E038048779213139413010900000000000001230100000000001000020240403171846M000000000000000000Internet       000000000000000000024', N'E138048779213139413010904964114064431ReferenceToPayInUse not found.', N'E03804', N'E13804', 1090, N'000000000000123', 964114064431, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-03T09:18:46.520' AS DateTime), CAST(N'2024-04-03T09:18:46.533' AS DateTime), N'024', N'01', N'00', N'M', N'0000000000', N'Internet', CAST(N'2024-04-03T17:18:46.000' AS DateTime), N'4')
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (92, N'E038048779213479495010900000008362415990100000000001000020240403174008M000000000000000000Internet       000000000000000000024', N'E138048779213479495010900423490623215Por pagar                     ', N'E03804', N'E13804', 1090, N'000000836241599', 423490623215, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-03T09:40:08.930' AS DateTime), CAST(N'2024-04-03T09:40:08.947' AS DateTime), N'024', N'01', N'00', N'M', N'0000000000', N'Internet', CAST(N'2024-04-03T17:40:08.000' AS DateTime), N'0')
INSERT [dbo].[_PRT_MessageLog] ([id], [request], [response], [request_message_type], [response_message_type], [payment_entity_number], [reference_number], [response_identification_number], [amount], [request_date], [response_date], [currency_code], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [emis_prt_processing_date], [response_code]) VALUES (93, N'E038048779214535486010900000003288690880100000000001000020240403184526M000000000000000000Internet       000000000000000000024', N'E138048779214535486010900696521604557Por pagar                     ', N'E03804', N'E13804', 1090, N'000000328869088', 696521604557, CAST(100.00 AS Decimal(13, 2)), CAST(N'2024-04-03T10:45:26.977' AS DateTime), CAST(N'2024-04-03T10:45:27.010' AS DateTime), N'024', N'01', N'00', N'M', N'0000000000', N'Internet', CAST(N'2024-04-03T18:45:26.000' AS DateTime), N'0')
SET IDENTITY_INSERT [dbo].[_PRT_MessageLog] OFF
GO
SET IDENTITY_INSERT [dbo].[_PRT_Motor_Configs] ON 

INSERT [dbo].[_PRT_Motor_Configs] ([id], [is_started], [max_threads], [session_id], [bridge_hostname], [bridge_socket_port_number], [session_opening_pattern]) VALUES (1, 0, N'100       ', N'39800101', N'localhost', N'30210', N'APL=sibs.deswin.prt.PrtSrvGateway,PRTSES=#{session-number}')
SET IDENTITY_INSERT [dbo].[_PRT_Motor_Configs] OFF
GO
SET IDENTITY_INSERT [dbo].[_PRT_PaymentNotificationInUse] ON 

INSERT [dbo].[_PRT_PaymentNotificationInUse] ([id], [reference_number], [amount_to_pay], [partial_amount_to_pay], [payment_entity_number], [payment_slip_text], [client_code], [payment_slip_text_line_count], [response_identification_number], [is_loaded_by_dispatcher], [is_dispatched_by_dispatcher], [is_received_from_emis], [id_reference_in_history]) VALUES (3, N'000000000000001', CAST(10.00 AS Numeric(13, 2)), CAST(10.00 AS Numeric(11, 2)), 398, N'Slip text...', N'001987', 10, 2000, 0, 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[_PRT_PaymentNotificationInUse] OFF
GO
SET IDENTITY_INSERT [dbo].[_PRT_ReferenceToPayInHistory] ON 

INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (50, N'000000678501965', CAST(1000000.00 AS Numeric(13, 2)), 1091, NULL, N'Paid | Pago', NULL, 214018499840, NULL, CAST(N'2024-02-21T00:00:00.350' AS DateTime), CAST(N'2023-10-24T09:42:59.333' AS DateTime), 1, 1, CAST(N'2023-10-24T09:43:06.677' AS DateTime), 3, 1, 10, 1, CAST(0.00 AS Numeric(13, 2)), 1, 0, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (51, N'000000678501965', CAST(1000000.00 AS Numeric(13, 2)), 1091, NULL, N'Paid | Pago', NULL, 213645842339, NULL, CAST(N'2024-02-21T00:00:00.137' AS DateTime), CAST(N'2023-10-24T09:43:43.123' AS DateTime), 1, 1, CAST(N'2023-10-24T09:48:26.737' AS DateTime), 3, 0, 11, 3, CAST(1000000.00 AS Numeric(13, 2)), 1, 0, CAST(1000000.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (54, N'000000001234567', CAST(2000000.00 AS Numeric(13, 2)), 1091, NULL, N'Por pagar', NULL, 158185444071, NULL, CAST(N'2024-03-31T00:00:00.457' AS DateTime), CAST(N'2023-12-02T18:26:24.450' AS DateTime), 1, 0, CAST(N'2023-12-06T14:44:25.877' AS DateTime), 1, 1, 14, 1, CAST(0.00 AS Numeric(13, 2)), 1, 1, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (55, N'000000000123456', CAST(2000000.00 AS Numeric(13, 2)), 1091, NULL, N'Por pagar', NULL, 12356825573, NULL, CAST(N'2024-03-31T00:00:00.687' AS DateTime), CAST(N'2023-12-02T18:30:07.670' AS DateTime), 1, 0, CAST(N'2023-12-06T14:47:03.063' AS DateTime), 1, 1, 15, 1, CAST(0.00 AS Numeric(13, 2)), 1, 1, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (59, N'000000407964299', CAST(100.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 54102336932, NULL, CAST(N'2024-04-04T00:00:00.853' AS DateTime), CAST(N'2023-12-06T17:36:29.847' AS DateTime), 1, 0, CAST(N'2023-12-06T09:09:28.343' AS DateTime), 1, 1, 19, 1, CAST(0.00 AS Numeric(13, 2)), 1, 1, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (60, N'000000072645531', CAST(100.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 756089370705, NULL, CAST(N'2024-04-04T00:00:00.610' AS DateTime), CAST(N'2023-12-06T09:06:16.610' AS DateTime), 1, 0, CAST(N'2023-12-06T09:19:35.457' AS DateTime), 1, 1, 20, 1, CAST(0.00 AS Numeric(13, 2)), 1, 1, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (61, N'000000492649029', CAST(100.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 30301702844, NULL, CAST(N'2024-04-04T00:00:00.157' AS DateTime), CAST(N'2023-12-06T09:06:20.140' AS DateTime), 1, 0, CAST(N'2023-12-06T09:37:09.433' AS DateTime), 1, 1, 21, 1, CAST(0.00 AS Numeric(13, 2)), 1, 1, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (64, N'000000797902969', CAST(100.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 384896959308, NULL, CAST(N'2024-04-07T00:00:00.000' AS DateTime), CAST(N'2023-12-09T21:00:18.263' AS DateTime), 1, 0, CAST(N'2023-12-09T21:02:06.270' AS DateTime), 1, 1, 24, 1, CAST(0.00 AS Numeric(13, 2)), 1, 1, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (65, N'000000355044838', CAST(100.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 875839781073, NULL, CAST(N'2024-07-31T00:00:00.000' AS DateTime), CAST(N'2024-04-02T21:15:00.297' AS DateTime), 1, 1, CAST(N'2024-04-02T21:18:21.427' AS DateTime), 1, 0, 25, 1, CAST(100.00 AS Numeric(13, 2)), 0, 0, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (66, N'000000653847581', CAST(100.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 912928266416, NULL, CAST(N'2024-07-31T00:00:00.000' AS DateTime), CAST(N'2024-04-02T21:27:16.197' AS DateTime), 1, 1, CAST(N'2024-04-02T21:27:28.033' AS DateTime), 1, 0, 26, 1, CAST(100.00 AS Numeric(13, 2)), 0, 0, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (67, N'000000273610918', CAST(100.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 510861249302, NULL, CAST(N'2024-07-31T00:00:00.000' AS DateTime), CAST(N'2024-04-02T21:41:55.367' AS DateTime), 1, 1, CAST(N'2024-04-02T21:43:55.043' AS DateTime), 1, 0, 27, 1, CAST(100.00 AS Numeric(13, 2)), 0, 0, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (68, N'000000251022679', CAST(100.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 155130556959, NULL, CAST(N'2024-07-31T00:00:00.000' AS DateTime), CAST(N'2024-04-02T22:03:06.470' AS DateTime), 1, 1, CAST(N'2024-04-02T22:03:20.737' AS DateTime), 1, 0, 28, 1, CAST(100.00 AS Numeric(13, 2)), 0, 0, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (69, N'000000456024803', CAST(100.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 778191651873, NULL, CAST(N'2024-07-31T00:00:00.000' AS DateTime), CAST(N'2024-04-02T22:16:57.960' AS DateTime), 1, 1, CAST(N'2024-04-02T22:17:24.957' AS DateTime), 1, 1, 29, 1, CAST(0.00 AS Numeric(13, 2)), 1, 0, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (70, N'000000968357136', CAST(100.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 630834830170, NULL, CAST(N'2024-07-31T00:00:00.000' AS DateTime), CAST(N'2024-04-02T22:30:20.007' AS DateTime), 1, 1, CAST(N'2024-04-02T22:30:31.120' AS DateTime), 1, 1, 30, 1, CAST(0.00 AS Numeric(13, 2)), 1, 0, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (71, N'000000340919957', CAST(10000000.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 207384810730, NULL, CAST(N'2024-07-31T00:00:00.000' AS DateTime), CAST(N'2024-04-02T22:31:16.907' AS DateTime), 1, 1, CAST(N'2024-04-02T22:31:45.710' AS DateTime), 1, 1, 31, 2, CAST(0.00 AS Numeric(13, 2)), 1, 0, CAST(0.00 AS Numeric(13, 2)), 119)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (72, N'000000340919957', CAST(10000000.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 392392885597, NULL, CAST(N'2024-07-31T00:00:00.000' AS DateTime), CAST(N'2024-04-02T22:31:16.907' AS DateTime), 1, 1, CAST(N'2024-04-02T22:31:53.587' AS DateTime), 1, 0, 31, 2, CAST(10000000.00 AS Numeric(13, 2)), 0, 0, CAST(0.00 AS Numeric(13, 2)), 120)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (73, N'000000564028694', CAST(5000000.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 642630147876, NULL, CAST(N'2024-07-31T00:00:00.000' AS DateTime), CAST(N'2024-04-02T22:33:01.547' AS DateTime), 1, 1, CAST(N'2024-04-02T22:33:24.980' AS DateTime), 1, 0, 32, 3, CAST(1000000.00 AS Numeric(13, 2)), 0, 0, CAST(2000000.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (74, N'000000675246963', CAST(2000000.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 665194003175, NULL, CAST(N'2024-07-31T00:00:00.000' AS DateTime), CAST(N'2024-04-02T23:28:48.577' AS DateTime), 1, 1, CAST(N'2024-04-02T23:31:21.870' AS DateTime), 1, 1, 33, 3, CAST(2000000.00 AS Numeric(13, 2)), 1, 0, CAST(2000000.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (75, N'000000196325308', CAST(10000000.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 454888471059, NULL, CAST(N'2024-07-31T00:00:00.000' AS DateTime), CAST(N'2024-04-02T23:33:10.220' AS DateTime), 1, 1, CAST(N'2024-04-02T23:33:31.950' AS DateTime), 1, 1, 34, 2, CAST(0.00 AS Numeric(13, 2)), 1, 0, CAST(0.00 AS Numeric(13, 2)), 121)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (76, N'000000196325308', CAST(10000000.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 88491422744, NULL, CAST(N'2024-07-31T00:00:00.000' AS DateTime), CAST(N'2024-04-02T23:33:10.220' AS DateTime), 1, 1, CAST(N'2024-04-02T23:33:37.780' AS DateTime), 1, 1, 34, 2, CAST(0.00 AS Numeric(13, 2)), 1, 0, CAST(0.00 AS Numeric(13, 2)), 122)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (77, N'000000818814621', CAST(10000000.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 81274361497, NULL, CAST(N'2024-07-31T00:00:00.000' AS DateTime), CAST(N'2024-04-02T23:50:00.773' AS DateTime), 1, 1, CAST(N'2024-04-02T23:50:11.003' AS DateTime), 1, 1, 35, 2, CAST(0.00 AS Numeric(13, 2)), 1, 0, CAST(0.00 AS Numeric(13, 2)), 123)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (78, N'000000818814621', CAST(10000000.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, NULL, NULL, CAST(N'2024-07-31T00:00:00.000' AS DateTime), CAST(N'2024-04-02T23:50:00.773' AS DateTime), 1, 0, NULL, 1, 0, 35, 2, CAST(0.00 AS Numeric(13, 2)), 0, 0, CAST(0.00 AS Numeric(13, 2)), 124)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (79, N'000000637070870', CAST(10000000.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 667844540371, NULL, CAST(N'2024-08-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:00:04.757' AS DateTime), 1, 0, CAST(N'2024-04-03T00:00:16.597' AS DateTime), 1, 1, 36, 2, CAST(0.00 AS Numeric(13, 2)), 1, 0, CAST(0.00 AS Numeric(13, 2)), 125)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (80, N'000000637070870', CAST(10000000.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, NULL, NULL, CAST(N'2024-08-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:00:04.757' AS DateTime), 1, 0, NULL, 1, 0, 36, 2, CAST(0.00 AS Numeric(13, 2)), 0, 0, CAST(0.00 AS Numeric(13, 2)), 126)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (81, N'000000696787853', CAST(100.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 116705111858, NULL, CAST(N'2024-08-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:01:53.170' AS DateTime), 1, 0, CAST(N'2024-04-03T00:02:07.613' AS DateTime), 1, 1, 37, 1, CAST(0.00 AS Numeric(13, 2)), 1, 0, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (82, N'000000779357564', CAST(100.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 661577365739, NULL, CAST(N'2024-08-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:08:12.640' AS DateTime), 1, 0, CAST(N'2024-04-03T00:08:24.433' AS DateTime), 1, 1, 38, 1, CAST(100.00 AS Numeric(13, 2)), 1, 0, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (83, N'000000923752309', CAST(10000000.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 804231403167, NULL, CAST(N'2024-08-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:09:11.907' AS DateTime), 1, 0, CAST(N'2024-04-03T00:09:26.887' AS DateTime), 1, 1, 39, 2, CAST(10000000.00 AS Numeric(13, 2)), 1, 0, CAST(0.00 AS Numeric(13, 2)), 127)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (84, N'000000923752309', CAST(10000000.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 969981041306, NULL, CAST(N'2024-08-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:09:11.907' AS DateTime), 1, 0, CAST(N'2024-04-03T00:09:44.537' AS DateTime), 1, 1, 39, 2, CAST(10000000.00 AS Numeric(13, 2)), 1, 0, CAST(0.00 AS Numeric(13, 2)), 128)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (85, N'000000983688263', CAST(1000000.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 122663474359, NULL, CAST(N'2024-08-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:10:43.130' AS DateTime), 1, 0, CAST(N'2024-04-03T00:11:31.963' AS DateTime), 1, 1, 40, 3, CAST(1000000.00 AS Numeric(13, 2)), 1, 0, CAST(1000000.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (86, N'000000987333063', CAST(2000000.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 115027381211, NULL, CAST(N'2024-08-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:11:48.377' AS DateTime), 1, 0, CAST(N'2024-04-03T00:13:00.563' AS DateTime), 1, 1, 41, 3, CAST(2000000.00 AS Numeric(13, 2)), 1, 0, CAST(2000000.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (87, N'000000613934234', CAST(100.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 694158372325, NULL, CAST(N'2024-08-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T15:13:11.140' AS DateTime), 1, 0, CAST(N'2024-04-03T07:14:05.980' AS DateTime), 1, 1, 42, 1, CAST(100.00 AS Numeric(13, 2)), 0, 1, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (88, N'000000578518024', CAST(100.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 342254249554, NULL, CAST(N'2024-08-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T15:33:17.217' AS DateTime), 1, 0, CAST(N'2024-04-03T07:55:10.223' AS DateTime), 1, 1, 43, 1, CAST(100.00 AS Numeric(13, 2)), 1, 1, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (89, N'000000742615136', CAST(100.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 234675592993, NULL, CAST(N'2024-08-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T16:53:36.043' AS DateTime), 1, 0, CAST(N'2024-04-03T08:54:39.767' AS DateTime), 1, 1, 44, 1, CAST(100.00 AS Numeric(13, 2)), 0, 1, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (90, N'000000770215683', CAST(100.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 24401532505, NULL, CAST(N'2024-08-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T17:17:25.770' AS DateTime), 1, 0, CAST(N'2024-04-03T09:18:13.220' AS DateTime), 1, 1, 45, 1, CAST(100.00 AS Numeric(13, 2)), 0, 1, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (91, N'000000836241599', CAST(100.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 423490623215, NULL, CAST(N'2024-08-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T17:39:07.667' AS DateTime), 1, 0, CAST(N'2024-04-03T09:40:08.947' AS DateTime), 1, 1, 46, 1, CAST(100.00 AS Numeric(13, 2)), 0, 1, CAST(0.00 AS Numeric(13, 2)), NULL)
INSERT [dbo].[_PRT_ReferenceToPayInHistory] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [is_paid], [id_reference_in_history], [id_reference_type_category], [amount_paid], [is_payment_prt_confirmed], [is_payment_mft_confirmed], [amount_paid_summed], [id_reference_amount_part]) VALUES (92, N'000000328869088', CAST(100.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, 696521604557, NULL, CAST(N'2024-08-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T18:40:37.637' AS DateTime), 1, 0, CAST(N'2024-04-03T10:45:27.010' AS DateTime), 1, 1, 47, 1, CAST(100.00 AS Numeric(13, 2)), 0, 1, CAST(0.00 AS Numeric(13, 2)), NULL)
SET IDENTITY_INSERT [dbo].[_PRT_ReferenceToPayInHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[_PRT_ReferenceToPayInUse] ON 

INSERT [dbo].[_PRT_ReferenceToPayInUse] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [id_reference_in_history], [id_reference_to_pay_in_history], [id_reference_type_category], [amount_paid], [id_reference_amount_part]) VALUES (111, N'000000818814621', CAST(10000000.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, NULL, NULL, CAST(N'2024-07-31T00:00:00.000' AS DateTime), CAST(N'2024-04-02T23:50:00.773' AS DateTime), 1, 0, NULL, 1, 35, 78, 2, CAST(0.00 AS Numeric(13, 2)), 124)
INSERT [dbo].[_PRT_ReferenceToPayInUse] ([id], [reference_number], [amount], [payment_entity_number], [client_code], [payment_slip_text], [payment_slip_text_line_count], [response_identification_number], [external_id], [expiration_date], [creation_date], [is_payment_entity_shared], [is_waiting_for_payment_confirmation], [payment_date], [id_business], [id_reference_in_history], [id_reference_to_pay_in_history], [id_reference_type_category], [amount_paid], [id_reference_amount_part]) VALUES (113, N'000000637070870', CAST(10000000.00 AS Numeric(13, 2)), 1090, NULL, N'Por pagar', NULL, NULL, NULL, CAST(N'2024-08-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:00:04.757' AS DateTime), 1, 0, NULL, 1, 36, 80, 2, CAST(0.00 AS Numeric(13, 2)), 126)
SET IDENTITY_INSERT [dbo].[_PRT_ReferenceToPayInUse] OFF
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [password], [number], [profilename], [is_active], [email], [client_id], [id_account_type]) VALUES (8, N'lutheraklklasa', N'$2a$10$pT5oayTuqVqt0nTSHeRXAOjgaO6VJkf3bsPngbRQQ3Uh0y/VOnasO', N'ACCN-0001', N'Luther Cunha', 1, N'luther.cunha@outlook.com', NULL, 1)
INSERT [dbo].[Account] ([id], [username], [password], [number], [profilename], [is_active], [email], [client_id], [id_account_type]) VALUES (11, N'sbaakslaklsas', N'$2a$10$XXOWkYQTxRyx.xlVCqbWI.t.zhI4.8ZNmP8sx1w4vUZUwGnMjsSw.', N'ACCN-0002', N'SBA Business User', 1, N'sba.notification@outlook.com', NULL, 2)
INSERT [dbo].[Account] ([id], [username], [password], [number], [profilename], [is_active], [email], [client_id], [id_account_type]) VALUES (17, N'8ba8a54478a801ef6992063c6630ba5a', N'$2a$10$XXOWkYQTxRyx.xlVCqbWI.t.zhI4.8ZNmP8sx1w4vUZUwGnMjsSw.', N'ACCN-0003', N'Administrative User', 1, N'admin.notification@outlook.com', NULL, 2)
INSERT [dbo].[Account] ([id], [username], [password], [number], [profilename], [is_active], [email], [client_id], [id_account_type]) VALUES (20, N'bakajdkajdkajdkdad', N'$2a$10$fhy43RZOcNq/w8z9zuE36..Jknse7Beg/PSDex14ZnA4yThjoJ1Ay', N'ACCN-0004', N'DP World', 1, N'to-define@outlook.com', NULL, 2)
INSERT [dbo].[Account] ([id], [username], [password], [number], [profilename], [is_active], [email], [client_id], [id_account_type]) VALUES (21, N'd3558df971972f2648f6239ed8c3b6a8', N'$2a$10$FAWzZK5lPUi1r1UO0bRdqeUjRm5eLhx2slrAVLohfWp57MMQwDm4m', N'ACCN-0004', N'Angoalissar', 1, N'to-define@outlook.com', NULL, 2)
INSERT [dbo].[Account] ([id], [username], [password], [number], [profilename], [is_active], [email], [client_id], [id_account_type]) VALUES (23, N'C847883', N'$2a$10$dMHKRgCgm4VkGnxMpTyocu6vcMr0o//jDiBqiiLufnxhdWt3XNVWK', N'ACCN-0005', N'Luther Cunha', 1, N'luther.cunha@standardbank.co.ao', NULL, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Account_Roles] ON 

INSERT [dbo].[Account_Roles] ([id], [id_account], [id_role], [id_business]) VALUES (1, 8, 1, 1)
INSERT [dbo].[Account_Roles] ([id], [id_account], [id_role], [id_business]) VALUES (2, 8, 2, 1)
INSERT [dbo].[Account_Roles] ([id], [id_account], [id_role], [id_business]) VALUES (3, 8, 1, 3)
INSERT [dbo].[Account_Roles] ([id], [id_account], [id_role], [id_business]) VALUES (4, 8, 2, 3)
INSERT [dbo].[Account_Roles] ([id], [id_account], [id_role], [id_business]) VALUES (5, 8, 1, 1)
INSERT [dbo].[Account_Roles] ([id], [id_account], [id_role], [id_business]) VALUES (6, 8, 2, 1)
INSERT [dbo].[Account_Roles] ([id], [id_account], [id_role], [id_business]) VALUES (7, 8, 1, 3)
INSERT [dbo].[Account_Roles] ([id], [id_account], [id_role], [id_business]) VALUES (8, 8, 2, 3)
INSERT [dbo].[Account_Roles] ([id], [id_account], [id_role], [id_business]) VALUES (9, 17, 1, 1)
INSERT [dbo].[Account_Roles] ([id], [id_account], [id_role], [id_business]) VALUES (11, 17, 1, 3)
INSERT [dbo].[Account_Roles] ([id], [id_account], [id_role], [id_business]) VALUES (12, 17, 2, 1)
INSERT [dbo].[Account_Roles] ([id], [id_account], [id_role], [id_business]) VALUES (13, 17, 2, 3)
INSERT [dbo].[Account_Roles] ([id], [id_account], [id_role], [id_business]) VALUES (14, 20, 1, 5)
INSERT [dbo].[Account_Roles] ([id], [id_account], [id_role], [id_business]) VALUES (15, 20, 2, 5)
INSERT [dbo].[Account_Roles] ([id], [id_account], [id_role], [id_business]) VALUES (16, 21, 1, 6)
INSERT [dbo].[Account_Roles] ([id], [id_account], [id_role], [id_business]) VALUES (17, 21, 2, 6)
SET IDENTITY_INSERT [dbo].[Account_Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[AccountType] ON 

INSERT [dbo].[AccountType] ([id], [name], [description]) VALUES (1, N'User', N'Personal accounts')
INSERT [dbo].[AccountType] ([id], [name], [description]) VALUES (2, N'Service', N'Application accounts')
SET IDENTITY_INSERT [dbo].[AccountType] OFF
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([id], [street], [building_name], [floor], [house_number], [id_county]) VALUES (1, N' XPTO Avenue', N'Building XPTO', 20, N'23', 3)
INSERT [dbo].[Address] ([id], [street], [building_name], [floor], [house_number], [id_county]) VALUES (2, N'Rua Gamal Abdel Nasser', NULL, 14, NULL, 7)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Application_Variables] ON 

INSERT [dbo].[Application_Variables] ([entity_number], [application_number], [id]) VALUES (1, 1, 1)
SET IDENTITY_INSERT [dbo].[Application_Variables] OFF
GO
SET IDENTITY_INSERT [dbo].[Bank] ON 

INSERT [dbo].[Bank] ([id], [name], [initials], [description], [bna_code]) VALUES (1, N'Standard Bank Angola', N'SBA', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Bank] OFF
GO
SET IDENTITY_INSERT [dbo].[BankaryDetails] ON 

INSERT [dbo].[BankaryDetails] ([id], [account_number], [account_iban], [comments], [id_bank], [bna_code]) VALUES (1, N'90909900909900 ', N'909090909090909', NULL, 1, NULL)
INSERT [dbo].[BankaryDetails] ([id], [account_number], [account_iban], [comments], [id_bank], [bna_code]) VALUES (3, N'1025711005', N'AO06006001900102571100534', NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[BankaryDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Business] ON 

INSERT [dbo].[Business] ([id], [internal_number], [name], [description], [id_subscriber], [id_account], [token], [is_active], [register_date], [id_payment_entity], [icon_name], [folder_name], [id_business_category], [min_acceptable_amount], [max_acceptable_amount]) VALUES (1, N'BUSN-0001', N'JD Real State Inc.', N'Business for John Doe´s Real State company', 3, 11, N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJzYmEuYnVzaW5lc3MiLCJyb2wiOlsiUk9MRV9CVVNJTkVTUyJdfQ.XGfkBbdgGc3N3U-vyUWSR5jQdt4DNysdIaleQV4kKBRFaoMHinYwY0ynpG8GTnV7CDASV7KjYHxY7iSfLSva3A', 1, CAST(N'2022-10-10' AS Date), 1, N'fa fa-user', N'sba-business', 1, NULL, NULL)
INSERT [dbo].[Business] ([id], [internal_number], [name], [description], [id_subscriber], [id_account], [token], [is_active], [register_date], [id_payment_entity], [icon_name], [folder_name], [id_business_category], [min_acceptable_amount], [max_acceptable_amount]) VALUES (3, N'BUSN-0002', N'JD Consumer Finance Inc.', N'Business for John Doe´s Consumer Finance company', 3, 11, N'ABC', 1, CAST(N'2023-10-01' AS Date), 2, N'fa fa-ball', N'sb24', 1, NULL, NULL)
INSERT [dbo].[Business] ([id], [internal_number], [name], [description], [id_subscriber], [id_account], [token], [is_active], [register_date], [id_payment_entity], [icon_name], [folder_name], [id_business_category], [min_acceptable_amount], [max_acceptable_amount]) VALUES (5, N'BUSN-0003', N'DP World - Payment by Reference', N'Business for DP World', 7, 20, N'ABC', 1, CAST(N'2023-06-02' AS Date), 1, NULL, N'dp-world', 1, CAST(100.00 AS Numeric(13, 2)), CAST(20000000.00 AS Numeric(13, 2)))
INSERT [dbo].[Business] ([id], [internal_number], [name], [description], [id_subscriber], [id_account], [token], [is_active], [register_date], [id_payment_entity], [icon_name], [folder_name], [id_business_category], [min_acceptable_amount], [max_acceptable_amount]) VALUES (6, N'BUSN-0004', N'Angoalissar - Luanda', N'Business for Payment by Reference to Angoalissar Luanda', 8, 21, N'ABC', 1, CAST(N'2023-06-02' AS Date), 1, NULL, N'angoalissar-luanda', 1, CAST(100.00 AS Numeric(13, 2)), CAST(30000000.00 AS Numeric(13, 2)))
SET IDENTITY_INSERT [dbo].[Business] OFF
GO
SET IDENTITY_INSERT [dbo].[BusinessCategory] ON 

INSERT [dbo].[BusinessCategory] ([id], [name], [description], [icon]) VALUES (1, N'Finance', N'Business units with finance purposes', NULL)
SET IDENTITY_INSERT [dbo].[BusinessCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[BusinessPaymentType] ON 

INSERT [dbo].[BusinessPaymentType] ([id], [name], [description]) VALUES (1, N'Private', NULL)
INSERT [dbo].[BusinessPaymentType] ([id], [name], [description]) VALUES (2, N'Shared', NULL)
SET IDENTITY_INSERT [dbo].[BusinessPaymentType] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([id], [name]) VALUES (6, N'Angola')
INSERT [dbo].[Country] ([id], [name]) VALUES (2, N'Angola2')
INSERT [dbo].[Country] ([id], [name]) VALUES (13, N'BELGICA')
INSERT [dbo].[Country] ([id], [name]) VALUES (7, N'Brasil')
INSERT [dbo].[Country] ([id], [name]) VALUES (9, N'França')
INSERT [dbo].[Country] ([id], [name]) VALUES (12, N'MALI')
INSERT [dbo].[Country] ([id], [name]) VALUES (11, N'NIGERIA')
INSERT [dbo].[Country] ([id], [name]) VALUES (8, N'RDC')
INSERT [dbo].[Country] ([id], [name]) VALUES (10, N'TOGO')
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[County] ON 

INSERT [dbo].[County] ([id], [name], [id_province]) VALUES (2, N'PALANCA', 2)
INSERT [dbo].[County] ([id], [name], [id_province]) VALUES (3, N'Belas', 7)
INSERT [dbo].[County] ([id], [name], [id_province]) VALUES (4, N'MAIANGA', 3)
INSERT [dbo].[County] ([id], [name], [id_province]) VALUES (5, N'SAMBIZANGA', 3)
INSERT [dbo].[County] ([id], [name], [id_province]) VALUES (6, N'BENFICA', 3)
INSERT [dbo].[County] ([id], [name], [id_province]) VALUES (7, N'Ingombota', 7)
SET IDENTITY_INSERT [dbo].[County] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (9, CAST(N'2023-10-24T09:43:06.677' AS DateTime), 3, NULL, 1091, 10, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2023-10-24T09:43:06.677' AS DateTime), N'JD Consumer Finance Inc.', N'John Doe Holdings', CAST(N'2023-10-24T09:43:06.677' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (10, CAST(N'2023-10-24T09:43:55.260' AS DateTime), 3, NULL, 1091, 11, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2023-10-24T09:48:26.737' AS DateTime), N'JD Consumer Finance Inc.', N'John Doe Holdings', CAST(N'2023-10-24T09:48:26.737' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (11, CAST(N'2023-10-24T21:20:21.617' AS DateTime), 1, NULL, 1091, 12, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2023-10-24T21:20:21.617' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', NULL)
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (12, CAST(N'2023-12-06T14:44:25.877' AS DateTime), 1, NULL, 1091, 14, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2023-12-06T14:44:25.877' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2023-12-06T14:44:25.877' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (13, CAST(N'2023-12-06T14:47:03.063' AS DateTime), 1, NULL, 1091, 15, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2023-12-06T14:47:03.063' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2023-12-06T14:47:03.063' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (14, CAST(N'2023-12-06T09:09:28.343' AS DateTime), 1, NULL, 1090, 19, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2023-12-06T09:09:28.343' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2023-12-06T09:09:28.343' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (15, CAST(N'2023-12-06T09:19:35.457' AS DateTime), 1, NULL, 1090, 20, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2023-12-06T09:19:35.457' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2023-12-06T09:19:35.457' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (16, CAST(N'2023-12-06T09:37:09.433' AS DateTime), 1, NULL, 1090, 21, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2023-12-06T09:37:09.433' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2023-12-06T09:37:09.433' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (17, CAST(N'2023-12-09T21:02:06.270' AS DateTime), 1, NULL, 1090, 24, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2023-12-09T21:02:06.270' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2023-12-09T21:02:06.270' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (18, CAST(N'2024-04-02T22:17:24.957' AS DateTime), 1, NULL, 1090, 29, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-02T22:17:24.957' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2024-04-02T22:17:24.957' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (19, CAST(N'2024-04-02T22:30:31.120' AS DateTime), 1, NULL, 1090, 30, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-02T22:30:31.120' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2024-04-02T22:30:31.120' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (20, CAST(N'2024-04-02T22:31:45.710' AS DateTime), 1, NULL, 1090, 31, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-02T22:31:45.710' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', NULL)
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (21, CAST(N'2024-04-02T22:33:21.297' AS DateTime), 1, NULL, 1090, 32, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-02T22:33:21.297' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', NULL)
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (22, CAST(N'2024-04-02T23:29:19.437' AS DateTime), 1, NULL, 1090, 33, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-02T23:31:21.870' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2024-04-02T23:31:21.870' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (23, CAST(N'2024-04-02T23:33:31.950' AS DateTime), 1, NULL, 1090, 34, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-02T23:33:37.780' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2024-04-02T23:33:37.780' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (24, CAST(N'2024-04-02T23:50:11.003' AS DateTime), 1, NULL, 1090, 35, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-02T23:50:11.003' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', NULL)
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (25, CAST(N'2024-04-03T00:00:16.597' AS DateTime), 1, NULL, 1090, 36, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-03T00:00:16.597' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', NULL)
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (26, CAST(N'2024-04-03T00:02:07.613' AS DateTime), 1, NULL, 1090, 37, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-03T00:02:07.613' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2024-04-03T00:02:07.613' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (27, CAST(N'2024-04-03T00:08:24.433' AS DateTime), 1, NULL, 1090, 38, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-03T00:08:24.433' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2024-04-03T00:08:24.433' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (28, CAST(N'2024-04-03T00:09:26.887' AS DateTime), 1, NULL, 1090, 39, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-03T00:09:44.537' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2024-04-03T00:09:44.537' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (29, CAST(N'2024-04-03T00:11:31.963' AS DateTime), 1, NULL, 1090, 40, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-03T00:11:31.963' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2024-04-03T00:11:31.963' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (30, CAST(N'2024-04-03T00:12:07.537' AS DateTime), 1, NULL, 1090, 41, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-03T00:13:00.563' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2024-04-03T00:13:00.563' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (31, CAST(N'2024-04-03T07:55:10.223' AS DateTime), 1, NULL, 1090, 43, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-03T07:55:10.223' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2024-04-03T07:55:10.223' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (32, CAST(N'2024-04-03T07:14:05.980' AS DateTime), 1, NULL, 1090, 42, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-03T07:14:05.980' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2024-04-03T07:14:05.980' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (33, CAST(N'2024-04-03T00:00:00.000' AS DateTime), 1, NULL, 1090, 44, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-03T00:00:00.000' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2024-04-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (34, CAST(N'2024-04-03T10:10:13.000' AS DateTime), 1, NULL, 1090, 45, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-03T10:10:13.000' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2024-04-03T10:10:13.000' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (35, CAST(N'2024-04-03T10:10:13.000' AS DateTime), 1, NULL, 1090, 46, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-03T10:10:13.000' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2024-04-03T10:10:13.000' AS DateTime))
INSERT [dbo].[Payment] ([id], [starting_date], [id_business], [id_partner], [payment_entity_number], [id_reference_in_history], [account_number], [account_iban], [bank_name], [last_part_payment_date], [business_name], [subscriber_name], [ending_date]) VALUES (36, CAST(N'2024-04-03T18:45:26.000' AS DateTime), 1, NULL, 1090, 47, N'90909900909900 ', N'909090909090909', N'Standard Bank Angola', CAST(N'2024-04-03T18:45:26.000' AS DateTime), N'JD Real State Inc.', N'John Doe Holdings', CAST(N'2024-04-03T18:45:26.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentEntity] ON 

INSERT [dbo].[PaymentEntity] ([id], [name], [entity_number], [description], [reference_size], [id_payment_entity_type], [is_shared], [min_acceptable_amount], [max_acceptable_amount], [id_bankary_details]) VALUES (1, N'Payment', 1090, NULL, 9, 1, 1, CAST(100.00 AS Decimal(13, 2)), CAST(99999999999.99 AS Decimal(13, 2)), 1)
INSERT [dbo].[PaymentEntity] ([id], [name], [entity_number], [description], [reference_size], [id_payment_entity_type], [is_shared], [min_acceptable_amount], [max_acceptable_amount], [id_bankary_details]) VALUES (2, N'Charge', 1091, NULL, 9, 2, 1, CAST(100.00 AS Decimal(13, 2)), CAST(99999999999.99 AS Decimal(13, 2)), 1)
INSERT [dbo].[PaymentEntity] ([id], [name], [entity_number], [description], [reference_size], [id_payment_entity_type], [is_shared], [min_acceptable_amount], [max_acceptable_amount], [id_bankary_details]) VALUES (3, N'Invoice', 1092, NULL, 9, 3, 1, CAST(100.00 AS Decimal(13, 2)), CAST(99999999999.99 AS Decimal(13, 2)), 1)
SET IDENTITY_INSERT [dbo].[PaymentEntity] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentEntityType] ON 

INSERT [dbo].[PaymentEntityType] ([id], [name], [description]) VALUES (1, N'Payment', N'Pre-paid payments')
INSERT [dbo].[PaymentEntityType] ([id], [name], [description]) VALUES (2, N'Charge', N'Post-paid payments')
INSERT [dbo].[PaymentEntityType] ([id], [name], [description]) VALUES (3, N'Invoice', N'Fixed ammounts payments')
INSERT [dbo].[PaymentEntityType] ([id], [name], [description]) VALUES (4, N'Recharge (Mobile)', N'Charge for mobile services')
SET IDENTITY_INSERT [dbo].[PaymentEntityType] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentPart] ON 

INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (45, CAST(1000000.00 AS Numeric(13, 2)), CAST(N'2023-10-24T09:43:06.677' AS DateTime), 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (46, CAST(100000.00 AS Numeric(13, 2)), CAST(N'2023-10-24T09:43:55.260' AS DateTime), 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (47, CAST(900000.00 AS Numeric(13, 2)), CAST(N'2023-10-24T09:48:26.737' AS DateTime), 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (48, CAST(900000.00 AS Numeric(13, 2)), CAST(N'2023-10-24T21:20:21.617' AS DateTime), 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (49, CAST(2000000.00 AS Numeric(13, 2)), CAST(N'2023-12-06T14:44:25.877' AS DateTime), 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (50, CAST(2000000.00 AS Numeric(13, 2)), CAST(N'2023-12-06T14:47:03.063' AS DateTime), 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (51, CAST(100.00 AS Numeric(13, 2)), CAST(N'2023-12-06T09:09:28.343' AS DateTime), 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (52, CAST(100.00 AS Numeric(13, 2)), CAST(N'2023-12-06T09:19:35.457' AS DateTime), 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (53, CAST(100.00 AS Numeric(13, 2)), CAST(N'2023-12-06T09:37:09.433' AS DateTime), 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (54, CAST(100.00 AS Numeric(13, 2)), CAST(N'2023-12-09T21:02:06.270' AS DateTime), 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (55, CAST(100.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 18, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', NULL, 778191651873)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (56, CAST(100.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 19, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', NULL, 630834830170)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (57, CAST(10000000.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 20, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', 119, 207384810730)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (58, CAST(1000000.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 21, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', NULL, 531019507500)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (59, CAST(500000.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 22, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', NULL, 137261965676)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (60, CAST(800000.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 22, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', NULL, 658730153895)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (61, CAST(120000.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 22, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', NULL, 434998601203)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (62, CAST(580000.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 22, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', NULL, 665194003175)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (63, CAST(10000000.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 23, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', 121, 454888471059)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (64, CAST(10000000.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 23, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', 122, 88491422744)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (65, CAST(10000000.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 24, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', 123, 81274361497)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (66, CAST(10000000.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 25, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', 125, 667844540371)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (67, CAST(100.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 26, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', NULL, 116705111858)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (68, CAST(100.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 27, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', NULL, 661577365739)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (69, CAST(10000000.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 28, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', 127, 804231403167)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (70, CAST(10000000.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 28, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', 128, 969981041306)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (71, CAST(1000000.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 29, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', NULL, 122663474359)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (72, CAST(1000000.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 30, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', NULL, 816291955375)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (73, CAST(1000000.00 AS Numeric(13, 2)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 30, N'01', N'00', N'A', N'0000000103', N'LUANDA', N'024', NULL, 115027381211)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (74, CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-03T00:00:00.000' AS DateTime), 31, N'01', N'00', N'A', N'0000062126', N'Luanda', N'024', NULL, 342254249554)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (75, CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-03T00:00:00.000' AS DateTime), 32, N'01', N'00', N'M', N'0000000000', N'Internet', N'024', NULL, 694158372325)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (76, CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-03T00:00:00.000' AS DateTime), 33, N'01', N'00', N'M', N'0000000000', N'Internet', N'024', NULL, 234675592993)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (77, CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-03T10:10:13.000' AS DateTime), 34, N'01', N'00', N'M', N'0000000000', N'Internet', N'024', NULL, 24401532505)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (78, CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-03T10:10:13.000' AS DateTime), 35, N'01', N'00', N'M', N'0000000000', N'Internet', N'024', NULL, 423490623215)
INSERT [dbo].[PaymentPart] ([id], [amount], [date], [id_payment], [product_code], [product_parameter], [terminal_type], [terminal_id], [terminal_location], [currency_code], [id_reference_amount_part], [response_identification_number]) VALUES (79, CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-03T18:45:26.000' AS DateTime), 36, N'01', N'00', N'M', N'0000000000', N'Internet', N'024', NULL, 696521604557)
SET IDENTITY_INSERT [dbo].[PaymentPart] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentTransfer] ON 

INSERT [dbo].[PaymentTransfer] ([id], [date], [total_amount], [id_payment_transfer_config], [external_id]) VALUES (1, CAST(N'2023-12-07T19:58:42.090' AS DateTime), CAST(4000300.00 AS Decimal(18, 2)), 1, N'EXTERNAL')
SET IDENTITY_INSERT [dbo].[PaymentTransfer] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentTransfer_PaymentPart] ON 

INSERT [dbo].[PaymentTransfer_PaymentPart] ([id], [id_payment_transfer], [id_payment_part], [date]) VALUES (1, 1, 49, CAST(N'2023-12-07T19:58:42.090' AS DateTime))
INSERT [dbo].[PaymentTransfer_PaymentPart] ([id], [id_payment_transfer], [id_payment_part], [date]) VALUES (2, 1, 50, CAST(N'2023-12-07T19:58:42.090' AS DateTime))
INSERT [dbo].[PaymentTransfer_PaymentPart] ([id], [id_payment_transfer], [id_payment_part], [date]) VALUES (3, 1, 51, CAST(N'2023-12-07T19:58:42.090' AS DateTime))
INSERT [dbo].[PaymentTransfer_PaymentPart] ([id], [id_payment_transfer], [id_payment_part], [date]) VALUES (4, 1, 52, CAST(N'2023-12-07T19:58:42.090' AS DateTime))
INSERT [dbo].[PaymentTransfer_PaymentPart] ([id], [id_payment_transfer], [id_payment_part], [date]) VALUES (5, 1, 53, CAST(N'2023-12-07T19:58:42.090' AS DateTime))
SET IDENTITY_INSERT [dbo].[PaymentTransfer_PaymentPart] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentTransferConfig] ON 

INSERT [dbo].[PaymentTransferConfig] ([id], [id_source_business], [id_destination_business], [starting_date], [is_active]) VALUES (1, 1, 1, CAST(N'2023-10-10' AS Date), 1)
SET IDENTITY_INSERT [dbo].[PaymentTransferConfig] OFF
GO
SET IDENTITY_INSERT [dbo].[Privilege] ON 

INSERT [dbo].[Privilege] ([id], [name], [description]) VALUES (1, N'DASHBOARD_GENERAL', N'View the general dashboard')
INSERT [dbo].[Privilege] ([id], [name], [description]) VALUES (2, N'REFERENCE_CREATION', N'Create References')
INSERT [dbo].[Privilege] ([id], [name], [description]) VALUES (3, N'REFERENCE_UPDATION', NULL)
INSERT [dbo].[Privilege] ([id], [name], [description]) VALUES (4, N'REFERENCE_LIST', NULL)
INSERT [dbo].[Privilege] ([id], [name], [description]) VALUES (5, N'REFERENCE_DELETION', NULL)
INSERT [dbo].[Privilege] ([id], [name], [description]) VALUES (6, N'REFERENCE_BLOCK', NULL)
SET IDENTITY_INSERT [dbo].[Privilege] OFF
GO
SET IDENTITY_INSERT [dbo].[Province] ON 

INSERT [dbo].[Province] ([id], [name], [id_country]) VALUES (2, N'Lisboa', 6)
INSERT [dbo].[Province] ([id], [name], [id_country]) VALUES (3, N'Poto', 6)
INSERT [dbo].[Province] ([id], [name], [id_country]) VALUES (4, N'Madeira', 6)
INSERT [dbo].[Province] ([id], [name], [id_country]) VALUES (5, N'Rio Ave', 6)
INSERT [dbo].[Province] ([id], [name], [id_country]) VALUES (6, N'Benguela', 2)
INSERT [dbo].[Province] ([id], [name], [id_country]) VALUES (7, N'Luanda', 6)
INSERT [dbo].[Province] ([id], [name], [id_country]) VALUES (9, N'NAMIBE', 2)
INSERT [dbo].[Province] ([id], [name], [id_country]) VALUES (12, N'UIGE', 2)
INSERT [dbo].[Province] ([id], [name], [id_country]) VALUES (13, N'BENGO', 6)
INSERT [dbo].[Province] ([id], [name], [id_country]) VALUES (14, N'Rio de Janeiro', 7)
INSERT [dbo].[Province] ([id], [name], [id_country]) VALUES (15, N'Brasilia', 7)
INSERT [dbo].[Province] ([id], [name], [id_country]) VALUES (16, N'São Paulo', 7)
INSERT [dbo].[Province] ([id], [name], [id_country]) VALUES (17, N'KUANZA NORTE', 2)
SET IDENTITY_INSERT [dbo].[Province] OFF
GO
SET IDENTITY_INSERT [dbo].[ReferenceAmountPart] ON 

INSERT [dbo].[ReferenceAmountPart] ([id], [amount], [id_reference_in_use], [id_reference_in_history]) VALUES (119, CAST(10000000.00 AS Numeric(13, 2)), 67, 31)
INSERT [dbo].[ReferenceAmountPart] ([id], [amount], [id_reference_in_use], [id_reference_in_history]) VALUES (120, CAST(10000000.00 AS Numeric(13, 2)), 67, 31)
INSERT [dbo].[ReferenceAmountPart] ([id], [amount], [id_reference_in_use], [id_reference_in_history]) VALUES (121, CAST(10000000.00 AS Numeric(13, 2)), 70, 34)
INSERT [dbo].[ReferenceAmountPart] ([id], [amount], [id_reference_in_use], [id_reference_in_history]) VALUES (122, CAST(10000000.00 AS Numeric(13, 2)), 70, 34)
INSERT [dbo].[ReferenceAmountPart] ([id], [amount], [id_reference_in_use], [id_reference_in_history]) VALUES (123, CAST(10000000.00 AS Numeric(13, 2)), 71, 35)
INSERT [dbo].[ReferenceAmountPart] ([id], [amount], [id_reference_in_use], [id_reference_in_history]) VALUES (124, CAST(10000000.00 AS Numeric(13, 2)), 71, 35)
INSERT [dbo].[ReferenceAmountPart] ([id], [amount], [id_reference_in_use], [id_reference_in_history]) VALUES (125, CAST(10000000.00 AS Numeric(13, 2)), 72, 36)
INSERT [dbo].[ReferenceAmountPart] ([id], [amount], [id_reference_in_use], [id_reference_in_history]) VALUES (126, CAST(10000000.00 AS Numeric(13, 2)), 72, 36)
INSERT [dbo].[ReferenceAmountPart] ([id], [amount], [id_reference_in_use], [id_reference_in_history]) VALUES (127, CAST(10000000.00 AS Numeric(13, 2)), 75, 39)
INSERT [dbo].[ReferenceAmountPart] ([id], [amount], [id_reference_in_use], [id_reference_in_history]) VALUES (128, CAST(10000000.00 AS Numeric(13, 2)), 75, 39)
SET IDENTITY_INSERT [dbo].[ReferenceAmountPart] OFF
GO
SET IDENTITY_INSERT [dbo].[ReferenceInHistory] ON 

INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (10, N'678501965', CAST(N'2024-02-21' AS Date), 1, 3, NULL, CAST(1000000.00 AS Numeric(13, 2)), CAST(N'2023-10-24T09:42:59.333' AS DateTime), 0, NULL, NULL, NULL, N'Paid | Pago', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (11, N'678501965', CAST(N'2024-02-21' AS Date), 3, 3, NULL, CAST(1000000.00 AS Numeric(13, 2)), CAST(N'2023-10-24T09:43:43.123' AS DateTime), 0, NULL, NULL, NULL, N'Paid | Pago', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (12, N'678501965', CAST(N'2024-02-21' AS Date), 3, 1, NULL, CAST(1000000.00 AS Numeric(13, 2)), CAST(N'2023-10-24T21:20:13.793' AS DateTime), 1, NULL, NULL, NULL, N'Paid | Pago', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (13, N'012345670', CAST(N'2024-03-31' AS Date), 1, 1, NULL, CAST(2000000.00 AS Numeric(13, 2)), CAST(N'2023-12-02T18:26:14.427' AS DateTime), 1, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (14, N'001234567', CAST(N'2024-03-31' AS Date), 1, 1, NULL, CAST(2000000.00 AS Numeric(13, 2)), CAST(N'2023-12-02T18:26:24.450' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (15, N'000123456', CAST(N'2024-03-31' AS Date), 1, 1, NULL, CAST(2000000.00 AS Numeric(13, 2)), CAST(N'2023-12-02T18:30:07.670' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (16, N'049449731', CAST(N'2024-03-31' AS Date), 1, 1, N'This reference is for testing', CAST(20000.00 AS Numeric(13, 2)), CAST(N'2023-12-02T18:31:10.270' AS DateTime), 1, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 1)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (17, N'185124748', CAST(N'2024-04-04' AS Date), 1, 1, N'This reference is for testing', CAST(20000.00 AS Numeric(13, 2)), CAST(N'2023-12-06T17:35:26.853' AS DateTime), 1, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (18, N'636233074', CAST(N'2024-04-04' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2023-12-06T17:36:20.603' AS DateTime), 1, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (19, N'407964299', CAST(N'2024-04-04' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2023-12-06T17:36:29.847' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (20, N'072645531', CAST(N'2024-04-04' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2023-12-06T09:06:16.610' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (21, N'492649029', CAST(N'2024-04-04' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2023-12-06T09:06:20.140' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (22, N'294148830', CAST(N'2024-04-04' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2023-12-06T09:06:22.247' AS DateTime), 1, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (23, N'524950818', CAST(N'2024-04-07' AS Date), 1, 1, NULL, CAST(100.00 AS Numeric(13, 2)), CAST(N'2023-12-09T20:26:42.303' AS DateTime), 1, NULL, NULL, NULL, N'Referência paga', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (24, N'797902969', CAST(N'2024-04-07' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2023-12-09T21:00:18.263' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (25, N'355044838', CAST(N'2024-07-31' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-02T21:15:00.297' AS DateTime), 1, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (26, N'653847581', CAST(N'2024-07-31' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-02T21:27:16.197' AS DateTime), 1, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (27, N'273610918', CAST(N'2024-07-31' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-02T21:41:55.367' AS DateTime), 1, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (28, N'251022679', CAST(N'2024-07-31' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-02T22:03:06.470' AS DateTime), 1, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (29, N'456024803', CAST(N'2024-07-31' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-02T22:16:57.960' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (30, N'968357136', CAST(N'2024-07-31' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-02T22:30:20.007' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (31, N'340919957', CAST(N'2024-07-31' AS Date), 2, 1, N'This reference is for testing', CAST(20000000.00 AS Numeric(13, 2)), CAST(N'2024-04-02T22:31:16.907' AS DateTime), 1, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (32, N'564028694', CAST(N'2024-07-31' AS Date), 3, 1, N'This reference is for testing', CAST(5000000.00 AS Numeric(13, 2)), CAST(N'2024-04-02T22:33:01.547' AS DateTime), 1, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (33, N'675246963', CAST(N'2024-07-31' AS Date), 3, 1, N'This reference is for testing', CAST(2000000.00 AS Numeric(13, 2)), CAST(N'2024-04-02T23:28:48.577' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (34, N'196325308', CAST(N'2024-07-31' AS Date), 2, 1, N'This reference is for testing', CAST(20000000.00 AS Numeric(13, 2)), CAST(N'2024-04-02T23:33:10.220' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (35, N'818814621', CAST(N'2024-07-31' AS Date), 2, 1, N'This reference is for testing', CAST(20000000.00 AS Numeric(13, 2)), CAST(N'2024-04-02T23:50:00.773' AS DateTime), 1, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (36, N'637070870', CAST(N'2024-08-01' AS Date), 2, 1, N'This reference is for testing', CAST(20000000.00 AS Numeric(13, 2)), CAST(N'2024-04-03T00:00:04.757' AS DateTime), 1, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (37, N'696787853', CAST(N'2024-08-01' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-03T00:01:53.170' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (38, N'779357564', CAST(N'2024-08-01' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-03T00:08:12.640' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (39, N'923752309', CAST(N'2024-08-01' AS Date), 2, 1, N'This reference is for testing', CAST(20000000.00 AS Numeric(13, 2)), CAST(N'2024-04-03T00:09:11.907' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (40, N'983688263', CAST(N'2024-08-01' AS Date), 3, 1, N'This reference is for testing', CAST(1000000.00 AS Numeric(13, 2)), CAST(N'2024-04-03T00:10:43.130' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (41, N'987333063', CAST(N'2024-08-01' AS Date), 3, 1, N'This reference is for testing', CAST(2000000.00 AS Numeric(13, 2)), CAST(N'2024-04-03T00:11:48.377' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (42, N'613934234', CAST(N'2024-08-01' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-03T15:13:11.140' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (43, N'578518024', CAST(N'2024-08-01' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-03T15:33:17.217' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (44, N'742615136', CAST(N'2024-08-01' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-03T16:53:36.043' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (45, N'770215683', CAST(N'2024-08-01' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-03T17:17:25.770' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (46, N'836241599', CAST(N'2024-08-01' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-03T17:39:07.667' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
INSERT [dbo].[ReferenceInHistory] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [is_in_use], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [is_paid], [is_expired], [is_has_payments], [is_frozen]) VALUES (47, N'328869088', CAST(N'2024-08-01' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-03T18:40:37.637' AS DateTime), 0, NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[ReferenceInHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[ReferenceInUse] ON 

INSERT [dbo].[ReferenceInUse] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [id_reference_in_history]) VALUES (61, N'355044838', CAST(N'2024-07-31' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-02T21:15:00.297' AS DateTime), NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 25)
INSERT [dbo].[ReferenceInUse] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [id_reference_in_history]) VALUES (62, N'653847581', CAST(N'2024-07-31' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-02T21:27:16.197' AS DateTime), NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 26)
INSERT [dbo].[ReferenceInUse] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [id_reference_in_history]) VALUES (63, N'273610918', CAST(N'2024-07-31' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-02T21:41:55.367' AS DateTime), NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 27)
INSERT [dbo].[ReferenceInUse] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [id_reference_in_history]) VALUES (64, N'251022679', CAST(N'2024-07-31' AS Date), 1, 1, N'This reference is for testing', CAST(100.00 AS Numeric(13, 2)), CAST(N'2024-04-02T22:03:06.470' AS DateTime), NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 28)
INSERT [dbo].[ReferenceInUse] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [id_reference_in_history]) VALUES (67, N'340919957', CAST(N'2024-07-31' AS Date), 2, 1, N'This reference is for testing', CAST(20000000.00 AS Numeric(13, 2)), CAST(N'2024-04-02T22:31:16.907' AS DateTime), NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 31)
INSERT [dbo].[ReferenceInUse] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [id_reference_in_history]) VALUES (68, N'564028694', CAST(N'2024-07-31' AS Date), 3, 1, N'This reference is for testing', CAST(5000000.00 AS Numeric(13, 2)), CAST(N'2024-04-02T22:33:01.547' AS DateTime), NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 32)
INSERT [dbo].[ReferenceInUse] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [id_reference_in_history]) VALUES (71, N'818814621', CAST(N'2024-07-31' AS Date), 2, 1, N'This reference is for testing', CAST(20000000.00 AS Numeric(13, 2)), CAST(N'2024-04-02T23:50:00.773' AS DateTime), NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 35)
INSERT [dbo].[ReferenceInUse] ([id], [reference_number], [expiration_date], [id_reference_type], [id_business], [description], [amount], [creation_date], [alias], [attachment], [id_partner], [payment_slip_text], [client_code], [payment_slip_text_line_count], [group_name], [phone_number], [email], [external_id], [id_reference_in_history]) VALUES (72, N'637070870', CAST(N'2024-08-01' AS Date), 2, 1, N'This reference is for testing', CAST(20000000.00 AS Numeric(13, 2)), CAST(N'2024-04-03T00:00:04.757' AS DateTime), NULL, NULL, NULL, N'Por pagar', NULL, NULL, NULL, NULL, NULL, NULL, 36)
SET IDENTITY_INSERT [dbo].[ReferenceInUse] OFF
GO
SET IDENTITY_INSERT [dbo].[ReferenceLog] ON 

INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20291, N'325926222', CAST(N'2023-10-18T16:43:33.847' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 5)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20292, N'325926222', CAST(N'2023-10-18T17:01:36.467' AS DateTime), N'COMPLETE DELETION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 5)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20293, N'932284980', CAST(N'2023-10-18T17:03:58.167' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 6)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20294, N'109403602', CAST(N'2023-10-18T19:15:18.250' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 7)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20295, N'678501965', CAST(N'2023-10-18T19:30:25.157' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 8)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20296, N'678501965', CAST(N'2023-10-18T19:38:04.580' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 3, N'Flex', NULL, NULL, 9)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20297, N'678501965', CAST(N'2023-10-18T19:39:50.480' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 10)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20298, N'678501965', CAST(N'2023-10-18T19:42:40.147' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 11)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20299, N'678501965', CAST(N'2023-10-18T19:47:21.000' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 12)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20300, N'678501965', CAST(N'2023-10-18T19:52:21.173' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 13)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20301, N'678501965', CAST(N'2023-10-18T19:57:00.873' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 14)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20302, N'678501965', CAST(N'2023-10-18T20:06:20.623' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 15)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20303, N'678501965', CAST(N'2023-10-18T20:12:40.823' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 16)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20304, N'678501965', CAST(N'2023-10-18T20:19:46.027' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 17)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20305, N'678501965', CAST(N'2023-10-18T20:24:14.993' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 18)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20306, N'678501965', CAST(N'2023-10-18T20:34:09.017' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 19)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20307, N'678501965', CAST(N'2023-10-18T20:37:37.697' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 20)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20308, N'678501965', CAST(N'2023-10-18T20:43:55.257' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 21)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20309, N'678501965', CAST(N'2023-10-18T20:46:47.380' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 2, N'Parts', NULL, NULL, 22)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20310, N'678501965', CAST(N'2023-10-18T21:09:30.980' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 2, N'Parts', NULL, NULL, 23)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20311, N'678501965', CAST(N'2023-10-18T21:34:54.157' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 2, N'Parts', NULL, NULL, 24)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20312, N'678501965', CAST(N'2023-10-18T21:58:47.943' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 3, N'Flex', NULL, NULL, 25)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20313, N'678501965', CAST(N'2023-10-18T22:22:29.537' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 3, N'Flex', NULL, NULL, 26)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20314, N'678501965', CAST(N'2023-10-18T22:28:43.210' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 3, N'Flex', NULL, NULL, 27)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20315, N'678501965', CAST(N'2023-10-18T22:31:14.453' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 3, N'Flex', NULL, NULL, 28)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20316, N'678501965', CAST(N'2023-10-18T23:09:20.537' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 3, N'Flex', NULL, NULL, 29)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20317, N'678501965', CAST(N'2023-10-18T23:33:54.317' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 3, N'Flex', NULL, NULL, 30)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20318, N'678501965', CAST(N'2023-10-18T23:43:49.830' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 3, N'Flex', NULL, NULL, 31)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20319, N'678501965', CAST(N'2023-10-18T23:47:23.763' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 3, N'Flex', NULL, NULL, 32)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20320, N'678501965', CAST(N'2023-10-18T23:49:33.543' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 3, N'Flex', NULL, NULL, 33)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20321, N'678501965', CAST(N'2023-10-18T23:55:10.873' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 3, N'Flex', NULL, NULL, 34)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20322, N'678501965', CAST(N'2023-10-19T00:04:18.380' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 36)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20323, N'678501965', CAST(N'2023-10-19T17:23:14.713' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 37)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20324, N'603526244', CAST(N'2023-10-20T19:50:06.290' AS DateTime), N'CREATION', NULL, 3, N'JD Consumer Finance Inc.', 1, N'Default', NULL, NULL, 1)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20325, N'140308160', CAST(N'2023-10-20T19:51:04.673' AS DateTime), N'CREATION', NULL, 3, N'JD Consumer Finance Inc.', 2, N'Parts', NULL, NULL, 2)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20326, N'140308160', CAST(N'2023-10-20T20:17:13.757' AS DateTime), N'UPDATION', NULL, 3, N'JD Consumer Finance Inc.', 2, N'Parts', NULL, NULL, 2)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20327, N'852139893', CAST(N'2023-10-24T08:52:06.887' AS DateTime), N'CREATION', NULL, 3, N'JD Consumer Finance Inc.', 2, N'Parts', NULL, NULL, 3)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20328, N'895455067', CAST(N'2023-10-24T09:14:33.780' AS DateTime), N'CREATION', NULL, 3, N'JD Consumer Finance Inc.', 2, N'Parts', NULL, NULL, 4)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20329, N'678501965', CAST(N'2023-10-24T09:15:20.170' AS DateTime), N'CREATION', NULL, 3, N'JD Consumer Finance Inc.', 1, N'Default', NULL, NULL, 5)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20330, N'678501965', CAST(N'2023-10-24T09:24:11.860' AS DateTime), N'CREATION', NULL, 3, N'JD Consumer Finance Inc.', 1, N'Default', NULL, NULL, 6)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20331, N'678501965', CAST(N'2023-10-24T09:32:36.297' AS DateTime), N'CREATION', NULL, 3, N'JD Consumer Finance Inc.', 1, N'Default', NULL, NULL, 7)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20332, N'678501965', CAST(N'2023-10-24T09:37:42.090' AS DateTime), N'CREATION', NULL, 3, N'JD Consumer Finance Inc.', 1, N'Default', NULL, NULL, 8)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20333, N'678501965', CAST(N'2023-10-24T09:40:15.520' AS DateTime), N'CREATION', NULL, 3, N'JD Consumer Finance Inc.', 1, N'Default', NULL, NULL, 9)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20334, N'678501965', CAST(N'2023-10-24T09:42:59.390' AS DateTime), N'CREATION', NULL, 3, N'JD Consumer Finance Inc.', 1, N'Default', NULL, NULL, 10)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20335, N'678501965', CAST(N'2023-10-24T09:43:43.160' AS DateTime), N'CREATION', NULL, 3, N'JD Consumer Finance Inc.', 3, N'Flex', NULL, NULL, 11)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20336, N'678501965', CAST(N'2023-10-24T21:20:13.907' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 3, N'Flex', NULL, NULL, 12)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20337, N'012345670', CAST(N'2023-12-02T18:26:14.517' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 13)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20338, N'001234567', CAST(N'2023-12-02T18:26:24.483' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 14)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20339, N'000123456', CAST(N'2023-12-02T18:30:07.717' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 15)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20340, N'049449731', CAST(N'2023-12-02T18:31:10.317' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 16)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20341, N'185124748', CAST(N'2023-12-06T17:35:27.040' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 17)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20342, N'636233074', CAST(N'2023-12-06T17:36:20.640' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 18)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20343, N'407964299', CAST(N'2023-12-06T17:36:29.893' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 19)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20344, N'072645531', CAST(N'2023-12-06T09:06:16.687' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 20)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20345, N'492649029', CAST(N'2023-12-06T09:06:20.157' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 21)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20346, N'294148830', CAST(N'2023-12-06T09:06:22.247' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 22)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20347, N'524950818', CAST(N'2023-12-09T20:26:42.640' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 23)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20348, N'797902969', CAST(N'2023-12-09T21:00:18.377' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 24)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20349, N'355044838', CAST(N'2024-04-02T21:15:00.417' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 25)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20350, N'653847581', CAST(N'2024-04-02T21:27:16.303' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 26)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20351, N'273610918', CAST(N'2024-04-02T21:41:55.443' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 27)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20352, N'251022679', CAST(N'2024-04-02T22:03:06.587' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 28)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20353, N'456024803', CAST(N'2024-04-02T22:16:58.047' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 29)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20354, N'968357136', CAST(N'2024-04-02T22:30:20.077' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 30)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20355, N'340919957', CAST(N'2024-04-02T22:31:16.967' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 2, N'Parts', NULL, NULL, 31)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20356, N'564028694', CAST(N'2024-04-02T22:33:01.580' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 3, N'Flex', NULL, NULL, 32)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20357, N'675246963', CAST(N'2024-04-02T23:28:48.647' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 3, N'Flex', NULL, NULL, 33)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20358, N'196325308', CAST(N'2024-04-02T23:33:10.257' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 2, N'Parts', NULL, NULL, 34)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20359, N'818814621', CAST(N'2024-04-02T23:50:00.820' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 2, N'Parts', NULL, NULL, 35)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20360, N'678501965', CAST(N'2024-04-03T00:00:00.633' AS DateTime), N'EXPIRATION', N'Deleted from Use due to expiry on 2024-02-21 00:00:00', 1, N'JD Real State Inc.', 3, N'Flex', NULL, NULL, 12)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20361, N'012345670', CAST(N'2024-04-03T00:00:01.110' AS DateTime), N'EXPIRATION', N'Deleted from Use due to expiry on 2024-03-31 00:00:00', 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 13)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20362, N'049449731', CAST(N'2024-04-03T00:00:01.217' AS DateTime), N'EXPIRATION', N'Deleted from Use due to expiry on 2024-03-31 00:00:00', 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 16)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20363, N'637070870', CAST(N'2024-04-03T00:00:04.817' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 2, N'Parts', NULL, NULL, 36)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20364, N'696787853', CAST(N'2024-04-03T00:01:53.207' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 37)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20365, N'779357564', CAST(N'2024-04-03T00:08:12.720' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 38)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20366, N'923752309', CAST(N'2024-04-03T00:09:11.950' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 2, N'Parts', NULL, NULL, 39)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20367, N'983688263', CAST(N'2024-04-03T00:10:43.170' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 3, N'Flex', NULL, NULL, 40)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20368, N'987333063', CAST(N'2024-04-03T00:11:48.410' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 3, N'Flex', NULL, NULL, 41)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20370, N'613934234', CAST(N'2024-04-03T15:13:11.207' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 42)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20371, N'578518024', CAST(N'2024-04-03T15:33:17.250' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 43)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20372, N'742615136', CAST(N'2024-04-03T16:53:36.100' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 44)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20373, N'770215683', CAST(N'2024-04-03T17:17:25.800' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 45)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20374, N'836241599', CAST(N'2024-04-03T17:39:07.717' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 46)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20375, N'328869088', CAST(N'2024-04-03T18:40:38.057' AS DateTime), N'CREATION', NULL, 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 47)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20376, N'185124748', CAST(N'2024-04-04T00:00:00.647' AS DateTime), N'EXPIRATION', N'Deleted from Use due to expiry on 2024-04-04 00:00:00', 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 17)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20377, N'636233074', CAST(N'2024-04-04T00:00:00.770' AS DateTime), N'EXPIRATION', N'Deleted from Use due to expiry on 2024-04-04 00:00:00', 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 18)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20378, N'294148830', CAST(N'2024-04-04T00:00:00.817' AS DateTime), N'EXPIRATION', N'Deleted from Use due to expiry on 2024-04-04 00:00:00', 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 22)
INSERT [dbo].[ReferenceLog] ([id], [reference_number], [event_date], [operation], [details], [id_business], [business_name], [id_reference_type], [reference_type_name], [id_partner], [partner_name], [id_reference_in_history]) VALUES (20385, N'524950818', CAST(N'2024-04-07T00:00:00.630' AS DateTime), N'EXPIRATION', N'Deleted from Use due to expiry on 2024-04-07 00:00:00', 1, N'JD Real State Inc.', 1, N'Default', NULL, NULL, 23)
SET IDENTITY_INSERT [dbo].[ReferenceLog] OFF
GO
SET IDENTITY_INSERT [dbo].[ReferenceType] ON 

INSERT [dbo].[ReferenceType] ([id], [name], [description], [shortening], [duration], [is_fixed_duration], [is_active], [max_acceptable_amount], [min_acceptable_amount], [id_reference_type_category], [min_acceptable_amount_part], [max_acceptable_amount_part]) VALUES (1, N'Default', NULL, N'D', 120, 0, 1, CAST(19000000.00 AS Numeric(13, 2)), CAST(100.00 AS Numeric(13, 2)), 1, NULL, NULL)
INSERT [dbo].[ReferenceType] ([id], [name], [description], [shortening], [duration], [is_fixed_duration], [is_active], [max_acceptable_amount], [min_acceptable_amount], [id_reference_type_category], [min_acceptable_amount_part], [max_acceptable_amount_part]) VALUES (2, N'Parts', NULL, N'P', 120, 0, 1, CAST(50000000.00 AS Numeric(13, 2)), CAST(20000000.00 AS Numeric(13, 2)), 2, CAST(100.00 AS Numeric(13, 2)), CAST(19000000.00 AS Numeric(13, 2)))
INSERT [dbo].[ReferenceType] ([id], [name], [description], [shortening], [duration], [is_fixed_duration], [is_active], [max_acceptable_amount], [min_acceptable_amount], [id_reference_type_category], [min_acceptable_amount_part], [max_acceptable_amount_part]) VALUES (3, N'Flex', NULL, N'F', 120, 0, 1, CAST(18000000.00 AS Numeric(13, 2)), CAST(1000000.00 AS Numeric(13, 2)), 3, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ReferenceType] OFF
GO
SET IDENTITY_INSERT [dbo].[ReferenceTypeCategory] ON 

INSERT [dbo].[ReferenceTypeCategory] ([id], [name], [description]) VALUES (1, N'Fully Paid', N'Requires the amount to be paid in full')
INSERT [dbo].[ReferenceTypeCategory] ([id], [name], [description]) VALUES (2, N'Partially Paid', N'Allows the subdivision of the amount into parts on creation')
INSERT [dbo].[ReferenceTypeCategory] ([id], [name], [description]) VALUES (3, N'Freely Paid', N'Allows the payer to choose how to settle the amount')
SET IDENTITY_INSERT [dbo].[ReferenceTypeCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [name], [description]) VALUES (1, N'ROLE_ADMIN', NULL)
INSERT [dbo].[Role] ([id], [name], [description]) VALUES (2, N'ROLE_OPERATOR', NULL)
INSERT [dbo].[Role] ([id], [name], [description]) VALUES (3, N'ROLE_BUSINESS', NULL)
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Role_Privileges] ON 

INSERT [dbo].[Role_Privileges] ([id], [id_role], [id_privilege]) VALUES (2, 1, 1)
INSERT [dbo].[Role_Privileges] ([id], [id_role], [id_privilege]) VALUES (3, 1, 2)
INSERT [dbo].[Role_Privileges] ([id], [id_role], [id_privilege]) VALUES (4, 1, 3)
INSERT [dbo].[Role_Privileges] ([id], [id_role], [id_privilege]) VALUES (5, 1, 4)
INSERT [dbo].[Role_Privileges] ([id], [id_role], [id_privilege]) VALUES (6, 1, 5)
INSERT [dbo].[Role_Privileges] ([id], [id_role], [id_privilege]) VALUES (7, 1, 6)
INSERT [dbo].[Role_Privileges] ([id], [id_role], [id_privilege]) VALUES (9, 2, 1)
INSERT [dbo].[Role_Privileges] ([id], [id_role], [id_privilege]) VALUES (10, 2, 2)
SET IDENTITY_INSERT [dbo].[Role_Privileges] OFF
GO
SET IDENTITY_INSERT [dbo].[Subscriber] ON 

INSERT [dbo].[Subscriber] ([id], [internal_number], [name], [description], [is_active], [creation_date], [id_subscriber_type], [email], [phone_number], [id_bank_details], [id_account], [token], [id_subscriber_category], [fin], [eac], [id_address], [initials]) VALUES (3, N'0001', N'John Doe Holdings', N'The Subscription of Joe´s Companies', 1, CAST(N'2022-07-04' AS Date), 1, N'holdings@johndoegroup.co.ao', N'244923923923', 1, 17, N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJzYmEuc3Vic2NyaWJlciIsInJvbCI6WyJST0xFX1NVQlNDUklCRVIiXX0.S36W4FxX1V0hTP0bYlTZ9h7WWBSpxRSfM5--nV0L6VJu5izcYknbou-7rIhtTJ6OhbdE6wh_n-sE3dSWWj6Ztg', 1, N'129989839480948', N'12345', 1, N'JDH')
INSERT [dbo].[Subscriber] ([id], [internal_number], [name], [description], [is_active], [creation_date], [id_subscriber_type], [email], [phone_number], [id_bank_details], [id_account], [token], [id_subscriber_category], [fin], [eac], [id_address], [initials]) VALUES (7, N'0002', N'DP World', N'DP World MPL Serviços, SA', 1, CAST(N'2023-06-02' AS Date), 1, N'ritesh.gupta@dpworld.com', N'244929653244', 1, 20, N'ABC', 3, N'5000658766', N'14', NULL, N'DPW')
INSERT [dbo].[Subscriber] ([id], [internal_number], [name], [description], [is_active], [creation_date], [id_subscriber_type], [email], [phone_number], [id_bank_details], [id_account], [token], [id_subscriber_category], [fin], [eac], [id_address], [initials]) VALUES (8, N'0003', N'Angoalissar, Comércio e Indústria LDA', N'Subscription for Payments by Reference', 1, CAST(N'2023-06-02' AS Date), 1, N'vanda.antonio@angoalissar.com', N'+244937341937', 3, 21, N'ABC', 4, N'5410000269', N'82900', 2, N'AAL')
SET IDENTITY_INSERT [dbo].[Subscriber] OFF
GO
SET IDENTITY_INSERT [dbo].[Subscriber_SubscriberCategories] ON 

INSERT [dbo].[Subscriber_SubscriberCategories] ([id], [id_subscriber], [id_subscriber_category]) VALUES (1, 8, 4)
INSERT [dbo].[Subscriber_SubscriberCategories] ([id], [id_subscriber], [id_subscriber_category]) VALUES (5, 8, 5)
SET IDENTITY_INSERT [dbo].[Subscriber_SubscriberCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[SubscriberCategory] ON 

INSERT [dbo].[SubscriberCategory] ([id], [name], [description], [icon]) VALUES (1, N'Finance', N'Entities with Financial purposes.', NULL)
INSERT [dbo].[SubscriberCategory] ([id], [name], [description], [icon]) VALUES (2, N'Banka', N'Entities from the Banking market', NULL)
INSERT [dbo].[SubscriberCategory] ([id], [name], [description], [icon]) VALUES (3, N'Transport', N'Entities with Transporting purposes', NULL)
INSERT [dbo].[SubscriberCategory] ([id], [name], [description], [icon]) VALUES (4, N'Trading', N'Buying and selling goods and services', NULL)
INSERT [dbo].[SubscriberCategory] ([id], [name], [description], [icon]) VALUES (5, N'Industry', N'Economic activity concerned with the processing of raw materials and manufacture of goods in factories', NULL)
SET IDENTITY_INSERT [dbo].[SubscriberCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[SubscriberType] ON 

INSERT [dbo].[SubscriberType] ([id], [name], [description], [icon]) VALUES (1, N'Big Client', N'Type for big size entities', NULL)
INSERT [dbo].[SubscriberType] ([id], [name], [description], [icon]) VALUES (2, N'Medium Client', N'Type for middle size entities', NULL)
SET IDENTITY_INSERT [dbo].[SubscriberType] OFF
GO
SET IDENTITY_INSERT [dbo].[ValidTokens] ON 

INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (4, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IlRodSwgMDgtMDYtMjAyMyAwNzozNTozNiIsInJvbCI6WyJEQVNIQk9BUkRfR0VORVJBTCIsIlJFRkVSRU5DRV9DUkVBVElPTiIsIlJFRkVSRU5DRV9VUERBVElPTiIsIlJFRkVSRU5DRV9MSVNUIiwiUkVGRVJFTkNFX0RFTEVUSU9OIiwiUkVGRVJFTkNFX0JMT0NLIl19.pYtP18XJR1ucMVfb67-c1kr4Mx78iBCDZi8072Kfb4jYPStiDRMrS6AYU6LoqHmZ314DaOiXO7GnjIkNicWDBA', CAST(N'2023-06-08T07:35:36.170' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (5, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IlRodSwgMDgtMDYtMjAyMyAwODo1NTowMiIsInJvbCI6WyJEQVNIQk9BUkRfR0VORVJBTCIsIlJFRkVSRU5DRV9DUkVBVElPTiIsIlJFRkVSRU5DRV9VUERBVElPTiIsIlJFRkVSRU5DRV9MSVNUIiwiUkVGRVJFTkNFX0RFTEVUSU9OIiwiUkVGRVJFTkNFX0JMT0NLIl19.tBEKXew7iGeZqCjQ9RjhB0KJnKBAeKjl4oDBXkxVzgREBT03t8CqQQowNp0BqeHA3guQXZ7Zm3LcVS3NZ7DamQ', CAST(N'2023-06-08T08:55:02.070' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (6, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IlRodSwgMDgtMDYtMjAyMyAwODo1Njo0MSIsInJvbCI6WyJEQVNIQk9BUkRfR0VORVJBTCIsIlJFRkVSRU5DRV9DUkVBVElPTiIsIlJFRkVSRU5DRV9VUERBVElPTiIsIlJFRkVSRU5DRV9MSVNUIiwiUkVGRVJFTkNFX0RFTEVUSU9OIiwiUkVGRVJFTkNFX0JMT0NLIl19.dS3ZXNPX7c8BE3oLUitSbyBNavIxuCfSRXgZ9iXFDsrStqsNRI_bb1z6PasL1U4vRYc7UpY6sVUke2KahqZ3iw', CAST(N'2023-06-08T08:56:41.417' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (7, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IlRodSwgMDgtMDYtMjAyMyAwOTozMDowNiIsInJvbCI6WyJEQVNIQk9BUkRfR0VORVJBTCIsIlJFRkVSRU5DRV9DUkVBVElPTiIsIlJFRkVSRU5DRV9VUERBVElPTiIsIlJFRkVSRU5DRV9MSVNUIiwiUkVGRVJFTkNFX0RFTEVUSU9OIiwiUkVGRVJFTkNFX0JMT0NLIl19.kr8k7WtEuACC1etFaeamlKZJuURL3kDUpFMZ1dIGVvpYWjVgirV3xIf2UsaI2TVs03YvUg8OEDAu33j1LCOr8w', CAST(N'2023-06-08T09:30:06.933' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (8, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IlRodSwgMDgtMDYtMjAyMyAxMTowNTo0NSIsInJvbCI6WyJEQVNIQk9BUkRfR0VORVJBTCIsIlJFRkVSRU5DRV9DUkVBVElPTiIsIlJFRkVSRU5DRV9VUERBVElPTiIsIlJFRkVSRU5DRV9MSVNUIiwiUkVGRVJFTkNFX0RFTEVUSU9OIiwiUkVGRVJFTkNFX0JMT0NLIl19.h4f4-W4bykAKJ13go4N3jyG8GyWDk4BfO52kIgkZjZ1dzmVLcnIVa9DlU4Zj7KNnv9EU0QHbdy8VZo9N5FvegQ', CAST(N'2023-06-08T11:05:45.527' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (9, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IlRodSwgMDgtMDYtMjAyMyAwMzoxMToyMiIsInJvbCI6WyJEQVNIQk9BUkRfR0VORVJBTCIsIlJFRkVSRU5DRV9DUkVBVElPTiIsIlJFRkVSRU5DRV9VUERBVElPTiIsIlJFRkVSRU5DRV9MSVNUIiwiUkVGRVJFTkNFX0RFTEVUSU9OIiwiUkVGRVJFTkNFX0JMT0NLIl19.tvr7BzLRusO3QFjpoRzR1a4v__OYt-OO-7QIIXa-KRW80biUL0tcv_3iNVkacUOrySK1h5ZVFyKHwzPo9il1DA', CAST(N'2023-06-08T03:11:22.447' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (10, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IlRodSwgMDgtMDYtMjAyMyAwMzoxMjoyNyIsInJvbCI6WyJEQVNIQk9BUkRfR0VORVJBTCIsIlJFRkVSRU5DRV9DUkVBVElPTiIsIlJFRkVSRU5DRV9VUERBVElPTiIsIlJFRkVSRU5DRV9MSVNUIiwiUkVGRVJFTkNFX0RFTEVUSU9OIiwiUkVGRVJFTkNFX0JMT0NLIl19.bboxfFu27RWC7yU6ZNrf0aoJKhC96YkRfSjPM8Lpx1oMZG34yibla3BIEIYXqkY_BBeXrasFTo9ly0gGtCh87Q', CAST(N'2023-06-08T03:12:27.797' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (12, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IlR1ZSwgMTMtMDYtMjAyMyAxNDo1NTozOCIsInJvbCI6WyJEQVNIQk9BUkRfR0VORVJBTCIsIlJFRkVSRU5DRV9DUkVBVElPTiIsIlJFRkVSRU5DRV9VUERBVElPTiIsIlJFRkVSRU5DRV9MSVNUIiwiUkVGRVJFTkNFX0RFTEVUSU9OIiwiUkVGRVJFTkNFX0JMT0NLIl19.Sxg2Q4ddzNBsrVU5odVQMHYZc3TPakYXV_0JfhwExkBRHnaF0vbq2QKWxYmzy_TntAXIF3iN3jYA-gNJ41Qxag', CAST(N'2023-06-13T14:55:38.970' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (13, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IlR1ZSwgMTMtMDYtMjAyMyAxNToyNjo1NiIsInJvbCI6WyJEQVNIQk9BUkRfR0VORVJBTCIsIlJFRkVSRU5DRV9DUkVBVElPTiIsIlJFRkVSRU5DRV9VUERBVElPTiIsIlJFRkVSRU5DRV9MSVNUIiwiUkVGRVJFTkNFX0RFTEVUSU9OIiwiUkVGRVJFTkNFX0JMT0NLIl19._0U_qw5AObpxKlENkNdlaKfTGQMeOCeaelWRsEPRxJliaXZNqyB_stzgG_khmQfIQ63j3WI2K_YmOWGM4uOOtw', CAST(N'2023-06-13T15:26:56.167' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (14, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IlR1ZSwgMTMtMDYtMjAyMyAxNzowNzo0NSIsInJvbCI6WyJEQVNIQk9BUkRfR0VORVJBTCIsIlJFRkVSRU5DRV9DUkVBVElPTiIsIlJFRkVSRU5DRV9VUERBVElPTiIsIlJFRkVSRU5DRV9MSVNUIiwiUkVGRVJFTkNFX0RFTEVUSU9OIiwiUkVGRVJFTkNFX0JMT0NLIl19.NF09f94AbCtqP-JdiSI2hqiBFVj96xpFYFpmojLuDYMrbyTYy4UKhXTPVxo6uPd7VKUm9Obr_Iwz3Ql6Ozhr4g', CAST(N'2023-06-13T17:07:45.663' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (16, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IlR1ZSwgMTMtMDYtMjAyMyAxNzo0MDo0MCIsInJvbCI6WyJEQVNIQk9BUkRfR0VORVJBTCIsIlJFRkVSRU5DRV9DUkVBVElPTiIsIlJFRkVSRU5DRV9VUERBVElPTiIsIlJFRkVSRU5DRV9MSVNUIiwiUkVGRVJFTkNFX0RFTEVUSU9OIiwiUkVGRVJFTkNFX0JMT0NLIl19.qEOjZ2hbP2in1nK6MlIUImSqeI3ky9MgYFrsMYbT5ELRpImmS0LYi8HLX9YNNGIuVYHIWqeTGyMPUi_T4GdEaA', CAST(N'2023-06-13T17:40:40.830' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (17, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IlR1ZSwgMTMtMDYtMjAyMyAxNzo0Mjo0NyIsInJvbCI6WyJEQVNIQk9BUkRfR0VORVJBTCIsIlJFRkVSRU5DRV9DUkVBVElPTiIsIlJFRkVSRU5DRV9VUERBVElPTiIsIlJFRkVSRU5DRV9MSVNUIiwiUkVGRVJFTkNFX0RFTEVUSU9OIiwiUkVGRVJFTkNFX0JMT0NLIl19.RAfQbFko26vqQo_L_Fntst0aENggBoGVzO9I3M-7ivdN_4euhmElp1pc9C_fbAvj5mBiBxS4I0-l5NgHCrug1g', CAST(N'2023-06-13T17:42:47.520' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (19, N'b2d9dcdef414b31326a0f696821351c8', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJiMmQ5ZGNkZWY0MTRiMzEzMjZhMGY2OTY4MjEzNTFjOCIsImNyZWF0aW9uRGF0ZSI6IkZyaSwgMTYtMDYtMjAyMyAxMjo0NDo0NSIsInJvbCI6WyJEQVNIQk9BUkRfR0VORVJBTCIsIlJFRkVSRU5DRV9DUkVBVElPTiIsIlJFRkVSRU5DRV9VUERBVElPTiIsIlJFRkVSRU5DRV9MSVNUIiwiUkVGRVJFTkNFX0RFTEVUSU9OIiwiUkVGRVJFTkNFX0JMT0NLIl19.ZWPDBfKa3sLdncT5bbmxxdBKdjwJWUya3CGtSXDtBYxhn2Nf9LboV8DFwxxESDLMr3LtzWwgLOt1Gv3nRcXtIA', CAST(N'2023-06-16T12:44:45.067' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (20, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IkZyaSwgMTYtMDYtMjAyMyAxNDo0MzozNCIsInJvbCI6WyJEQVNIQk9BUkRfR0VORVJBTCIsIlJFRkVSRU5DRV9DUkVBVElPTiIsIlJFRkVSRU5DRV9VUERBVElPTiIsIlJFRkVSRU5DRV9MSVNUIiwiUkVGRVJFTkNFX0RFTEVUSU9OIiwiUkVGRVJFTkNFX0JMT0NLIl19.j9CtC1fMAfcEJOO8gs9ifnOMvMGSaAYts-buJphhMZ51E26xKlKbSlFujFkB_wFmpiY5UlOa6mc85GT7I_ZuCw', CAST(N'2023-06-16T14:43:34.787' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (23, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IldlZCwgMjgtMDYtMjAyMyAwOTozODoxOCIsInJvbCI6WyJEQVNIQk9BUkRfR0VORVJBTCIsIlJFRkVSRU5DRV9DUkVBVElPTiIsIlJFRkVSRU5DRV9VUERBVElPTiIsIlJFRkVSRU5DRV9MSVNUIiwiUkVGRVJFTkNFX0RFTEVUSU9OIiwiUkVGRVJFTkNFX0JMT0NLIl19.uoswVeZnAhsYt_M-GYw020Q-H4YG1Wu0wfc50tdAs8oGDeCppumdato9RJ3NRfpIY35M-KsVMC5vXMoU043xNg', CAST(N'2023-06-28T09:38:18.197' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (25, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IlRodSwgMDYtMDctMjAyMyAxNjoxODo0MyIsInJvbCI6WyJEQVNIQk9BUkRfR0VORVJBTCIsIlJFRkVSRU5DRV9DUkVBVElPTiIsIlJFRkVSRU5DRV9VUERBVElPTiIsIlJFRkVSRU5DRV9MSVNUIiwiUkVGRVJFTkNFX0RFTEVUSU9OIiwiUkVGRVJFTkNFX0JMT0NLIl19.agsNkJT_r0XEF84yP2XugVj5qAnqA4k5hnnWI6mj15Z8FadBZrgDka6Xo1ESZmp9l4e-AHfIwn0nDsfLcuEylg', CAST(N'2023-07-06T16:18:43.597' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (26, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IlRodSwgMDYtMDctMjAyMyAxNjoxOToyNyIsInJvbCI6WyJEQVNIQk9BUkRfR0VORVJBTCIsIlJFRkVSRU5DRV9DUkVBVElPTiIsIlJFRkVSRU5DRV9VUERBVElPTiIsIlJFRkVSRU5DRV9MSVNUIiwiUkVGRVJFTkNFX0RFTEVUSU9OIiwiUkVGRVJFTkNFX0JMT0NLIl19.OQx6E4eIf1IvaWOabXe2AA_1qLB8rnbYHWD10mHvsI4Ida7uMGIvTyYba20owCchTECWDpiayxdA_FpFOhd-4g', CAST(N'2023-07-06T16:19:27.473' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (27, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IkZyaSwgMDctMDctMjAyMyAwOTo1NTowNSIsInJvbCI6WyJEQVNIQk9BUkRfR0VORVJBTCIsIlJFRkVSRU5DRV9DUkVBVElPTiIsIlJFRkVSRU5DRV9VUERBVElPTiIsIlJFRkVSRU5DRV9MSVNUIiwiUkVGRVJFTkNFX0RFTEVUSU9OIiwiUkVGRVJFTkNFX0JMT0NLIl19.MB1bdR6Xf_6jfjMceJa-KBlEKP7gxtKEw0xN51-7Cty9ppEavof6yqVclxup4pKixtq5rQBhS6EhaEuprZC2Qg', CAST(N'2023-07-07T09:55:05.510' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (29, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IjIwMjMtMDctMTQgMTc6MjU6MTAiLCJyb2wiOlsiREFTSEJPQVJEX0dFTkVSQUwiLCJSRUZFUkVOQ0VfQ1JFQVRJT04iLCJSRUZFUkVOQ0VfVVBEQVRJT04iLCJSRUZFUkVOQ0VfTElTVCIsIlJFRkVSRU5DRV9ERUxFVElPTiIsIlJFRkVSRU5DRV9CTE9DSyJdfQ.zlMHgQl_IdknZOXsl5-VD46ubpFqOtv7zlkkG8HPnYuJLhGFjXdZiLSzYUSjns5X56TalJqPWaamQrzZR6dkbQ', CAST(N'2023-07-14T17:25:10.197' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (32, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IjIwMjMtMDctMTggMDY6MTE6NTEiLCJyb2wiOlsiREFTSEJPQVJEX0dFTkVSQUwiLCJSRUZFUkVOQ0VfQ1JFQVRJT04iLCJSRUZFUkVOQ0VfVVBEQVRJT04iLCJSRUZFUkVOQ0VfTElTVCIsIlJFRkVSRU5DRV9ERUxFVElPTiIsIlJFRkVSRU5DRV9CTE9DSyJdfQ.jtRwUfD8gKeGx_AnSeOLBmsReUOMhg2bnbNXuGiLerpyALnr6-8AoN_8rAu2rRWBCjSywRlgFDxMSOd-De3W8Q', CAST(N'2023-07-18T06:11:51.327' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (37, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IjIwMjMtMDctMjcgMTY6NDI6NTMiLCJyb2wiOlsiREFTSEJPQVJEX0dFTkVSQUwiLCJSRUZFUkVOQ0VfQ1JFQVRJT04iLCJSRUZFUkVOQ0VfVVBEQVRJT04iLCJSRUZFUkVOQ0VfTElTVCIsIlJFRkVSRU5DRV9ERUxFVElPTiIsIlJFRkVSRU5DRV9CTE9DSyJdfQ.umQZEW2Xt2ckBQnlGBIy3QjdWsuoucb6Z3zxSPCU4ECSEo5_MVo-tLmKeH6OH6EwN_eSbfrVpttBAqEavbpCmA', CAST(N'2023-07-27T16:42:53.747' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (39, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IjIwMjMtMDctMzAgMTI6MTk6MTciLCJyb2wiOlsiREFTSEJPQVJEX0dFTkVSQUwiLCJSRUZFUkVOQ0VfQ1JFQVRJT04iLCJSRUZFUkVOQ0VfVVBEQVRJT04iLCJSRUZFUkVOQ0VfTElTVCIsIlJFRkVSRU5DRV9ERUxFVElPTiIsIlJFRkVSRU5DRV9CTE9DSyJdfQ.ChPXW9ElAKlSBpygUrqkzqv83QpCnX--NwZiRBkMMxZz9ryDvDZv-tr7rq20sEIgcNn8_8jPA3IhSPfy1wCoIw', CAST(N'2023-07-30T12:19:17.300' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (41, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IjIwMjMtMDgtMjkgMDk6NTg6MzciLCJyb2wiOlsiREFTSEJPQVJEX0dFTkVSQUwiLCJSRUZFUkVOQ0VfQ1JFQVRJT04iLCJSRUZFUkVOQ0VfVVBEQVRJT04iLCJSRUZFUkVOQ0VfTElTVCIsIlJFRkVSRU5DRV9ERUxFVElPTiIsIlJFRkVSRU5DRV9CTE9DSyJdfQ.wrjOAqlI6H-_wiez2vlQdBmS9ysdmj98YW9eLYyVwrglJ3PTmoB7nsRmTXYKMNiobAd3_YzBRwBrDqglJL3ZAw', CAST(N'2023-08-29T09:58:37.933' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (42, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IjIwMjMtMDgtMjkgMTA6MTE6MDMiLCJyb2wiOlsiREFTSEJPQVJEX0dFTkVSQUwiLCJSRUZFUkVOQ0VfQ1JFQVRJT04iLCJSRUZFUkVOQ0VfVVBEQVRJT04iLCJSRUZFUkVOQ0VfTElTVCIsIlJFRkVSRU5DRV9ERUxFVElPTiIsIlJFRkVSRU5DRV9CTE9DSyJdfQ.aM2oCviJqmrFZ4pbDlEKK4X1_7CoYda_ZzGgSH85qf2Ufp4Mj3Niko76dpjXbts0McqcmJ9Q_7Xib7ESXXMSBA', CAST(N'2023-08-29T10:11:03.773' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (43, N'adminasklskalslas', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmFza2xza2Fsc2xhcyIsImNyZWF0aW9uRGF0ZSI6IjIwMjMtMDgtMjkgMTE6Mjc6MzQiLCJyb2wiOlsiREFTSEJPQVJEX0dFTkVSQUwiLCJSRUZFUkVOQ0VfQ1JFQVRJT04iLCJSRUZFUkVOQ0VfVVBEQVRJT04iLCJSRUZFUkVOQ0VfTElTVCIsIlJFRkVSRU5DRV9ERUxFVElPTiIsIlJFRkVSRU5DRV9CTE9DSyJdfQ.5grKiEwkrTcImKk07dtfFZEwawGo-5pEXxMTSQDaZwWMJk8Uaa8DvIDDSRQ-B7S0JUvfpEDo6rjUAv_rijkwFA', CAST(N'2023-08-29T11:27:34.257' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (44, N'075d645fe9cf22feebd5468cfc53770a', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIwNzVkNjQ1ZmU5Y2YyMmZlZWJkNTQ2OGNmYzUzNzcwYSIsImNyZWF0aW9uRGF0ZSI6IjIwMjMtMDgtMjkgMTY6NDk6MzQiLCJyb2wiOlsiREFTSEJPQVJEX0dFTkVSQUwiLCJSRUZFUkVOQ0VfQ1JFQVRJT04iLCJSRUZFUkVOQ0VfVVBEQVRJT04iLCJSRUZFUkVOQ0VfTElTVCIsIlJFRkVSRU5DRV9ERUxFVElPTiIsIlJFRkVSRU5DRV9CTE9DSyJdfQ.zzD0aFKSJ2kUvkQzcnUCGBgp_Cw9_HuWYpM0wrrKej3Y-7fJWd0VMtCicFPxJV6Tzu1iBZIh0o1FZs8xOzF7Ig', CAST(N'2023-08-29T16:49:34.160' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (45, N'075d645fe9cf22feebd5468cfc53770a', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIwNzVkNjQ1ZmU5Y2YyMmZlZWJkNTQ2OGNmYzUzNzcwYSIsImNyZWF0aW9uRGF0ZSI6IjIwMjMtMTAtMDQgMTU6NTY6MTUiLCJyb2wiOlsiREFTSEJPQVJEX0dFTkVSQUwiLCJSRUZFUkVOQ0VfQ1JFQVRJT04iLCJSRUZFUkVOQ0VfVVBEQVRJT04iLCJSRUZFUkVOQ0VfTElTVCIsIlJFRkVSRU5DRV9ERUxFVElPTiIsIlJFRkVSRU5DRV9CTE9DSyJdfQ.7bg8WLXAwyUDLy4Y2TNbOOT2bqVzc1mueVfxSoXrxo0wZfYKKZ9Vpdh38JVbNHhG80t4l2FVSUE3BWNYvrhpfQ', CAST(N'2023-10-04T15:56:15.210' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (46, N'075d645fe9cf22feebd5468cfc53770a', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIwNzVkNjQ1ZmU5Y2YyMmZlZWJkNTQ2OGNmYzUzNzcwYSIsImNyZWF0aW9uRGF0ZSI6IjIwMjMtMTAtMDQgMTU6NTg6NDciLCJyb2wiOlsiREFTSEJPQVJEX0dFTkVSQUwiLCJSRUZFUkVOQ0VfQ1JFQVRJT04iLCJSRUZFUkVOQ0VfVVBEQVRJT04iLCJSRUZFUkVOQ0VfTElTVCIsIlJFRkVSRU5DRV9ERUxFVElPTiIsIlJFRkVSRU5DRV9CTE9DSyJdfQ.p-0IdRf0bmTIWoPS2qgX4ckL1ppyaNOaWcFDa5eWa2mEPqAeqSWB45rnuV24tjlWjSpZ3c8lF4G2NqimspIUEw', CAST(N'2023-10-04T15:58:47.100' AS DateTime))
INSERT [dbo].[ValidTokens] ([id], [client_id], [token], [expiry_date]) VALUES (47, N'075d645fe9cf22feebd5468cfc53770a', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIwNzVkNjQ1ZmU5Y2YyMmZlZWJkNTQ2OGNmYzUzNzcwYSIsImNyZWF0aW9uRGF0ZSI6IjIwMjMtMTAtMDQgMTY6MDI6MjYiLCJyb2wiOlsiREFTSEJPQVJEX0dFTkVSQUwiLCJSRUZFUkVOQ0VfQ1JFQVRJT04iLCJSRUZFUkVOQ0VfVVBEQVRJT04iLCJSRUZFUkVOQ0VfTElTVCIsIlJFRkVSRU5DRV9ERUxFVElPTiIsIlJFRkVSRU5DRV9CTE9DSyJdfQ.Ao4ivioqEWiW-1trF2fIiyfvXs2orAV2_3fB1GbvQv1jtpsPCJpU4-XblyIxeANo9-f-xYOhKSx5GDM3JSeJJA', CAST(N'2023-10-04T16:02:26.897' AS DateTime))
SET IDENTITY_INSERT [dbo].[ValidTokens] OFF
GO
/****** Object:  Index [UK_APIResponses_Code]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[__APIResponse] ADD  CONSTRAINT [UK_APIResponses_Code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_APIResponses_Status]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[__APIResponse] ADD  CONSTRAINT [UK_APIResponses_Status] UNIQUE NONCLUSTERED 
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK__ApplicationAPIService]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[_ApplicationAPIService] ADD  CONSTRAINT [UK__ApplicationAPIService] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_MFT_ProcessedFiles_Name]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[_MFT_FMOVLog] ADD  CONSTRAINT [UK_MFT_ProcessedFiles_Name] UNIQUE NONCLUSTERED 
(
	[filename] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Payment_Notification]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[_PRT_PaymentNotificationInUse] ADD  CONSTRAINT [IX_Payment_Notification] UNIQUE NONCLUSTERED 
(
	[reference_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK__PRT_PaymentNotificationInUse]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[_PRT_PaymentNotificationInUse] ADD  CONSTRAINT [UK__PRT_PaymentNotificationInUse] UNIQUE NONCLUSTERED 
(
	[reference_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IK_AccountType_Name]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[AccountType] ADD  CONSTRAINT [IK_AccountType_Name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UK_BuinessCategories]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[Business_BusinessCategories] ADD  CONSTRAINT [UK_BuinessCategories] UNIQUE NONCLUSTERED 
(
	[id_business] ASC,
	[id_business_category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UK_Project_Partner]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[Business_Partner] ADD  CONSTRAINT [UK_Project_Partner] UNIQUE NONCLUSTERED 
(
	[id_project] ASC,
	[id_partner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UK_NotificationConfig]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[BusinessPaymentNotificationConfig] ADD  CONSTRAINT [UK_NotificationConfig] UNIQUE NONCLUSTERED 
(
	[id_business] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_Country]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [UK_Country] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_Language_Code]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[Language] ADD  CONSTRAINT [UK_Language_Code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UK_PaymentTransfer_PaymentPart]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[PaymentTransfer_PaymentPart] ADD  CONSTRAINT [UK_PaymentTransfer_PaymentPart] UNIQUE NONCLUSTERED 
(
	[id_payment_part] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_Province_Name]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[Province] ADD  CONSTRAINT [UK_Province_Name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_Reference_Project]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[ReferenceInUse] ADD  CONSTRAINT [UK_Reference_Project] UNIQUE NONCLUSTERED 
(
	[reference_number] ASC,
	[id_business] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_ReferenceType_Name]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[ReferenceType] ADD  CONSTRAINT [UK_ReferenceType_Name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_ReferenceType_Shortening]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[ReferenceType] ADD  CONSTRAINT [UK_ReferenceType_Shortening] UNIQUE NONCLUSTERED 
(
	[shortening] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_ReferenceTypeCategory]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[ReferenceTypeCategory] ADD  CONSTRAINT [UK_ReferenceTypeCategory] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Subscriber]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[Subscriber] ADD  CONSTRAINT [IX_Subscriber] UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_Subscriber_Name]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[Subscriber] ADD  CONSTRAINT [UK_Subscriber_Name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UK_Company_Partner]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[Subscriber_Partners] ADD  CONSTRAINT [UK_Company_Partner] UNIQUE NONCLUSTERED 
(
	[id_company] ASC,
	[id_partner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UK_Subscriber_SubscriberCategories]    Script Date: 26/04/2024 18:49:29 ******/
ALTER TABLE [dbo].[Subscriber_SubscriberCategories] ADD  CONSTRAINT [UK_Subscriber_SubscriberCategories] UNIQUE NONCLUSTERED 
(
	[id_subscriber] ASC,
	[id_subscriber_category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[_ApplicationAPIService]  WITH CHECK ADD  CONSTRAINT [FK__ApplicationAPIService__ApplicationModule] FOREIGN KEY([id_application_module])
REFERENCES [dbo].[_ApplicationModule] ([id])
GO
ALTER TABLE [dbo].[_ApplicationAPIService] CHECK CONSTRAINT [FK__ApplicationAPIService__ApplicationModule]
GO
ALTER TABLE [dbo].[_ApplicationAPIService]  WITH CHECK ADD  CONSTRAINT [FK__ApplicationAPIService_Privilege] FOREIGN KEY([id_privilege])
REFERENCES [dbo].[Privilege] ([id])
GO
ALTER TABLE [dbo].[_ApplicationAPIService] CHECK CONSTRAINT [FK__ApplicationAPIService_Privilege]
GO
ALTER TABLE [dbo].[_ApplicationMenu]  WITH CHECK ADD  CONSTRAINT [FK__ApplicationMenu__ApplicationModule] FOREIGN KEY([id_application_module])
REFERENCES [dbo].[_ApplicationModule] ([id])
GO
ALTER TABLE [dbo].[_ApplicationMenu] CHECK CONSTRAINT [FK__ApplicationMenu__ApplicationModule]
GO
ALTER TABLE [dbo].[_ApplicationMenuItem]  WITH CHECK ADD  CONSTRAINT [FK__ApplicationMenuItem__ApplicationMenu] FOREIGN KEY([id_application_menu])
REFERENCES [dbo].[_ApplicationMenu] ([id])
GO
ALTER TABLE [dbo].[_ApplicationMenuItem] CHECK CONSTRAINT [FK__ApplicationMenuItem__ApplicationMenu]
GO
ALTER TABLE [dbo].[_ApplicationMenuItem]  WITH CHECK ADD  CONSTRAINT [FK__ApplicationMenuItem__ApplicationMenuItem1] FOREIGN KEY([id_parent_application_menu_item])
REFERENCES [dbo].[_ApplicationMenuItem] ([id])
GO
ALTER TABLE [dbo].[_ApplicationMenuItem] CHECK CONSTRAINT [FK__ApplicationMenuItem__ApplicationMenuItem1]
GO
ALTER TABLE [dbo].[_ApplicationMenuItem]  WITH CHECK ADD  CONSTRAINT [FK__ApplicationMenuItem_Privilege] FOREIGN KEY([id_privilege])
REFERENCES [dbo].[Privilege] ([id])
GO
ALTER TABLE [dbo].[_ApplicationMenuItem] CHECK CONSTRAINT [FK__ApplicationMenuItem_Privilege]
GO
ALTER TABLE [dbo].[_MFT_FMOVDetailLog]  WITH CHECK ADD  CONSTRAINT [FK_MFFile_FMOV_Detail_MFTFile_FMOV] FOREIGN KEY([id_mftfile_fmov])
REFERENCES [dbo].[_MFT_FMOVLog] ([id])
GO
ALTER TABLE [dbo].[_MFT_FMOVDetailLog] CHECK CONSTRAINT [FK_MFFile_FMOV_Detail_MFTFile_FMOV]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_AccountType] FOREIGN KEY([id_account_type])
REFERENCES [dbo].[AccountType] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_AccountType]
GO
ALTER TABLE [dbo].[Account_Roles]  WITH CHECK ADD  CONSTRAINT [FK_Account_Roles_Account] FOREIGN KEY([id_account])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Account_Roles] CHECK CONSTRAINT [FK_Account_Roles_Account]
GO
ALTER TABLE [dbo].[Account_Roles]  WITH CHECK ADD  CONSTRAINT [FK_Account_Roles_Business] FOREIGN KEY([id_business])
REFERENCES [dbo].[Business] ([id])
GO
ALTER TABLE [dbo].[Account_Roles] CHECK CONSTRAINT [FK_Account_Roles_Business]
GO
ALTER TABLE [dbo].[Account_Roles]  WITH CHECK ADD  CONSTRAINT [FK_Account_Roles_Role] FOREIGN KEY([id_role])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Account_Roles] CHECK CONSTRAINT [FK_Account_Roles_Role]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_County] FOREIGN KEY([id_county])
REFERENCES [dbo].[County] ([id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_County]
GO
ALTER TABLE [dbo].[BankaryDetails]  WITH CHECK ADD  CONSTRAINT [FK_BankDetails_Bank] FOREIGN KEY([id_bank])
REFERENCES [dbo].[Bank] ([id])
GO
ALTER TABLE [dbo].[BankaryDetails] CHECK CONSTRAINT [FK_BankDetails_Bank]
GO
ALTER TABLE [dbo].[Business]  WITH CHECK ADD  CONSTRAINT [FK_Application_Account] FOREIGN KEY([id_account])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Business] CHECK CONSTRAINT [FK_Application_Account]
GO
ALTER TABLE [dbo].[Business]  WITH CHECK ADD  CONSTRAINT [FK_Application_Entity] FOREIGN KEY([id_subscriber])
REFERENCES [dbo].[Subscriber] ([id])
GO
ALTER TABLE [dbo].[Business] CHECK CONSTRAINT [FK_Application_Entity]
GO
ALTER TABLE [dbo].[Business]  WITH CHECK ADD  CONSTRAINT [FK_Business_BusinessCategory] FOREIGN KEY([id_business_category])
REFERENCES [dbo].[BusinessCategory] ([id])
GO
ALTER TABLE [dbo].[Business] CHECK CONSTRAINT [FK_Business_BusinessCategory]
GO
ALTER TABLE [dbo].[Business]  WITH CHECK ADD  CONSTRAINT [FK_Business_PaymentEntity] FOREIGN KEY([id_payment_entity])
REFERENCES [dbo].[PaymentEntity] ([id])
GO
ALTER TABLE [dbo].[Business] CHECK CONSTRAINT [FK_Business_PaymentEntity]
GO
ALTER TABLE [dbo].[Business_BusinessCategories]  WITH CHECK ADD  CONSTRAINT [FK_BuinessCategories_Business] FOREIGN KEY([id_business])
REFERENCES [dbo].[Business] ([id])
GO
ALTER TABLE [dbo].[Business_BusinessCategories] CHECK CONSTRAINT [FK_BuinessCategories_Business]
GO
ALTER TABLE [dbo].[Business_BusinessCategories]  WITH CHECK ADD  CONSTRAINT [FK_BuinessCategories_BusinessCategory] FOREIGN KEY([id_business_category])
REFERENCES [dbo].[BusinessCategory] ([id])
GO
ALTER TABLE [dbo].[Business_BusinessCategories] CHECK CONSTRAINT [FK_BuinessCategories_BusinessCategory]
GO
ALTER TABLE [dbo].[Business_Partner]  WITH CHECK ADD  CONSTRAINT [FK_Project_Partner_BankDetails] FOREIGN KEY([id_bank_details])
REFERENCES [dbo].[BankaryDetails] ([id])
GO
ALTER TABLE [dbo].[Business_Partner] CHECK CONSTRAINT [FK_Project_Partner_BankDetails]
GO
ALTER TABLE [dbo].[Business_Partner]  WITH CHECK ADD  CONSTRAINT [FK_Project_Partner_Partner] FOREIGN KEY([id_partner])
REFERENCES [dbo].[Partner] ([id])
GO
ALTER TABLE [dbo].[Business_Partner] CHECK CONSTRAINT [FK_Project_Partner_Partner]
GO
ALTER TABLE [dbo].[Business_Partner]  WITH CHECK ADD  CONSTRAINT [FK_Project_Partner_Project] FOREIGN KEY([id_project])
REFERENCES [dbo].[Business] ([id])
GO
ALTER TABLE [dbo].[Business_Partner] CHECK CONSTRAINT [FK_Project_Partner_Project]
GO
ALTER TABLE [dbo].[BusinessPaymentNotificationConfig]  WITH CHECK ADD  CONSTRAINT [FK_BusinessPaymentNotificationConfig_Business] FOREIGN KEY([id_business])
REFERENCES [dbo].[Business] ([id])
GO
ALTER TABLE [dbo].[BusinessPaymentNotificationConfig] CHECK CONSTRAINT [FK_BusinessPaymentNotificationConfig_Business]
GO
ALTER TABLE [dbo].[County]  WITH CHECK ADD  CONSTRAINT [FK_County_Province] FOREIGN KEY([id_province])
REFERENCES [dbo].[Province] ([id])
GO
ALTER TABLE [dbo].[County] CHECK CONSTRAINT [FK_County_Province]
GO
ALTER TABLE [dbo].[Fee]  WITH CHECK ADD  CONSTRAINT [FK_ReferenceSaleOff_Fee_ReferenceSaleOff] FOREIGN KEY([id_saleoff])
REFERENCES [dbo].[SaleOff] ([id])
GO
ALTER TABLE [dbo].[Fee] CHECK CONSTRAINT [FK_ReferenceSaleOff_Fee_ReferenceSaleOff]
GO
ALTER TABLE [dbo].[Fee]  WITH CHECK ADD  CONSTRAINT [FK_ReferenceSaleOffFee_ReferenceInUse] FOREIGN KEY([id_reference])
REFERENCES [dbo].[ReferenceInUse] ([id])
GO
ALTER TABLE [dbo].[Fee] CHECK CONSTRAINT [FK_ReferenceSaleOffFee_ReferenceInUse]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Application] FOREIGN KEY([id_business])
REFERENCES [dbo].[Business] ([id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Application]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Partner] FOREIGN KEY([id_partner])
REFERENCES [dbo].[Partner] ([id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Partner]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_ReferenceInHistory] FOREIGN KEY([id_reference_in_history])
REFERENCES [dbo].[ReferenceInHistory] ([id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_ReferenceInHistory]
GO
ALTER TABLE [dbo].[PaymentEntity]  WITH CHECK ADD  CONSTRAINT [FK_PaymentEntity_BankaryDetails] FOREIGN KEY([id_bankary_details])
REFERENCES [dbo].[BankaryDetails] ([id])
GO
ALTER TABLE [dbo].[PaymentEntity] CHECK CONSTRAINT [FK_PaymentEntity_BankaryDetails]
GO
ALTER TABLE [dbo].[PaymentEntity]  WITH CHECK ADD  CONSTRAINT [FK_PaymentEntity_PaymentEntityType] FOREIGN KEY([id_payment_entity_type])
REFERENCES [dbo].[PaymentEntityType] ([id])
GO
ALTER TABLE [dbo].[PaymentEntity] CHECK CONSTRAINT [FK_PaymentEntity_PaymentEntityType]
GO
ALTER TABLE [dbo].[PaymentPart]  WITH CHECK ADD  CONSTRAINT [FK_PaymentAmountPart_Payment] FOREIGN KEY([id_payment])
REFERENCES [dbo].[Payment] ([id])
GO
ALTER TABLE [dbo].[PaymentPart] CHECK CONSTRAINT [FK_PaymentAmountPart_Payment]
GO
ALTER TABLE [dbo].[PaymentPart]  WITH CHECK ADD  CONSTRAINT [FK_PaymentPart_ReferenceAmountPart] FOREIGN KEY([id_reference_amount_part])
REFERENCES [dbo].[ReferenceAmountPart] ([id])
GO
ALTER TABLE [dbo].[PaymentPart] CHECK CONSTRAINT [FK_PaymentPart_ReferenceAmountPart]
GO
ALTER TABLE [dbo].[PaymentRedirection_History]  WITH CHECK ADD  CONSTRAINT [FK_PaymentRedirection_History_Partner] FOREIGN KEY([id_partner])
REFERENCES [dbo].[Partner] ([id])
GO
ALTER TABLE [dbo].[PaymentRedirection_History] CHECK CONSTRAINT [FK_PaymentRedirection_History_Partner]
GO
ALTER TABLE [dbo].[PaymentRedirection_History]  WITH CHECK ADD  CONSTRAINT [FK_PaymentRedirection_History_Project] FOREIGN KEY([id_project])
REFERENCES [dbo].[Business] ([id])
GO
ALTER TABLE [dbo].[PaymentRedirection_History] CHECK CONSTRAINT [FK_PaymentRedirection_History_Project]
GO
ALTER TABLE [dbo].[PaymentsRedirection]  WITH CHECK ADD  CONSTRAINT [FK_PaymentsRedirection_Partner] FOREIGN KEY([id_partner])
REFERENCES [dbo].[Partner] ([id])
GO
ALTER TABLE [dbo].[PaymentsRedirection] CHECK CONSTRAINT [FK_PaymentsRedirection_Partner]
GO
ALTER TABLE [dbo].[PaymentsRedirection]  WITH CHECK ADD  CONSTRAINT [FK_PaymentsRedirection_Project] FOREIGN KEY([id_business])
REFERENCES [dbo].[Business] ([id])
GO
ALTER TABLE [dbo].[PaymentsRedirection] CHECK CONSTRAINT [FK_PaymentsRedirection_Project]
GO
ALTER TABLE [dbo].[PaymentTransfer]  WITH CHECK ADD  CONSTRAINT [FK_PaymentTransferHistory_PaymentTransfer] FOREIGN KEY([id_payment_transfer_config])
REFERENCES [dbo].[PaymentTransferConfig] ([id])
GO
ALTER TABLE [dbo].[PaymentTransfer] CHECK CONSTRAINT [FK_PaymentTransferHistory_PaymentTransfer]
GO
ALTER TABLE [dbo].[PaymentTransfer_PaymentPart]  WITH CHECK ADD  CONSTRAINT [FK_PaymentTransfer_PaymentPart_PaymentPart] FOREIGN KEY([id_payment_part])
REFERENCES [dbo].[PaymentPart] ([id])
GO
ALTER TABLE [dbo].[PaymentTransfer_PaymentPart] CHECK CONSTRAINT [FK_PaymentTransfer_PaymentPart_PaymentPart]
GO
ALTER TABLE [dbo].[PaymentTransfer_PaymentPart]  WITH CHECK ADD  CONSTRAINT [FK_PaymentTransferHistory_Payment_PaymentTransferHistory] FOREIGN KEY([id_payment_transfer])
REFERENCES [dbo].[PaymentTransfer] ([id])
GO
ALTER TABLE [dbo].[PaymentTransfer_PaymentPart] CHECK CONSTRAINT [FK_PaymentTransferHistory_Payment_PaymentTransferHistory]
GO
ALTER TABLE [dbo].[PaymentTransferConfig]  WITH CHECK ADD  CONSTRAINT [FK_PaymentTransfer_Business] FOREIGN KEY([id_source_business])
REFERENCES [dbo].[Business] ([id])
GO
ALTER TABLE [dbo].[PaymentTransferConfig] CHECK CONSTRAINT [FK_PaymentTransfer_Business]
GO
ALTER TABLE [dbo].[PaymentTransferConfig]  WITH CHECK ADD  CONSTRAINT [FK_PaymentTransfer_Business1] FOREIGN KEY([id_destination_business])
REFERENCES [dbo].[Business] ([id])
GO
ALTER TABLE [dbo].[PaymentTransferConfig] CHECK CONSTRAINT [FK_PaymentTransfer_Business1]
GO
ALTER TABLE [dbo].[Province]  WITH CHECK ADD  CONSTRAINT [FK_Province_Country] FOREIGN KEY([id_country])
REFERENCES [dbo].[Country] ([id])
GO
ALTER TABLE [dbo].[Province] CHECK CONSTRAINT [FK_Province_Country]
GO
ALTER TABLE [dbo].[ReferenceAmountPart]  WITH CHECK ADD  CONSTRAINT [FK_ReferenceAmountPart_ReferenceInHistory] FOREIGN KEY([id_reference_in_history])
REFERENCES [dbo].[ReferenceInHistory] ([id])
GO
ALTER TABLE [dbo].[ReferenceAmountPart] CHECK CONSTRAINT [FK_ReferenceAmountPart_ReferenceInHistory]
GO
ALTER TABLE [dbo].[ReferenceInHistory]  WITH CHECK ADD  CONSTRAINT [FK_ReferenceHistory_Business] FOREIGN KEY([id_business])
REFERENCES [dbo].[Business] ([id])
GO
ALTER TABLE [dbo].[ReferenceInHistory] CHECK CONSTRAINT [FK_ReferenceHistory_Business]
GO
ALTER TABLE [dbo].[ReferenceInHistory]  WITH CHECK ADD  CONSTRAINT [FK_ReferenceHistory_Partner] FOREIGN KEY([id_partner])
REFERENCES [dbo].[Partner] ([id])
GO
ALTER TABLE [dbo].[ReferenceInHistory] CHECK CONSTRAINT [FK_ReferenceHistory_Partner]
GO
ALTER TABLE [dbo].[ReferenceInHistory]  WITH CHECK ADD  CONSTRAINT [FK_ReferenceHistory_ReferenceType] FOREIGN KEY([id_reference_type])
REFERENCES [dbo].[ReferenceType] ([id])
GO
ALTER TABLE [dbo].[ReferenceInHistory] CHECK CONSTRAINT [FK_ReferenceHistory_ReferenceType]
GO
ALTER TABLE [dbo].[ReferenceInUse]  WITH CHECK ADD  CONSTRAINT [FK_ReferenceInUse_Application] FOREIGN KEY([id_business])
REFERENCES [dbo].[Business] ([id])
GO
ALTER TABLE [dbo].[ReferenceInUse] CHECK CONSTRAINT [FK_ReferenceInUse_Application]
GO
ALTER TABLE [dbo].[ReferenceInUse]  WITH CHECK ADD  CONSTRAINT [FK_ReferenceInUse_Partner] FOREIGN KEY([id_partner])
REFERENCES [dbo].[Partner] ([id])
GO
ALTER TABLE [dbo].[ReferenceInUse] CHECK CONSTRAINT [FK_ReferenceInUse_Partner]
GO
ALTER TABLE [dbo].[ReferenceInUse]  WITH CHECK ADD  CONSTRAINT [FK_ReferenceInUse_ReferenceType] FOREIGN KEY([id_reference_type])
REFERENCES [dbo].[ReferenceType] ([id])
GO
ALTER TABLE [dbo].[ReferenceInUse] CHECK CONSTRAINT [FK_ReferenceInUse_ReferenceType]
GO
ALTER TABLE [dbo].[ReferenceType]  WITH CHECK ADD  CONSTRAINT [FK_ReferenceType_ReferenceTypeCategory] FOREIGN KEY([id_reference_type_category])
REFERENCES [dbo].[ReferenceTypeCategory] ([id])
GO
ALTER TABLE [dbo].[ReferenceType] CHECK CONSTRAINT [FK_ReferenceType_ReferenceTypeCategory]
GO
ALTER TABLE [dbo].[Role_Privileges]  WITH CHECK ADD  CONSTRAINT [FK_Role_Privileges_Privilege] FOREIGN KEY([id_privilege])
REFERENCES [dbo].[Privilege] ([id])
GO
ALTER TABLE [dbo].[Role_Privileges] CHECK CONSTRAINT [FK_Role_Privileges_Privilege]
GO
ALTER TABLE [dbo].[Role_Privileges]  WITH CHECK ADD  CONSTRAINT [FK_Role_Privileges_Role] FOREIGN KEY([id_role])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Role_Privileges] CHECK CONSTRAINT [FK_Role_Privileges_Role]
GO
ALTER TABLE [dbo].[SaleOff]  WITH CHECK ADD  CONSTRAINT [FK_ReferenceSaleOff_ReferenceInUse] FOREIGN KEY([id_reference])
REFERENCES [dbo].[ReferenceInUse] ([id])
GO
ALTER TABLE [dbo].[SaleOff] CHECK CONSTRAINT [FK_ReferenceSaleOff_ReferenceInUse]
GO
ALTER TABLE [dbo].[Subscriber]  WITH CHECK ADD  CONSTRAINT [FK_Company_Address] FOREIGN KEY([id_address])
REFERENCES [dbo].[Address] ([id])
GO
ALTER TABLE [dbo].[Subscriber] CHECK CONSTRAINT [FK_Company_Address]
GO
ALTER TABLE [dbo].[Subscriber]  WITH CHECK ADD  CONSTRAINT [FK_Entity_Account] FOREIGN KEY([id_account])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Subscriber] CHECK CONSTRAINT [FK_Entity_Account]
GO
ALTER TABLE [dbo].[Subscriber]  WITH CHECK ADD  CONSTRAINT [FK_Entity_BankDetails] FOREIGN KEY([id_bank_details])
REFERENCES [dbo].[BankaryDetails] ([id])
GO
ALTER TABLE [dbo].[Subscriber] CHECK CONSTRAINT [FK_Entity_BankDetails]
GO
ALTER TABLE [dbo].[Subscriber]  WITH CHECK ADD  CONSTRAINT [FK_Entity_EntityCategory] FOREIGN KEY([id_subscriber_category])
REFERENCES [dbo].[SubscriberCategory] ([id])
GO
ALTER TABLE [dbo].[Subscriber] CHECK CONSTRAINT [FK_Entity_EntityCategory]
GO
ALTER TABLE [dbo].[Subscriber]  WITH CHECK ADD  CONSTRAINT [FK_Entity_EntityType] FOREIGN KEY([id_subscriber_type])
REFERENCES [dbo].[SubscriberType] ([id])
GO
ALTER TABLE [dbo].[Subscriber] CHECK CONSTRAINT [FK_Entity_EntityType]
GO
ALTER TABLE [dbo].[Subscriber_Partners]  WITH CHECK ADD  CONSTRAINT [FK_Company_Partner_Company] FOREIGN KEY([id_company])
REFERENCES [dbo].[Subscriber] ([id])
GO
ALTER TABLE [dbo].[Subscriber_Partners] CHECK CONSTRAINT [FK_Company_Partner_Company]
GO
ALTER TABLE [dbo].[Subscriber_Partners]  WITH CHECK ADD  CONSTRAINT [FK_Company_Partner_Partner] FOREIGN KEY([id_partner])
REFERENCES [dbo].[Partner] ([id])
GO
ALTER TABLE [dbo].[Subscriber_Partners] CHECK CONSTRAINT [FK_Company_Partner_Partner]
GO
ALTER TABLE [dbo].[Subscriber_SubscriberCategories]  WITH CHECK ADD  CONSTRAINT [FK_Subscriber_SubscriberCategories_Subscriber] FOREIGN KEY([id_subscriber])
REFERENCES [dbo].[Subscriber] ([id])
GO
ALTER TABLE [dbo].[Subscriber_SubscriberCategories] CHECK CONSTRAINT [FK_Subscriber_SubscriberCategories_Subscriber]
GO
ALTER TABLE [dbo].[Subscriber_SubscriberCategories]  WITH CHECK ADD  CONSTRAINT [FK_Subscriber_SubscriberCategories_SubscriberCategory] FOREIGN KEY([id_subscriber_category])
REFERENCES [dbo].[SubscriberCategory] ([id])
GO
ALTER TABLE [dbo].[Subscriber_SubscriberCategories] CHECK CONSTRAINT [FK_Subscriber_SubscriberCategories_SubscriberCategory]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Starts or stops the processing of request/messages' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_PRT_Motor_Configs', @level2type=N'COLUMN',@level2name=N'is_started'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Max concurrent request/messages processing' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_PRT_Motor_Configs', @level2type=N'COLUMN',@level2name=N'max_threads'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of the PRT Session to be connected to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_PRT_Motor_Configs', @level2type=N'COLUMN',@level2name=N'session_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the host where the bridge is deployed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_PRT_Motor_Configs', @level2type=N'COLUMN',@level2name=N'bridge_hostname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Port used by the socket of the bridge' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_PRT_Motor_Configs', @level2type=N'COLUMN',@level2name=N'bridge_socket_port_number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Pattern string for opening the PRT Session' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_PRT_Motor_Configs', @level2type=N'COLUMN',@level2name=N'session_opening_pattern'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_information_type_name', @value=N'Financial' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_PRT_PaymentNotificationInUse', @level2type=N'COLUMN',@level2name=N'payment_entity_number'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_sensitivity_label_name', @value=N'Confidential' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_PRT_PaymentNotificationInUse', @level2type=N'COLUMN',@level2name=N'payment_entity_number'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_information_type_name', @value=N'Credentials' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_sensitivity_label_name', @value=N'Confidential' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_information_type_name', @value=N'Credentials' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_sensitivity_label_name', @value=N'Confidential' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_information_type_name', @value=N'National ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'number'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_sensitivity_label_name', @value=N'Confidential - GDPR' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'number'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_information_type_name', @value=N'Financial' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account_Roles', @level2type=N'COLUMN',@level2name=N'id_account'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_sensitivity_label_name', @value=N'Confidential' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account_Roles', @level2type=N'COLUMN',@level2name=N'id_account'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_information_type_name', @value=N'Contact Info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Address', @level2type=N'COLUMN',@level2name=N'street'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_sensitivity_label_name', @value=N'Confidential' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Address', @level2type=N'COLUMN',@level2name=N'street'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_information_type_name', @value=N'Financial' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BankaryDetails', @level2type=N'COLUMN',@level2name=N'account_number'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_sensitivity_label_name', @value=N'Confidential' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BankaryDetails', @level2type=N'COLUMN',@level2name=N'account_number'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_information_type_name', @value=N'Financial' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BankaryDetails', @level2type=N'COLUMN',@level2name=N'account_iban'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_sensitivity_label_name', @value=N'Confidential' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BankaryDetails', @level2type=N'COLUMN',@level2name=N'account_iban'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_information_type_name', @value=N'National ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Business', @level2type=N'COLUMN',@level2name=N'internal_number'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_sensitivity_label_name', @value=N'Confidential - GDPR' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Business', @level2type=N'COLUMN',@level2name=N'internal_number'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_information_type_name', @value=N'Financial' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Business', @level2type=N'COLUMN',@level2name=N'id_account'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_sensitivity_label_name', @value=N'Confidential' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Business', @level2type=N'COLUMN',@level2name=N'id_account'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_information_type_name', @value=N'Financial' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PaymentRedirection_History', @level2type=N'COLUMN',@level2name=N'amount_after_taxes'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_sensitivity_label_name', @value=N'Confidential' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PaymentRedirection_History', @level2type=N'COLUMN',@level2name=N'amount_after_taxes'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_information_type_name', @value=N'Credit Card' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReferenceInUse', @level2type=N'COLUMN',@level2name=N'expiration_date'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_sensitivity_label_name', @value=N'Confidential' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReferenceInUse', @level2type=N'COLUMN',@level2name=N'expiration_date'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_information_type_name', @value=N'National ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subscriber', @level2type=N'COLUMN',@level2name=N'internal_number'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_sensitivity_label_name', @value=N'Confidential - GDPR' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subscriber', @level2type=N'COLUMN',@level2name=N'internal_number'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_information_type_name', @value=N'Contact Info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subscriber', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_sensitivity_label_name', @value=N'Confidential' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subscriber', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_information_type_name', @value=N'Contact Info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subscriber', @level2type=N'COLUMN',@level2name=N'phone_number'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_sensitivity_label_name', @value=N'Confidential' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subscriber', @level2type=N'COLUMN',@level2name=N'phone_number'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_information_type_name', @value=N'Financial' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subscriber', @level2type=N'COLUMN',@level2name=N'id_account'
GO
EXEC sys.sp_addextendedproperty @name=N'sys_sensitivity_label_name', @value=N'Confidential' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subscriber', @level2type=N'COLUMN',@level2name=N'id_account'
GO
