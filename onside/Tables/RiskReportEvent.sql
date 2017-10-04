CREATE TABLE [RiskReportEvent] (
    [Id]          BIGINT         NOT NULL,
    [Description] NVARCHAR (256) NOT NULL,
    [RiskId]      BIGINT         NULL,
    [Title]       NVARCHAR (75)  NOT NULL,
    [Type]        NVARCHAR (50)  NOT NULL,
    [SignInId]    BIGINT         NULL,
    [DeletedUtc]  DATETIME2 (7)  NULL,
    CONSTRAINT [PK_onside.RiskReportEvent] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.RiskReportEvent_onside.FarmEvent_Id] FOREIGN KEY ([Id]) REFERENCES [FarmEvent] ([Id]),
    CONSTRAINT [FK_onside.RiskReportEvent_onside.Risk_RiskId] FOREIGN KEY ([RiskId]) REFERENCES [Risk] ([Id]),
    CONSTRAINT [FK_onside.RiskReportEvent_onside.SignInEvent_SignInId] FOREIGN KEY ([SignInId]) REFERENCES [SignInEvent] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [RiskReportEvent]([Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RiskId]
    ON [RiskReportEvent]([RiskId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_SignInId]
    ON [RiskReportEvent]([SignInId] ASC);

