CREATE TABLE [InvoicePaymentTask] (
    [Id]                      BIGINT        NOT NULL,
    [TaskState]               INT           NOT NULL,
    [DelayProcessingUntilUtc] DATETIME2 (7) NOT NULL,
    [StartProcessingUtc]      DATETIME2 (7) NULL,
    [EndProcessingUtc]        DATETIME2 (7) NULL,
    [NumProcessingAttempts]   INT           NOT NULL,
    [CreatedUtc]              DATETIME2 (7) NOT NULL,
    [LastModifiedUtc]         DATETIME2 (7) NOT NULL,
    [RowVersion]              ROWVERSION    NOT NULL,
    CONSTRAINT [PK_onside.InvoicePaymentTask] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.InvoicePaymentTask_onside.Payment_Id] FOREIGN KEY ([Id]) REFERENCES [Payment] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [InvoicePaymentTask]([Id] ASC);

