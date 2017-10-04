CREATE TABLE [ApplicationUserClaim] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [UserId]     BIGINT         NOT NULL,
    [ClaimType]  NVARCHAR (MAX) NULL,
    [ClaimValue] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_onside.ApplicationUserClaim] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.ApplicationUserClaim_onside.ApplicationUser_UserId] FOREIGN KEY ([UserId]) REFERENCES [ApplicationUser] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_UserId]
    ON [ApplicationUserClaim]([UserId] ASC);

