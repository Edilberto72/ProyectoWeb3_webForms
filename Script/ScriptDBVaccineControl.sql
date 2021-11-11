USE master
GO
CREATE DATABASE [DBVaccineControl]
GO
USE [DBVaccineControl]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/11/2021 17:31:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](60) NOT NULL,
	[lastName] [varchar](40) NOT NULL,
	[secondLastName] [varchar](40) NOT NULL,
	[userType] [tinyint] NOT NULL,
	[email] [varchar](60) NOT NULL,
	[password] [varchar](50) NULL,
	[vaccinated] [tinyint] NOT NULL,
	[state] [tinyint] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VaccinationAppointment]    Script Date: 10/11/2021 17:31:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaccinationAppointment](
	[VaccinationRecordID] [int] IDENTITY(1,1) NOT NULL,
	[expiration] [tinyint] NOT NULL,
	[vaccinationDay] [date] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_VaccinationAppointment] PRIMARY KEY CLUSTERED 
(
	[VaccinationRecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VaccinationRecord]    Script Date: 10/11/2021 17:31:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaccinationRecord](
	[VaccinationRecordID] [int] IDENTITY(1,1) NOT NULL,
	[vaccineQuantity] [int] NOT NULL,
	[doseTime] [time](0) NOT NULL,
	[nursesQuantity] [tinyint] NOT NULL,
	[startDate] [date] NOT NULL,
	[startAttention] [time](0) NOT NULL,
	[endAttention] [time](0) NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_VaccionationRecord] PRIMARY KEY CLUSTERED 
(
	[VaccinationRecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VaccinationSchedule]    Script Date: 10/11/2021 17:31:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaccinationSchedule](
	[VaccinationScheduleID] [int] IDENTITY(1,1) NOT NULL,
	[appointment] [time](0) NOT NULL,
	[vaccinesAvailable] [tinyint] NOT NULL,
	[VaccinationRecordID] [int] NOT NULL,
 CONSTRAINT [PK_VaccinationSchedule] PRIMARY KEY CLUSTERED 
(
	[VaccinationScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_vaccinated]  DEFAULT ((0)) FOR [vaccinated]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_state]  DEFAULT ((1)) FOR [state]
GO
ALTER TABLE [dbo].[VaccinationAppointment] ADD  CONSTRAINT [DF_VaccinationAppointment_expiration]  DEFAULT ((1)) FOR [expiration]
GO
ALTER TABLE [dbo].[VaccinationAppointment]  WITH CHECK ADD  CONSTRAINT [FK_VaccinationAppointment_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VaccinationAppointment] CHECK CONSTRAINT [FK_VaccinationAppointment_User]
GO
ALTER TABLE [dbo].[VaccinationRecord]  WITH CHECK ADD  CONSTRAINT [FK_VaccionationRecord_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VaccinationRecord] CHECK CONSTRAINT [FK_VaccionationRecord_User]
GO
ALTER TABLE [dbo].[VaccinationSchedule]  WITH CHECK ADD  CONSTRAINT [FK_VaccinationSchedule_VaccionationRecord] FOREIGN KEY([VaccinationRecordID])
REFERENCES [dbo].[VaccinationRecord] ([VaccinationRecordID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VaccinationSchedule] CHECK CONSTRAINT [FK_VaccinationSchedule_VaccionationRecord]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 = Usuario comun
1 = Enfermera
2 = Administrador' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'userType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 =  No se vacuno
1 = Vacunado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'vaccinated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 = Eliminado
1= Activo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 = no expiro
0 = expiro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VaccinationAppointment', @level2type=N'COLUMN',@level2name=N'expiration'
GO
