IF OBJECT_ID('dbo.Versoes') IS NOT NULL    
BEGIN    
  DROP TABLE Versoes    
END 
CREATE TABLE [dbo].[Versoes]
(
	[in_sq_versao] INT NOT NULL , 
    [ch_cd_versao] VARCHAR(50) NOT NULL,     
    [ch_cd_sistema] VARCHAR(50) NOT NULL, 
	[ch_cd_ambiente] VARCHAR(50) NOT NULL,
	[ch_desc_versao] VARCHAR(100) NULL, 
	[sd_dt_criacao] smalldatetime NULL, 
	[sd_dt_atualizacao] smalldatetime NULL, 
    PRIMARY KEY ([ch_cd_versao], [in_sq_versao])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Cadastra as versões dos sistemas nos seus respectivos ambientes',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Versoes',
    @level2type = NULL,
    @level2name = NULL