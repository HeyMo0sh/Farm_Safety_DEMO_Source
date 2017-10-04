CREATE TABLE [RiskImage] (
    [Id]     BIGINT NOT NULL,
    [RiskId] BIGINT NULL,
    CONSTRAINT [PK_onside.RiskImage] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.RiskImage_onside.ImageEntity_Id] FOREIGN KEY ([Id]) REFERENCES [ImageEntity] ([Id]),
    CONSTRAINT [FK_onside.RiskImage_onside.Risk_RiskId] FOREIGN KEY ([RiskId]) REFERENCES [Risk] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [RiskImage]([Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RiskId]
    ON [RiskImage]([RiskId] ASC);

