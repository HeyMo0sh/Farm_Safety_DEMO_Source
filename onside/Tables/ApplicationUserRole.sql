CREATE TABLE [ApplicationUserRole] (
    [UserId] BIGINT NOT NULL,
    [RoleId] BIGINT NOT NULL,
    CONSTRAINT [PK_onside.ApplicationUserRole] PRIMARY KEY CLUSTERED ([UserId] ASC, [RoleId] ASC),
    CONSTRAINT [FK_onside.ApplicationUserRole_onside.ApplicationRole_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [ApplicationRole] ([Id]),
    CONSTRAINT [FK_onside.ApplicationUserRole_onside.ApplicationUser_UserId] FOREIGN KEY ([UserId]) REFERENCES [ApplicationUser] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_UserId]
    ON [ApplicationUserRole]([UserId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RoleId]
    ON [ApplicationUserRole]([RoleId] ASC);

