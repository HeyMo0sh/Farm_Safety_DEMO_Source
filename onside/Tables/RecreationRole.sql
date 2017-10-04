CREATE TABLE [RecreationRole] (
    [Id] BIGINT NOT NULL,
    CONSTRAINT [PK_onside.RecreationRole] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.RecreationRole_onside.UserRole_Id] FOREIGN KEY ([Id]) REFERENCES [UserRole] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [RecreationRole]([Id] ASC);

