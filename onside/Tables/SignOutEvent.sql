CREATE TABLE [SignOutEvent] (
    [Id] BIGINT NOT NULL,
    CONSTRAINT [PK_onside.SignOutEvent] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.SignOutEvent_onside.FarmEvent_Id] FOREIGN KEY ([Id]) REFERENCES [FarmEvent] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [SignOutEvent]([Id] ASC);

