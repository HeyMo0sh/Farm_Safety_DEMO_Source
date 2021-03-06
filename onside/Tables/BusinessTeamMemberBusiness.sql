﻿CREATE TABLE [BusinessTeamMemberBusiness] (
    [Id]                       BIGINT        IDENTITY (1, 1) NOT NULL,
    [BusinessTeamMemberRoleId] BIGINT        NOT NULL,
    [BusinessId]               BIGINT        NOT NULL,
    [CreatedUtc]               DATETIME2 (7) NOT NULL,
    [LastModifiedUtc]          DATETIME2 (7) NOT NULL,
    [RowVersion]               ROWVERSION    NOT NULL,
    [JobRole]                  NVARCHAR (50) NULL,
    CONSTRAINT [PK_onside.BusinessTeamMemberBusiness] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.BusinessTeamMemberBusiness_onside.Business_BusinessId] FOREIGN KEY ([BusinessId]) REFERENCES [Business] ([Id]),
    CONSTRAINT [FK_onside.BusinessTeamMemberBusiness_onside.BusinessTeamMemberRole_BusinessTeamMemberRoleId] FOREIGN KEY ([BusinessTeamMemberRoleId]) REFERENCES [BusinessTeamMemberRole] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_BusinessTeamMemberRoleId]
    ON [BusinessTeamMemberBusiness]([BusinessTeamMemberRoleId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_BusinessId]
    ON [BusinessTeamMemberBusiness]([BusinessId] ASC);

