CREATE TABLE [ModelEntityAudit] (
    [Id]              BIGINT        IDENTITY (1, 1) NOT NULL,
    [AuditType]       INT           NOT NULL,
    [EditType]        INT           NOT NULL,
    [UserId]          BIGINT        NOT NULL,
    [CreatedUtc]      DATETIME2 (7) NOT NULL,
    [LastModifiedUtc] DATETIME2 (7) NOT NULL,
    [RowVersion]      ROWVERSION    NOT NULL,
    [ProxyUserId]     BIGINT        NULL,
    CONSTRAINT [PK_onside.ModelEntityAudit] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.ModelEntityAudit_onside.ApplicationUser_ProxyUserId] FOREIGN KEY ([ProxyUserId]) REFERENCES [ApplicationUser] ([Id]),
    CONSTRAINT [FK_onside.ModelEntityAudit_onside.ApplicationUser_UserId] FOREIGN KEY ([UserId]) REFERENCES [ApplicationUser] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_ModelEntityAudit_UserId_AuditType]
    ON [ModelEntityAudit]([UserId] ASC, [AuditType] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ProxyUserId]
    ON [ModelEntityAudit]([ProxyUserId] ASC);

