IF OBJECT_ID('dbo.Ambientes') IS NOT NULL    
BEGIN    
  DROP TABLE Ambientes    
END
CREATE TABLE [dbo].[Ambientes]
(
	[in_sq_ambiente] INT NOT NULL , 
    [ch_cd_ambiente] VARCHAR(50) NOT NULL, 
    [ch_desc_seridor_basedados] VARCHAR(100) NULL, 
	[ch_desc_servidor_aplicacao] VARCHAR(100) NULL,	
	[ch_desc_obs] VARCHAR(100) NULL, 	
    [ch_cd_sistema] VARCHAR(50) NOT NULL, 
	[sd_dt_criacao] smalldatetime NULL, 
	[sd_dt_atualizacao] smalldatetime NULL, 
    PRIMARY KEY ([ch_cd_ambiente], [in_sq_ambiente])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Tabela para cadastra as informações referente ao ambiente onde o sistema sera disponibilizado',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Ambientes',
    @level2type = NULL,
    @level2name = NULL