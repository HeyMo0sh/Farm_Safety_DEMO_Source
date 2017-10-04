CREATE TABLE [BusinessTeamMemberRole] (
    [Id] BIGINT NOT NULL,
    CONSTRAINT [PK_onside.BusinessTeamMemberRole] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.BusinessTeamMemberRole_onside.UserRole_Id] FOREIGN KEY ([Id]) REFERENCES [UserRole] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [BusinessTeamMemberRole]([Id] ASC);

