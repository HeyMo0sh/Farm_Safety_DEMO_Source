CREATE TABLE [RiskAudit] (
    [Id]     BIGINT NOT NULL,
    [RiskId] BIGINT NOT NULL,
    CONSTRAINT [PK_onside.RiskAudit] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.RiskAudit_onside.ModelEntityAudit_Id] FOREIGN KEY ([Id]) REFERENCES [ModelEntityAudit] ([Id]),
    CONSTRAINT [FK_onside.RiskAudit_onside.Risk_RiskId] FOREIGN KEY ([RiskId]) REFERENCES [Risk] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [RiskAudit]([Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RiskAudit_RiskId]
    ON [RiskAudit]([RiskId] ASC);

