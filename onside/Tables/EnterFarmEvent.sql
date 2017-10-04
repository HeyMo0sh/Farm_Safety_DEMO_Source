CREATE TABLE [EnterFarmEvent] (
    [Id] BIGINT NOT NULL,
    CONSTRAINT [PK_onside.EnterFarmEvent] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.EnterFarmEvent_onside.FarmEvent_Id] FOREIGN KEY ([Id]) REFERENCES [FarmEvent] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [EnterFarmEvent]([Id] ASC);

