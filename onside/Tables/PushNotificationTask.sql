CREATE TABLE [PushNotificationTask] (
    [Id]                      BIGINT         IDENTITY (1, 1) NOT NULL,
    [FarmId]                  BIGINT         NOT NULL,
    [FarmEventId]             BIGINT         NULL,
    [NotificationType]        INT            NOT NULL,
    [TaskState]               INT            NOT NULL,
    [Text]                    NVARCHAR (300) NOT NULL,
    [StartProcessingUtc]      DATETIME2 (7)  NULL,
    [EndProcessingUtc]        DATETIME2 (7)  NULL,
    [NumProcessingAttempts]   INT            NOT NULL,
    [CreatedUtc]              DATETIME2 (7)  NOT NULL,
    [LastModifiedUtc]         DATETIME2 (7)  NOT NULL,
    [RowVersion]              ROWVERSION     NOT NULL,
    [IncidentId]              BIGINT         NULL,
    [RiskId]                  BIGINT         NULL,
    [DelayProcessingUntilUtc] DATETIME2 (7)  DEFAULT ('1900-01-01T00:00:00.000') NOT NULL,
    CONSTRAINT [PK_onside.PushNotificationTask] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.PushNotificationTask_onside.Farm_FarmId] FOREIGN KEY ([FarmId]) REFERENCES [Farm] ([Id]),
    CONSTRAINT [FK_onside.PushNotificationTask_onside.FarmEvent_FarmEventId] FOREIGN KEY ([FarmEventId]) REFERENCES [FarmEvent] ([Id]),
    CONSTRAINT [FK_onside.PushNotificationTask_onside.Incident_IncidentId] FOREIGN KEY ([IncidentId]) REFERENCES [Incident] ([Id]),
    CONSTRAINT [FK_onside.PushNotificationTask_onside.Risk_RiskId] FOREIGN KEY ([RiskId]) REFERENCES [Risk] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_FarmId]
    ON [PushNotificationTask]([FarmId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_FarmEventId]
    ON [PushNotificationTask]([FarmEventId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_IncidentId]
    ON [PushNotificationTask]([IncidentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RiskId]
    ON [PushNotificationTask]([RiskId] ASC);

