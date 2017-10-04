﻿CREATE TABLE [LicenceDetailUserRelationship] (
    [Id]              BIGINT        IDENTITY (1, 1) NOT NULL,
    [BusinessId]      BIGINT        NULL,
    [DetailLineId]    BIGINT        NOT NULL,
    [FarmId]          BIGINT        NULL,
    [UserRoleType]    INT           NOT NULL,
    [CreatedUtc]      DATETIME2 (7) NOT NULL,
    [LastModifiedUtc] DATETIME2 (7) NOT NULL,
    [RowVersion]      ROWVERSION    NOT NULL,
    CONSTRAINT [PK_onside.LicenceDetailUserRelationship] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.LicenceDetailUserRelationship_onside.Business_BusinessId] FOREIGN KEY ([BusinessId]) REFERENCES [Business] ([Id]),
    CONSTRAINT [FK_onside.LicenceDetailUserRelationship_onside.Farm_FarmId] FOREIGN KEY ([FarmId]) REFERENCES [Farm] ([Id]),
    CONSTRAINT [FK_onside.LicenceDetailUserRelationship_onside.LicenceDetailLine_DetailLineId] FOREIGN KEY ([DetailLineId]) REFERENCES [LicenceDetailLine] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_BusinessId]
    ON [LicenceDetailUserRelationship]([BusinessId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_DetailLineId]
    ON [LicenceDetailUserRelationship]([DetailLineId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_FarmId]
    ON [LicenceDetailUserRelationship]([FarmId] ASC);

