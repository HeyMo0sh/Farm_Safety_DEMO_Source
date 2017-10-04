CREATE TABLE [SystemAdminRole] (
    [Id] BIGINT NOT NULL,
    CONSTRAINT [PK_onside.SystemAdminRole] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.SystemAdminRole_onside.UserRole_Id] FOREIGN KEY ([Id]) REFERENCES [UserRole] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [SystemAdminRole]([Id] ASC);

