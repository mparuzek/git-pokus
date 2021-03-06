IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[StageLotsStornoOperation]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[StageLotsStornoOperation]
GO

CREATE VIEW dbo.StageLotsStornoOperation 
WITH ENCRYPTION 
AS
SELECT [ID]
      ,[No_]
      ,[External ID]
      ,[Create Date]
      ,[Posting Date]
  FROM [synonym].[LotsStornoOperation]
  
GO
GRANT SELECT ON dbo.StageLotsStornoOperation TO [$ndo$shadow]
 