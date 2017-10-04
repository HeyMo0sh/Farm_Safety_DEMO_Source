CREATE TABLE [BusinessAdminRole] (
    [Id] BIGINT NOT NULL,
    CONSTRAINT [PK_onside.BusinessAdminRole] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.BusinessAdminRole_onside.UserRole_Id] FOREIGN KEY ([Id]) REFERENCES [UserRole] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [BusinessAdminRole]([Id] ASC);

