USE [QUESTIONARIO]
GO

/* -------------------------------------------------------------------------------------------------
-- Dados
*/ -------------------------------------------------------------------------------------------------

-- --------------------------------------------------------------------------------------------
-- INFO SOCIAL
-- --------------------------------------------------------------------------------------------

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[INFO_SOCIAL_RESPOSTA]
-- --------------------------------------------------------------------------------------------
INSERT [QUESTIONARIO].[INFO_SOCIAL_RESPOSTA] ([ID_INFO_SOCIAL_RESPOSTA], [DESCRICAO]) VALUES (1, N'RESPOSTA DIRETA (SEM OPÇÕES DISPONÍVEIS - JÁ VEM HIDDEN, PRÉ SELECIONADA)')
INSERT [QUESTIONARIO].[INFO_SOCIAL_RESPOSTA] ([ID_INFO_SOCIAL_RESPOSTA], [DESCRICAO]) VALUES (2, N'RESPOSTA ÚNICA (APENAS UMA OPÇÃO SELECIONÁVEL ENTRE AS DISPONÍVEIS)')
INSERT [QUESTIONARIO].[INFO_SOCIAL_RESPOSTA] ([ID_INFO_SOCIAL_RESPOSTA], [DESCRICAO]) VALUES (3, N'RESPOSTA MÚLTIPLA (MÚTIPLAS OPÇÕES SELECIONÁVEIS ENTRE AS DISPONÍVEIS)')
GO

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[INFO_SOCIAL_RESPOSTA_COMPLEMENTAR]
-- --------------------------------------------------------------------------------------------
INSERT [QUESTIONARIO].[INFO_SOCIAL_RESPOSTA_COMPLEMENTAR] ([ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [DESCRICAO]) VALUES (1, N'NENHUMA RESPOSTA COMPLEMENTAR DISPONÍVEL')
INSERT [QUESTIONARIO].[INFO_SOCIAL_RESPOSTA_COMPLEMENTAR] ([ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [DESCRICAO]) VALUES (2, N'TEXTO ALFANUMÉRICO')
INSERT [QUESTIONARIO].[INFO_SOCIAL_RESPOSTA_COMPLEMENTAR] ([ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [DESCRICAO]) VALUES (3, N'TEXTO APENAS NUMÉRICO')
INSERT [QUESTIONARIO].[INFO_SOCIAL_RESPOSTA_COMPLEMENTAR] ([ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [DESCRICAO]) VALUES (4, N'TEXTO APENAS NUMÉRICO POSITIVO')
INSERT [QUESTIONARIO].[INFO_SOCIAL_RESPOSTA_COMPLEMENTAR] ([ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [DESCRICAO]) VALUES (5, N'CAIXA SIM/NÃO')
GO

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[INFO_SOCIAL_QUESTIONARIO]
-- --------------------------------------------------------------------------------------------
INSERT [QUESTIONARIO].[INFO_SOCIAL_QUESTIONARIO] ([ID_INFO_SOCIAL_QUESTIONARIO], [NOME], [DESCRICAO], [DATA_INICIO], [DATA_TERMINO], [ATIVO]) VALUES (1, N'QUESTIONÁRIO PARA ENTREVISTA DE CARTÃO REFORMA', NULL, NULL, NULL, 1)
GO

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[INFO_SOCIAL_CATEGORIA]
-- --------------------------------------------------------------------------------------------
INSERT [QUESTIONARIO].[INFO_SOCIAL_CATEGORIA] ([ID_INFO_SOCIAL_CATEGORIA], [ID_INFO_SOCIAL_QUESTIONARIO], [NOME], [ORDEM], [ATIVO]) VALUES (1, 1, N'PERGUNTAS AO MORADOR', 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_CATEGORIA] ([ID_INFO_SOCIAL_CATEGORIA], [ID_INFO_SOCIAL_QUESTIONARIO], [NOME], [ORDEM], [ATIVO]) VALUES (2, 1, N'AVALIAÇÃO TÉCNICA', 2, 1)
GO

-- --------------------------------------------------------------------------------------------
-- [NOSSACASA].[INFO_SOCIAL_TOPICO]
-- --------------------------------------------------------------------------------------------
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (1, 1, N'QUANTAS PESSOAS MORAM COM VOCÊ? (INCLUINDO FILHOS, IRMÃOS, PARENTES E AMIGOS)', 2, 1, 0, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (2, 1, N'TEM IDOSO?', 2, 1, 0, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (3, 1, N'TEM DEFICIENTE?', 2, 1, 0, 3, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (4, 1, N'APENAS A SUA FAMÍLIA MORA NO TERRENO OU TEM OUTRA CASA DE OUTRA PESSOA?', 2, 1, 0, 4, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (5, 1, N'QUAL O SEU NÍVEL DE ESCOLARIDADE?', 2, 1, 0, 5, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (6, 1, N'SOMANDO A SUA RENDA COM A RENDA DAS PESSOAS QUE MORAM COM VOCÊ, QUANTO É, APROXIMADAMENTE, A RENDA FAMILIAR MENSAL?', 2, 1, 0, 6, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (7, 1, N'A CASA ONDE VOCÊ MORA É:', 2, 1, 0, 7, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (8, 1, N'PRETENDE CONSTRUIR OU REFORMAR?', 2, 1, 0, 8, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (9, 1, N'A CASA ESTÁ EM OBRA ATIVA OU OBRA PARADA?', 2, 1, 0, 9, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (10, 1, N'HOUVE ALGUM ACOMPANHAMENTO TÉCNICO (ARQ OU ENG)?', 2, 1, 0, 10, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (11, 1, N'VOCÊ SABE O QUE FAZ O ARQUITETO?', 2, 1, 0, 11, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (12, 1, N'QUANTOS CÔMODOS TEM EM SUA RESIDÊNCIA?', 2, 1, 0, 12, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (13, 1, N'QUAIS? (NUMERAR A QUANTIDADE)', 3, 1, 0, 13, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (14, 1, N'POSSUI AUTOMÓVEL?', 2, 1, 0, 14, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (15, 1, N'TEM GARAGEM?', 2, 1, 0, 15, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (16, 1, N'O QUE VOCÊ MAIS GOSTA EM SUA RESIDÊNCIA?', 1, 1, 0, 16, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (17, 1, N'O QUE VOCÊ MENOS GOSTA EM SUA RESIDÊNCIA?', 1, 1, 0, 17, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (18, 1, N'O QUE VOCÊ GOSTARIA QUE TIVESSE EM SUA RESIDÊNCIA?', 1, 1, 0, 18, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (19, 2, N'QUAL A LOCALIZAÇÃO DO TERRENO?', 2, 1, 0, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (20, 2, N'QUAL O GABARITO DA CASA?', 2, 1, 0, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (21, 2, N'TEM CALÇADA NA FRENTE?', 2, 1, 0, 3, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (22, 2, N'TEM CALÇADA ACABADA?', 2, 1, 0, 4, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (23, 2, N'TEM ALGUM TIPO DE ÁRVORE NA CALÇADA?', 2, 1, 0, 5, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (24, 2, N'O TERRENO É MURADO?', 2, 1, 0, 6, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (25, 2, N'DE QUE TIPO DE MATERIAL É O MURO?', 2, 1, 0, 7, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (26, 2, N'QUAL O ACABAMENTO DO MURO?', 2, 1, 0, 8, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (27, 2, N'TEM ALGUM TIPO DE CONSTRUÇÃO NAS DIVISAS?', 2, 1, 0, 9, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (28, 2, N'EXISTEM CONSTRUÇÕES VIZINHAS COLADAS AO MURO?', 2, 1, 0, 10, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (29, 2, N'QUAL A TOPOGRAFIA DO TERRENO?', 2, 1, 0, 11, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (30, 2, N'QUAL A FORMA DO TERRENO?', 2, 1, 0, 12, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (31, 2, N'O TERRENO TEM ÁRVORES?', 2, 1, 0, 13, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_TOPICO] ([ID_INFO_SOCIAL_TOPICO], [ID_INFO_SOCIAL_CATEGORIA], [PERGUNTA], [ID_INFO_SOCIAL_RESPOSTA], [RESPOSTA_OBRIGATORIA], [ANEXO_TOPICO_PERMITIDO], [ORDEM], [ATIVO]) VALUES (32, 2, N'AVALIAÇÃO TÉCNICA (PODE ANEXAR UM ARQUIVO COM O CROQUI DA SITUAÇÃO):', 1, 1, 1, 14, 1)
GO

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[INFO_SOCIAL_SUBTOPICO]
-- --------------------------------------------------------------------------------------------
INSERT [QUESTIONARIO].[INFO_SOCIAL_SUBTOPICO] ([ID_INFO_SOCIAL_SUBTOPICO], [ID_INFO_SOCIAL_CATEGORIA], [ID_INFO_SOCIAL_TOPICO_PAI]) VALUES (2, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_SUBTOPICO] ([ID_INFO_SOCIAL_SUBTOPICO], [ID_INFO_SOCIAL_CATEGORIA], [ID_INFO_SOCIAL_TOPICO_PAI]) VALUES (3, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_SUBTOPICO] ([ID_INFO_SOCIAL_SUBTOPICO], [ID_INFO_SOCIAL_CATEGORIA], [ID_INFO_SOCIAL_TOPICO_PAI]) VALUES (13, 1, 12)
GO

-- --------------------------------------------------------------------------------------------
-- [NOSSACASA].[INFO_SOCIAL_OPCAO]
-- --------------------------------------------------------------------------------------------
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (1, 1, N'MORO SOZINHO.', 1, NULL, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (2, 1, N'UM A TRÊS.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (3, 1, N'QUATRO A SETE.', 1, NULL, 3, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (4, 1, N'OITO A DEZ.', 1, NULL, 4, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (5, 1, N'MAIS DE DEZ.', 1, NULL, 5, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (6, 2, N'SIM.', 1, NULL, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (7, 2, N'NÃO.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (8, 3, N'SIM.', 1, NULL, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (9, 3, N'NÃO.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (10, 4, N'APENAS A MINHA FAMÍLIA MORA NO TERRENO.', 1, NULL, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (11, 4, N'EXISTEM OUTRAS FAMÍLIAS NO MESMO TERRENO.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (12, 5, N'DA 1ª. A 4ª. SÉRIE DO ENSINO FUNDAMENTAL (ANTIGO PRIMÁRIO).', 1, NULL, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (13, 5, N'DA 5ª. A 8ª. SÉRIE DO ENSINO FUNDAMENTAL (ANTIGO GINÁSIO).', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (14, 5, N'ENSINO MÉDIO (ANTIGO SEGUNDA GRAU).', 1, NULL, 3, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (15, 5, N'ENSINO SUPERIOR.', 1, NULL, 4, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (16, 5, N'ESPECIALIZAÇÃO.', 1, NULL, 5, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (17, 5, N'NÃO ESTUDOU.', 1, NULL, 6, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (18, 6, N'ATÉ 1 SALÁRIO MÍNIMO (ATÉ R$ 937,00).', 1, NULL, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (19, 6, N'DE R$ 937,00 ATÉ R$ 1.600,00.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (20, 6, N'DE 3 A 6 SALÁRIOS MÍNIMOS (DE R$ 2.811,00 ATÉ R$ 5.622,00).', 1, NULL, 3, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (21, 6, N'DE 6 A 9 SALÁRIOS MÍNIMOS (DE R$ 5.622,00 ATÉ R$ 8.433,00).', 1, NULL, 4, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (22, 7, N'PRÓPRIA.', 1, NULL, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (23, 7, N'ALUGADA.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (24, 8, N'SIM. QUANTO TEMPO?', 2, 1, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (25, 8, N'NÃO.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (26, 9, N'SIM. DESCREVA:', 2, 1, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (27, 9, N'NÃO.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (28, 10, N'SIM. DESCREVA:', 2, 1, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (29, 10, N'NÃO.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (30, 11, N'SIM.', 1, NULL, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (31, 11, N'NÃO.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (32, 12, N'1 CÔMODO.', 1, NULL, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (33, 12, N'2 CÔMODOS.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (34, 12, N'3 CÔMODOS.', 1, NULL, 3, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (35, 12, N'4 A 6 CÔMODOS.', 1, NULL, 4, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (36, 12, N'7 A 9 CÔMODOS.', 1, NULL, 5, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (37, 12, N'10 OU MAIS CÔMODOS.', 1, NULL, 6, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (38, 13, N'SALA:', 4, 1, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (39, 13, N'COZINHA:', 4, 1, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (40, 13, N'COPA:', 4, 1, 3, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (41, 13, N'LAVANDERIA:', 4, 1, 4, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (42, 13, N'DORMITÓRIO:', 4, 1, 5, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (43, 13, N'BANHEIRO:', 4, 1, 6, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (44, 14, N'SIM. QUAL/QUAIS:', 2, 1, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (45, 14, N'NÃO.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (46, 15, N'SIM. LOCALIZAÇÃO NO TERRENO?', 5, 1, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (47, 15, N'NÃO.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (48, 16, N'RESPOSTA:', 2, 1, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (49, 17, N'RESPOSTA:', 2, 1, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (50, 18, N'RESPOSTA:', 2, 1, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (51, 19, N'MEIO DA QUADRA.', 1, NULL, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (52, 19, N'DE ESQUINA.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (53, 20, N'TÉRREA.', 1, NULL, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (54, 20, N'SOBRADO.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (55, 20, N'DOIS PAVIMENTOS.', 1, NULL, 3, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (56, 20, N'TRÊS PAVIMENTOS.', 1, NULL, 4, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (57, 20, N'MAIS PAVIMENTOS. QUANTOS:', 4, 1, 5, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (58, 21, N'SIM. QUAL O TAMANHO DA CALÇADA (EM METROS):', 4, 1, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (59, 21, N'NÃO.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (60, 22, N'SIM.', 1, NULL, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (61, 22, N'NÃO.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (62, 23, N'SIM.', 1, NULL, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (63, 23, N'NÃO.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (64, 24, N'SIM. QUAL A ALTURA DO MURO (EM METROS):', 4, 1, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (65, 24, N'NÃO. GOSTARIA QUE FOSSE?', 5, 1, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (66, 25, N'BLOCOS DE CONCRETO.', 1, NULL, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (67, 25, N'ALVENARIA.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (68, 25, N'MADEIRA.', 1, NULL, 3, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (69, 25, N'OUTRO. QUAL:', 2, 1, 4, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (70, 25, N'NÃO TEM MURO.', 1, NULL, 5, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (71, 26, N'REBOCO.', 1, NULL, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (72, 26, N'REBOCO E PINTURA.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (73, 26, N'SEM REBOCO.', 1, NULL, 3, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (74, 26, N'CHAPISCO.', 1, NULL, 4, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (75, 26, N'OUTRO. QUAL:', 2, 1, 5, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (76, 26, N'NÃO TEM MURO.', 1, NULL, 6, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (77, 27, N'SIM. EM QUAL LADO:', 2, 1, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (78, 27, N'NÃO.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (79, 28, N'SIM. EM QUAL LADO:', 2, 1, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (80, 28, N'NÃO.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (81, 29, N'PLANO.', 1, NULL, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (82, 29, N'EM ACLIVE.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (83, 29, N'EM DECLIVE.', 1, NULL, 3, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (84, 29, N'MISTO.', 1, NULL, 4, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (85, 29, N'OUTROS. QUAIS:', 2, 1, 5, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (86, 30, N'QUADRADA.', 1, NULL, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (87, 30, N'RETANGULAR.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (88, 30, N'OUTRA. QUAL:', 2, 1, 3, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (89, 31, N'SIM.', 1, NULL, 1, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (90, 31, N'NÃO.', 1, NULL, 2, 1)
INSERT [QUESTIONARIO].[INFO_SOCIAL_OPCAO] ([ID_INFO_SOCIAL_OPCAO], [ID_INFO_SOCIAL_TOPICO], [OPCAO], [ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR], [RESPOSTA_COMPLEMENTAR_OBRIGATORIA], [ORDEM], [ATIVO]) VALUES (91, 32, N'DESCREVA POSSÍVEIS MELHORIAS:', 2, 1, 1, 1)
GO

-- --------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------