﻿CREATE TABLE [FarmTeamMemberFarm] (
    [Id]                   BIGINT        IDENTITY (1, 1) NOT NULL,
    [FarmTeamMemberRoleId] BIGINT        NOT NULL,
    [FarmId]               BIGINT        NOT NULL,
    [CreatedUtc]           DATETIME2 (7) NOT NULL,
    [LastModifiedUtc]      DATETIME2 (7) NOT NULL,
    [RowVersion]           ROWVERSION    NOT NULL,
    [JobRole]              NVARCHAR (50) NULL,
    [IsContact]            BIT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_onside.FarmTeamMemberFarm] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.FarmTeamMemberFarm_onside.Farm_FarmId] FOREIGN KEY ([FarmId]) REFERENCES [Farm] ([Id]),
    CONSTRAINT [FK_onside.FarmTeamMemberFarm_onside.FarmTeamMemberRole_FarmTeamMemberRoleId] FOREIGN KEY ([FarmTeamMemberRoleId]) REFERENCES [FarmTeamMemberRole] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_FarmTeamMemberRoleId]
    ON [FarmTeamMemberFarm]([FarmTeamMemberRoleId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_FarmId]
    ON [FarmTeamMemberFarm]([FarmId] ASC);

