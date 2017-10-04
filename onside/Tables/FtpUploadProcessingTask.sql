CREATE TABLE [FtpUploadProcessingTask] (
    [Id]                      BIGINT          NOT NULL,
    [_fileContentCompressed]  VARBINARY (MAX) NULL,
    [Filename]                NVARCHAR (MAX)  NULL,
    [Path]                    NVARCHAR (MAX)  NULL,
    [TaskState]               INT             NOT NULL,
    [DelayProcessingUntilUtc] DATETIME2 (7)   NOT NULL,
    [StartProcessingUtc]      DATETIME2 (7)   NULL,
    [EndProcessingUtc]        DATETIME2 (7)   NULL,
    [NumProcessingAttempts]   INT             NOT NULL,
    [CreatedUtc]              DATETIME2 (7)   NOT NULL,
    [LastModifiedUtc]         DATETIME2 (7)   NOT NULL,
    [RowVersion]              ROWVERSION      NOT NULL,
    CONSTRAINT [PK_onside.FtpUploadProcessingTask] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.FtpUploadProcessingTask_onside.Payment_Id] FOREIGN KEY ([Id]) REFERENCES [Payment] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [FtpUploadProcessingTask]([Id] ASC);

