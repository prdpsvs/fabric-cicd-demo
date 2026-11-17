CREATE TABLE [dbo].[Visits] (
    [VisitID]      BIGINT         IDENTITY NOT NULL,
    [PatientID]    BIGINT         NOT NULL,
    [Date]         DATE           NOT NULL,
    [Reason]       VARCHAR (8000) NOT NULL,
    [Treatment]    VARCHAR (8000) NOT NULL,
    [FollowUpDate] DATE           NULL
);


GO

ALTER TABLE [dbo].[Visits]
    ADD CONSTRAINT [FK_dbo.Visits_dbo.Patients_PatientID] FOREIGN KEY ([PatientID]) REFERENCES [dbo].[Patients] ([PatientID]) NOT ENFORCED;


GO

ALTER TABLE [dbo].[Visits]
    ADD CONSTRAINT [PK_dbo.Visits] PRIMARY KEY NONCLUSTERED ([VisitID] ASC) NOT ENFORCED;


GO