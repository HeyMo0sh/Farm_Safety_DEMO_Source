CREATE TABLE [RiskReportImage] (
    [Id]                BIGINT NOT NULL,
    [RiskReportEventId] BIGINT NULL,
    CONSTRAINT [PK_onside.RiskReportImage] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.RiskReportImage_onside.ImageEntity_Id] FOREIGN KEY ([Id]) REFERENCES [ImageEntity] ([Id]),
    CONSTRAINT [FK_onside.RiskReportImage_onside.RiskReportEvent_RiskReportEventId] FOREIGN KEY ([RiskReportEventId]) REFERENCES [RiskReportEvent] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [RiskReportImage]([Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RiskReportEventId]
    ON [RiskReportImage]([RiskReportEventId] ASC);

