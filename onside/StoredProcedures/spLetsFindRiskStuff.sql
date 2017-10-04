CREATE PROCEDURE spLetsFindRiskStuff
AS
    BEGIN

        SELECT TOP 5
      [Description]
      ,[FarmId]
      ,[Title]
      ,[Type]
      ,[Likelihood]
      ,[PotentialHarm]
      
  FROM [Risk];

        RETURN 0;
    END;

GO
