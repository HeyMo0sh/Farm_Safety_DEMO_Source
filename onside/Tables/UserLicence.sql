CREATE TABLE [UserLicence] (
    [Id]                  BIGINT        NOT NULL,
    [DateFrom]            DATETIME2 (7) NOT NULL,
    [DateTo]              DATETIME2 (7) NOT NULL,
    [LicenceType]         INT           NOT NULL,
    [UserId]              BIGINT        NOT NULL,
    [CreatedUtc]          DATETIME2 (7) NOT NULL,
    [LastModifiedUtc]     DATETIME2 (7) NOT NULL,
    [RowVersion]          ROWVERSION    NOT NULL,
    [PaymentProcessedUtc] DATETIME2 (7) NULL,
    [BillPayerId]         BIGINT        DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_onside.UserLicence] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.UserLicence_onside.ApplicationUser_UserId] FOREIGN KEY ([UserId]) REFERENCES [ApplicationUser] ([Id]),
    CONSTRAINT [FK_onside.UserLicence_onside.BillPayer_BillPayerId] FOREIGN KEY ([BillPayerId]) REFERENCES [BillPayer] ([Id]),
    CONSTRAINT [FK_onside.UserLicence_onside.LicenceDetailLine_Id] FOREIGN KEY ([Id]) REFERENCES [LicenceDetailLine] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [UserLicence]([Id] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_UserLicence_UserId_DateTo_LicenceType_BillPayerId]
    ON [UserLicence]([UserId] ASC, [DateTo] ASC, [LicenceType] ASC, [BillPayerId] ASC);

