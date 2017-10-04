CREATE TABLE [FarmProfile] (
    [Id]                 BIGINT         NOT NULL,
    [Address]            NVARCHAR (256) NOT NULL,
    [Description]        NVARCHAR (500) NOT NULL,
    [Name]               NVARCHAR (100) NOT NULL,
    [CreatedUtc]         DATETIME2 (7)  NOT NULL,
    [LastModifiedUtc]    DATETIME2 (7)  NOT NULL,
    [RowVersion]         ROWVERSION     NOT NULL,
    [IsAlertingDisabled] BIT            DEFAULT ((0)) NOT NULL,
    [ContactPhoneNumber] NVARCHAR (25)  NULL,
    CONSTRAINT [PK_onside.FarmProfile] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.FarmProfile_onside.Farm_Id] FOREIGN KEY ([Id]) REFERENCES [Farm] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [FarmProfile]([Id] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_FarmProfile_Address]
    ON [FarmProfile]([Address] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_FarmProfile_Name]
    ON [FarmProfile]([Name] ASC);

