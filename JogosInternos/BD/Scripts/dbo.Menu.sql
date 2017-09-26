IF OBJECT_ID('dbo.Menu') IS NOT NULL    
BEGIN    
  DROP TABLE Menu    
END
CREATE TABLE [dbo].[Menu]
(
	[in_sq_menu] INT NOT NULL , 
    [ch_cd_menu] VARCHAR(50) NOT NULL, 
    [ch_nm_campo_menu] VARCHAR(100) NULL, 
	[ch_nm_label_menu] VARCHAR(100) NULL, 
	[ch_desc_hint_menu] VARCHAR(100) NULL, 
    [ch_cd_sistema] VARCHAR(50) NOT NULL, 
	[sd_dt_criacao] smalldatetime NULL, 
	[sd_dt_atualizacao] smalldatetime NULL, 
    PRIMARY KEY ([ch_cd_menu], [in_sq_menu])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Tabela para cadastra os menus de cadas sistema desenvolvidos pela empresa para que os mesmos sejam disponibilizados dinamicamente',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Menu',
    @level2type = NULL,
    @level2name = NULL