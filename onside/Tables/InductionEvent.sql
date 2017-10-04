CREATE TABLE [InductionEvent] (
    [Id]                  BIGINT        NOT NULL,
    [RiskLastModifiedUtc] DATETIME2 (7) DEFAULT ('1900-01-01T00:00:00.000') NOT NULL,
    CONSTRAINT [PK_onside.InductionEvent] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.InductionEvent_onside.FarmEvent_Id] FOREIGN KEY ([Id]) REFERENCES [FarmEvent] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [InductionEvent]([Id] ASC);

