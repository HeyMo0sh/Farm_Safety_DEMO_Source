CREATE TABLE [SignInEvent] (
    [Id]                     BIGINT        NOT NULL,
    [RepresentingBusinessId] BIGINT        NULL,
    [RepresentingFarmId]     BIGINT        NULL,
    [UserRoleType]           INT           NOT NULL,
    [SignOutId]              BIGINT        NULL,
    [NextSignInAnyFarmUtc]   DATETIME2 (7) NULL,
    CONSTRAINT [PK_onside.SignInEvent] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.SignInEvent_onside.Business_RepresentingBusinessId] FOREIGN KEY ([RepresentingBusinessId]) REFERENCES [Business] ([Id]),
    CONSTRAINT [FK_onside.SignInEvent_onside.Farm_RepresentingFarmId] FOREIGN KEY ([RepresentingFarmId]) REFERENCES [Farm] ([Id]),
    CONSTRAINT [FK_onside.SignInEvent_onside.FarmEvent_Id] FOREIGN KEY ([Id]) REFERENCES [FarmEvent] ([Id]),
    CONSTRAINT [FK_onside.SignInEvent_onside.SignOutEvent_SignOutId] FOREIGN KEY ([SignOutId]) REFERENCES [SignOutEvent] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [SignInEvent]([Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RepresentingBusinessId]
    ON [SignInEvent]([RepresentingBusinessId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RepresentingFarmId]
    ON [SignInEvent]([RepresentingFarmId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_SignOutId]
    ON [SignInEvent]([SignOutId] ASC);

