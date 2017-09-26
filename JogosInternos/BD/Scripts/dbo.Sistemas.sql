IF OBJECT_ID('dbo.Sistemas') IS NOT NULL    
BEGIN    
  DROP TABLE Sistemas    
END 
CREATE TABLE [dbo].[Sistemas]
(
	[in_sq_sistema] INT NOT NULL , 
    [ch_cd_sistema] VARCHAR(50) NOT NULL, 
    [ch_nm_sistema] VARCHAR(100) NULL, 
    [ch_desc_sistema] VARCHAR(300) NULL, 
	[sd_dt_criacao] smalldatetime NULL, 
	[sd_dt_atualizacao] smalldatetime NULL, 
    PRIMARY KEY ([ch_cd_sistema], [in_sq_sistema])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Tabela para cadastra os sistemas desenvolvidos pela empresa',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Sistemas',
    @level2type = NULL,
    @level2name = NULL