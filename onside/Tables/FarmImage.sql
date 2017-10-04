CREATE TABLE [FarmImage] (
    [Id]            BIGINT NOT NULL,
    [FarmProfileId] BIGINT NULL,
    CONSTRAINT [PK_onside.FarmImage] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.FarmImage_onside.FarmProfile_FarmProfileId] FOREIGN KEY ([FarmProfileId]) REFERENCES [FarmProfile] ([Id]),
    CONSTRAINT [FK_onside.FarmImage_onside.ImageEntity_Id] FOREIGN KEY ([Id]) REFERENCES [ImageEntity] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [FarmImage]([Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_FarmProfileId]
    ON [FarmImage]([FarmProfileId] ASC);

