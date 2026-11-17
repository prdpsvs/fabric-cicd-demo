CREATE TABLE [dbo].[ApplicationUserPatients] (
    [ApplicationUser_Id] VARCHAR (256) NOT NULL,
    [Patient_PatientID]  BIGINT        NOT NULL
);


GO

ALTER TABLE [dbo].[ApplicationUserPatients]
    ADD CONSTRAINT [FK_dbo.ApplicationUserPatients_dbo.AspNetUsers_ApplicationUser_Id] FOREIGN KEY ([ApplicationUser_Id]) REFERENCES [dbo].[AspNetUsers] ([Id]) NOT ENFORCED;


GO

ALTER TABLE [dbo].[ApplicationUserPatients]
    ADD CONSTRAINT [FK_dbo.ApplicationUserPatients_dbo.Patients_Patient_PatientID] FOREIGN KEY ([Patient_PatientID]) REFERENCES [dbo].[Patients] ([PatientID]) NOT ENFORCED;


GO

ALTER TABLE [dbo].[ApplicationUserPatients]
    ADD CONSTRAINT [PK_dbo.ApplicationUserPatients] PRIMARY KEY NONCLUSTERED ([ApplicationUser_Id] ASC, [Patient_PatientID] ASC) NOT ENFORCED;


GO