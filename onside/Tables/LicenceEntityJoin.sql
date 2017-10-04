CREATE TABLE [LicenceEntityJoin] (
    [Id]                BIGINT        IDENTITY (1, 1) NOT NULL,
    [LicenceEntityId]   BIGINT        NOT NULL,
    [LicenceEntityType] INT           NOT NULL,
    [LicenceState]      INT           NOT NULL,
    [LicenceType]       INT           NOT NULL,
    [CreatedUtc]        DATETIME2 (7) NOT NULL,
    [LastModifiedUtc]   DATETIME2 (7) NOT NULL,
    [RowVersion]        ROWVERSION    NOT NULL,
    [BusinessId]        BIGINT        NULL,
    [FarmId]            BIGINT        NULL,
    [FarmProfile_Id]    BIGINT        NULL,
    [Type]              INT           NOT NULL,
    CONSTRAINT [PK_onside.LicenceEntityJoin] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.LicenceEntityJoin_onside.Business_BusinessId] FOREIGN KEY ([BusinessId]) REFERENCES [Business] ([Id]),
    CONSTRAINT [FK_onside.LicenceEntityJoin_onside.Farm_FarmId] FOREIGN KEY ([FarmId]) REFERENCES [Farm] ([Id]),
    CONSTRAINT [FK_onside.LicenceEntityJoin_onside.FarmProfile_FarmProfile_Id] FOREIGN KEY ([FarmProfile_Id]) REFERENCES [FarmProfile] ([Id]),
    CONSTRAINT [FK_onside.LicenceEntityJoin_onside.LicenceEntity_LicenceEntityId] FOREIGN KEY ([LicenceEntityId]) REFERENCES [LicenceEntity] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_LicenceEntityId]
    ON [LicenceEntityJoin]([LicenceEntityId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_BusinessId]
    ON [LicenceEntityJoin]([BusinessId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_FarmId]
    ON [LicenceEntityJoin]([FarmId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_FarmProfile_Id]
    ON [LicenceEntityJoin]([FarmProfile_Id] ASC);

