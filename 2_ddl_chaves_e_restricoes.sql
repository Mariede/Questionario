USE [QUESTIONARIO]
GO

/* -------------------------------------------------------------------------------------------------
-- FKs, CKs e Restricoes
*/ -------------------------------------------------------------------------------------------------

-- --------------------------------------------------------------------------------------------
-- FAMILIAS
-- --------------------------------------------------------------------------------------------

-- --------------------------------------------------------------------------------------------
-- [NOSSACASA].[PESSOA]
-- --------------------------------------------------------------------------------------------
ALTER TABLE [QUESTIONARIO].[PESSOA]  WITH CHECK ADD  CONSTRAINT [CK_PESSOA_SEXO] CHECK  (([SEXO]='M' OR [SEXO]='F'))
GO
ALTER TABLE [QUESTIONARIO].[PESSOA] CHECK CONSTRAINT [CK_PESSOA_SEXO]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'M - Masculino / F - Feminino' , @level0type=N'SCHEMA',@level0name=N'QUESTIONARIO', @level1type=N'TABLE',@level1name=N'PESSOA', @level2type=N'CONSTRAINT',@level2name=N'CK_PESSOA_SEXO'
GO

ALTER TABLE [QUESTIONARIO].[PESSOA]  WITH CHECK ADD  CONSTRAINT [FK_PESSOA_FAMILIA] FOREIGN KEY([ID_FAMILIA])
REFERENCES [QUESTIONARIO].[FAMILIA] ([ID_FAMILIA])
GO
ALTER TABLE [QUESTIONARIO].[PESSOA] CHECK CONSTRAINT [FK_PESSOA_FAMILIA]
GO

-- --------------------------------------------------------------------------------------------
-- INFO SOCIAL
-- --------------------------------------------------------------------------------------------

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[INFO_SOCIAL_CATEGORIA]
-- --------------------------------------------------------------------------------------------
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_CATEGORIA]  WITH CHECK ADD  CONSTRAINT [FK_INFO_SOCIAL_CATEGORIA_INFO_SOCIAL_QUESTIONARIO] FOREIGN KEY([ID_INFO_SOCIAL_QUESTIONARIO])
REFERENCES [QUESTIONARIO].[INFO_SOCIAL_QUESTIONARIO] ([ID_INFO_SOCIAL_QUESTIONARIO])
GO
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_CATEGORIA] CHECK CONSTRAINT [FK_INFO_SOCIAL_CATEGORIA_INFO_SOCIAL_QUESTIONARIO]
GO

-- --------------------------------------------------------------------------------------------
-- [NOSSACASA].[INFO_SOCIAL_TOPICO]
-- --------------------------------------------------------------------------------------------
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_TOPICO]  WITH CHECK ADD  CONSTRAINT [FK_INFO_SOCIAL_TOPICO_INFO_SOCIAL_CATEGORIA] FOREIGN KEY([ID_INFO_SOCIAL_CATEGORIA])
REFERENCES [QUESTIONARIO].[INFO_SOCIAL_CATEGORIA] ([ID_INFO_SOCIAL_CATEGORIA])
GO
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_TOPICO] CHECK CONSTRAINT [FK_INFO_SOCIAL_TOPICO_INFO_SOCIAL_CATEGORIA]
GO

ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_TOPICO]  WITH CHECK ADD  CONSTRAINT [FK_INFO_SOCIAL_TOPICO_INFO_SOCIAL_RESPOSTA] FOREIGN KEY([ID_INFO_SOCIAL_RESPOSTA])
REFERENCES [QUESTIONARIO].[INFO_SOCIAL_RESPOSTA] ([ID_INFO_SOCIAL_RESPOSTA])
GO
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_TOPICO] CHECK CONSTRAINT [FK_INFO_SOCIAL_TOPICO_INFO_SOCIAL_RESPOSTA]
GO

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[INFO_SOCIAL_SUBTOPICO]
-- --------------------------------------------------------------------------------------------
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_SUBTOPICO]  WITH CHECK ADD  CONSTRAINT [FK_INFO_SOCIAL_SUBTOPICO_INFO_SOCIAL_TOPICO_TOPICO_PAI] FOREIGN KEY([ID_INFO_SOCIAL_CATEGORIA], [ID_INFO_SOCIAL_TOPICO_PAI])
REFERENCES [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_CATEGORIA], [ID_INFO_SOCIAL_TOPICO])
GO
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_SUBTOPICO] CHECK CONSTRAINT [FK_INFO_SOCIAL_SUBTOPICO_INFO_SOCIAL_TOPICO_TOPICO_PAI]
GO

ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_SUBTOPICO]  WITH CHECK ADD  CONSTRAINT [FK_INFO_SOCIAL_SUBTOPICO_INFO_SOCIAL_TOPICO_SUBTOPICO] FOREIGN KEY([ID_INFO_SOCIAL_CATEGORIA], [ID_INFO_SOCIAL_SUBTOPICO])
REFERENCES [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_CATEGORIA], [ID_INFO_SOCIAL_TOPICO])
GO
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_SUBTOPICO] CHECK CONSTRAINT [FK_INFO_SOCIAL_SUBTOPICO_INFO_SOCIAL_TOPICO_SUBTOPICO]
GO

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[INFO_SOCIAL_ANEXO_TOPICO]
-- --------------------------------------------------------------------------------------------
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_ANEXO_TOPICO]  WITH CHECK ADD  CONSTRAINT [FK_INFO_SOCIAL_ANEXO_TOPICO_INFO_SOCIAL_TOPICO] FOREIGN KEY([ID_INFO_SOCIAL_TOPICO])
REFERENCES [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO])
GO
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_ANEXO_TOPICO] CHECK CONSTRAINT [FK_INFO_SOCIAL_ANEXO_TOPICO_INFO_SOCIAL_TOPICO]
GO

