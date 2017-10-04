CREATE TABLE [FarmLocationNeighbour] (
    [Id]                                BIGINT        IDENTITY (1, 1) NOT NULL,
    [NeighbourId]                       BIGINT        NOT NULL,
    [OriginId]                          BIGINT        NOT NULL,
    [DegreesOriginToNeighbour]          INT           NOT NULL,
    [DistanceMetres]                    INT           NOT NULL,
    [CreatedUtc]                        DATETIME2 (7) NOT NULL,
    [LastModifiedUtc]                   DATETIME2 (7) NOT NULL,
    [RowVersion]                        ROWVERSION    NOT NULL,
    [IsNeighbourPolygonOverlapOfCircle] BIT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_onside.FarmLocationNeighbour] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_onside.FarmLocationNeighbour_onside.FarmLocation_NeighbourId] FOREIGN KEY ([NeighbourId]) REFERENCES [FarmLocation] ([Id]),
    CONSTRAINT [FK_onside.FarmLocationNeighbour_onside.FarmLocation_OriginId] FOREIGN KEY ([OriginId]) REFERENCES [FarmLocation] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_NeighbourId]
    ON [FarmLocationNeighbour]([NeighbourId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_OriginId]
    ON [FarmLocationNeighbour]([OriginId] ASC);

