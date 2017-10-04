CREATE TABLE [Risk] (
    [Id]               BIGINT            IDENTITY (1, 1) NOT NULL,
    [Description]      NVARCHAR (256)    NOT NULL,
    [FarmId]           BIGINT            NOT NULL,
    [CreatedUtc]       DATETIME2 (7)     NOT NULL,
    [LastModifiedUtc]  DATETIME2 (7)     NOT NULL,
    [RowVersion]       ROWVERSION        NOT NULL,
    [Title]            NVARCHAR (75)     DEFAULT ('') NOT NULL,
    [Type]             INT               CONSTRAINT [DF_onside.Risk_Type] DEFAULT ((100)) NOT NULL,
    [Likelihood]       INT               DEFAULT ((0)) NOT NULL,
    [Location]         [sys].[geography] NULL,
    [MitigationState]  INT               DEFAULT ((0)) NOT NULL,
    [PotentialHarm]    INT               DEFAULT ((0)) NOT NULL,
    [IsTeamMemberRisk] BIT               DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_onside.Risk] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.Risk_onside.Farm_FarmId] FOREIGN KEY ([FarmId]) REFERENCES [Farm] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Risk_FarmId]
    ON [Risk]([FarmId] ASC);