-- --------------------------------------------------------------------------------------------
-- [NOSSACASA].[INFO_SOCIAL_OPCAO]
-- --------------------------------------------------------------------------------------------
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_OPCAO]  WITH CHECK ADD  CONSTRAINT [CK_INFO_SOCIAL_OPCAO_RESPOSTA_COMPLEMENTAR] CHECK  (([ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR]=(1) AND [RESPOSTA_COMPLEMENTAR_OBRIGATORIA] IS NULL OR [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR]<>(1) AND [RESPOSTA_COMPLEMENTAR_OBRIGATORIA] IS NOT NULL))
GO
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_OPCAO] CHECK CONSTRAINT [CK_INFO_SOCIAL_OPCAO_RESPOSTA_COMPLEMENTAR]
GO

ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_OPCAO]  WITH CHECK ADD  CONSTRAINT [FK_INFO_SOCIAL_OPCAO_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR] FOREIGN KEY([ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR])
REFERENCES [QUESTIONARIO].[INFO_SOCIAL_RESPOSTA_COMPLEMENTAR] ([ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR])
GO
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_OPCAO] CHECK CONSTRAINT [FK_INFO_SOCIAL_OPCAO_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR]
GO

ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_OPCAO]  WITH CHECK ADD  CONSTRAINT [FK_INFO_SOCIAL_OPCAO_INFO_SOCIAL_TOPICO] FOREIGN KEY([ID_INFO_SOCIAL_TOPICO])
REFERENCES [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO])
GO
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_OPCAO] CHECK CONSTRAINT [FK_INFO_SOCIAL_OPCAO_INFO_SOCIAL_TOPICO]
GO

-- --------------------------------------------------------------------------------------------
-- [NOSSACASA].[INFO_SOCIAL_FOLHA_RESPOSTA]
-- --------------------------------------------------------------------------------------------
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_FOLHA_RESPOSTA]  WITH CHECK ADD  CONSTRAINT [FK_INFO_SOCIAL_FOLHA_RESPOSTA_PESSOA] FOREIGN KEY([ID_PESSOA])
REFERENCES [QUESTIONARIO].[PESSOA] ([ID_PESSOA])
GO
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_FOLHA_RESPOSTA] CHECK CONSTRAINT [FK_INFO_SOCIAL_FOLHA_RESPOSTA_PESSOA]
GO

-- --------------------------------------------------------------------------------------------
-- [NOSSACASA].[INFO_SOCIAL_RESULTADO]
-- --------------------------------------------------------------------------------------------
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_RESULTADO]  WITH CHECK ADD  CONSTRAINT [FK_INFO_SOCIAL_RESULTADO_INFO_SOCIAL_FOLHA_RESPOSTA] FOREIGN KEY([ID_INFO_SOCIAL_FOLHA_RESPOSTA])
REFERENCES [QUESTIONARIO].[INFO_SOCIAL_FOLHA_RESPOSTA] ([ID_INFO_SOCIAL_FOLHA_RESPOSTA])
GO
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_RESULTADO] CHECK CONSTRAINT [FK_INFO_SOCIAL_RESULTADO_INFO_SOCIAL_FOLHA_RESPOSTA]
GO

ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_RESULTADO]  WITH CHECK ADD  CONSTRAINT [FK_INFO_SOCIAL_RESULTADO_INFO_SOCIAL_OPCAO] FOREIGN KEY([ID_INFO_SOCIAL_OPCAO])
REFERENCES [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO])
GO
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_RESULTADO] CHECK CONSTRAINT [FK_INFO_SOCIAL_RESULTADO_INFO_SOCIAL_OPCAO]
GO

-- --------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------