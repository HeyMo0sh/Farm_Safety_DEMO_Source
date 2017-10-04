CREATE TABLE [AlertEvent] (
    [Id]                   BIGINT         NOT NULL,
    [Reason]               INT            NOT NULL,
    [Text]                 NVARCHAR (MAX) NULL,
    [ExitFarmId]           BIGINT         NULL,
    [SignInId]             BIGINT         NULL,
    [NextSignInAnyFarmUtc] DATETIME2 (7)  NULL,
    [NextAlertAnyFarmUtc]  DATETIME2 (7)  NULL,
    CONSTRAINT [PK_onside.AlertEvent] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.AlertEvent_onside.ExitFarmEvent_ExitFarmId] FOREIGN KEY ([ExitFarmId]) REFERENCES [ExitFarmEvent] ([Id]),
    CONSTRAINT [FK_onside.AlertEvent_onside.FarmEvent_Id] FOREIGN KEY ([Id]) REFERENCES [FarmEvent] ([Id]),
    CONSTRAINT [FK_onside.AlertEvent_onside.SignInEvent_SignInId] FOREIGN KEY ([SignInId]) REFERENCES [SignInEvent] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [AlertEvent]([Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ExitFarmId]
    ON [AlertEvent]([ExitFarmId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_SignInId]
    ON [AlertEvent]([SignInId] ASC);

