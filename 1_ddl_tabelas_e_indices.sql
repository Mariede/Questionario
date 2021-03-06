USE [QUESTIONARIO]
GO

/* -------------------------------------------------------------------------------------------------
-- Tabelas, PKs, TRGs e Indices
*/ -------------------------------------------------------------------------------------------------

-- --------------------------------------------------------------------------------------------
-- FAMILIAS
-- --------------------------------------------------------------------------------------------

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[FAMILIA]
-- --------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [QUESTIONARIO].[FAMILIA](
	[ID_FAMILIA] [int] IDENTITY(1,1) NOT NULL,
	[ENDERECO_NORMALIZADO] [bit] NOT NULL,
	[ID_CEP] [int] NULL,
	[ID_LOCALIDADE] [int] NOT NULL,
	[ENDERECO_BAIRRO] [varchar](200) NOT NULL,
	[ENDERECO_LOGRADOURO] [varchar](200) NOT NULL,
	[ENDERECO_NUMERO] [varchar](30) NOT NULL,
	[ENDERECO_COMPLEMENTO] [varchar](100) NULL,
	[FONE_FIXO] [varchar](15) NULL,
	[DATA_CRIACAO] [datetime] NOT NULL,
	[DATA_ALTERACAO] [datetime] NOT NULL,
 CONSTRAINT [PK_FAMILIA] PRIMARY KEY CLUSTERED
(
	[ID_FAMILIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[PESSOA]
-- --------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [QUESTIONARIO].[PESSOA](
	[ID_PESSOA] [int] IDENTITY(1,1) NOT NULL,
	[ID_FAMILIA] [int] NOT NULL,
	[CPF] [numeric](11, 0) NULL,
	[NOME_COMPLETO] [varchar](200) NOT NULL,
	[IDADE] [int] NOT NULL,
	[SEXO] [char](1) NOT NULL,
	[EMAIL] [varchar](200) NULL,
	[FONE_CELULAR] [varchar](15) NULL,
	[DATA_CRIACAO] [datetime] NOT NULL,
	[DATA_ALTERACAO] [datetime] NOT NULL,
 CONSTRAINT [PK_PESSOA] PRIMARY KEY CLUSTERED
(
	[ID_PESSOA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_PESSOA] ON [QUESTIONARIO].[PESSOA]
(
	[ID_FAMILIA] ASC,
	[ID_PESSOA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_PESSOA_CPF] ON [QUESTIONARIO].[PESSOA]
(
	[CPF] ASC
)
WHERE ([CPF] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

-- --------------------------------------------------------------------------------------------
-- INFO SOCIAL
-- --------------------------------------------------------------------------------------------

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[INFO_SOCIAL_RESPOSTA]
-- --------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [QUESTIONARIO].[INFO_SOCIAL_RESPOSTA](
	[ID_INFO_SOCIAL_RESPOSTA] [int] NOT NULL,
	[DESCRICAO] [varchar](100) NOT NULL,
 CONSTRAINT [PK_INFO_SOCIAL_RESPOSTA] PRIMARY KEY CLUSTERED
(
	[ID_INFO_SOCIAL_RESPOSTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[INFO_SOCIAL_RESPOSTA_COMPLEMENTAR]
-- --------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [QUESTIONARIO].[INFO_SOCIAL_RESPOSTA_COMPLEMENTAR](
	[ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR] [int] NOT NULL,
	[DESCRICAO] [varchar](100) NOT NULL,
 CONSTRAINT [PK_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR] PRIMARY KEY CLUSTERED
(
	[ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[INFO_SOCIAL_QUESTIONARIO]
-- --------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [QUESTIONARIO].[INFO_SOCIAL_QUESTIONARIO](
	[ID_INFO_SOCIAL_QUESTIONARIO] [int] NOT NULL,
	[NOME] [varchar](100) NOT NULL,
	[DESCRICAO] [varchar](400) NULL,
	[DATA_INICIO] [datetime] NULL,
	[DATA_TERMINO] [datetime] NULL,
	[ATIVO] [bit] NOT NULL,
 CONSTRAINT [PK_INFO_SOCIAL_QUESTIONARIO] PRIMARY KEY CLUSTERED
(
	[ID_INFO_SOCIAL_QUESTIONARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[INFO_SOCIAL_CATEGORIA]
-- --------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [QUESTIONARIO].[INFO_SOCIAL_CATEGORIA](
	[ID_INFO_SOCIAL_CATEGORIA] [int] NOT NULL,
	[ID_INFO_SOCIAL_QUESTIONARIO] [int] NOT NULL,
	[NOME] [varchar](100) NOT NULL,
	[ORDEM] [int] NOT NULL,
	[ATIVO] [bit] NOT NULL,
 CONSTRAINT [PK_INFO_SOCIAL_CATEGORIA] PRIMARY KEY CLUSTERED
(
	[ID_INFO_SOCIAL_CATEGORIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_INFO_SOCIAL_CATEGORIA] ON [QUESTIONARIO].[INFO_SOCIAL_CATEGORIA]
(
	[ID_INFO_SOCIAL_QUESTIONARIO] ASC,
	[ID_INFO_SOCIAL_CATEGORIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_INFO_SOCIAL_CATEGORIA_ORDEM] ON [QUESTIONARIO].[INFO_SOCIAL_CATEGORIA]
(
	[ID_INFO_SOCIAL_QUESTIONARIO] ASC,
	[ORDEM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[INFO_SOCIAL_TOPICO]
-- --------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [QUESTIONARIO].[INFO_SOCIAL_TOPICO](
	[ID_INFO_SOCIAL_TOPICO] [int] NOT NULL,
	[ID_INFO_SOCIAL_CATEGORIA] [int] NOT NULL,
	[PERGUNTA] [varchar](400) NOT NULL,
	[ID_INFO_SOCIAL_RESPOSTA] [int] NOT NULL,
	[RESPOSTA_OBRIGATORIA] [bit] NOT NULL,
	[ANEXO_TOPICO_PERMITIDO] [bit] NOT NULL,
	[ORDEM] [int] NOT NULL,
	[ATIVO] [bit] NOT NULL,
 CONSTRAINT [PK_INFO_SOCIAL_TOPICO] PRIMARY KEY CLUSTERED
(
	[ID_INFO_SOCIAL_TOPICO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_INFO_SOCIAL_TOPICO] ON [QUESTIONARIO].[INFO_SOCIAL_TOPICO]
(
	[ID_INFO_SOCIAL_CATEGORIA] ASC,
	[ID_INFO_SOCIAL_TOPICO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_INFO_SOCIAL_TOPICO_ORDEM] ON [QUESTIONARIO].[INFO_SOCIAL_TOPICO]
(
	[ID_INFO_SOCIAL_CATEGORIA] ASC,
	[ORDEM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[INFO_SOCIAL_SUBTOPICO]
-- --------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [QUESTIONARIO].[INFO_SOCIAL_SUBTOPICO](
	[ID_INFO_SOCIAL_SUBTOPICO] [int] NOT NULL,
	[ID_INFO_SOCIAL_CATEGORIA] [int] NOT NULL,
	[ID_INFO_SOCIAL_TOPICO_PAI] [int] NOT NULL,
 CONSTRAINT [PK_INFO_SOCIAL_SUBTOPICO] PRIMARY KEY CLUSTERED
(
	[ID_INFO_SOCIAL_SUBTOPICO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_INFO_SOCIAL_SUBTOPICO] ON [QUESTIONARIO].[INFO_SOCIAL_SUBTOPICO]
(
	[ID_INFO_SOCIAL_CATEGORIA] ASC,
	[ID_INFO_SOCIAL_TOPICO_PAI] ASC,
	[ID_INFO_SOCIAL_SUBTOPICO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[INFO_SOCIAL_ANEXO_TOPICO]
-- --------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [QUESTIONARIO].[INFO_SOCIAL_ANEXO_TOPICO](
	[ID_INFO_SOCIAL_ANEXO_TOPICO] [int] IDENTITY(1,1) NOT NULL,
	[ID_INFO_SOCIAL_TOPICO] [int] NOT NULL,
	[ID_INFO_SOCIAL_FOLHA_RESPOSTA] [int] NOT NULL,
	[TITULO_EXIBICAO] [varchar](200) NULL,
 CONSTRAINT [PK_INFO_SOCIAL_ANEXO_TOPICO] PRIMARY KEY CLUSTERED
(
	[ID_INFO_SOCIAL_ANEXO_TOPICO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_INFO_SOCIAL_ANEXO_TOPICO] ON [QUESTIONARIO].[INFO_SOCIAL_ANEXO_TOPICO]
(
	[ID_INFO_SOCIAL_FOLHA_RESPOSTA] ASC,
	[ID_INFO_SOCIAL_TOPICO] ASC,
	[ID_INFO_SOCIAL_ANEXO_TOPICO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [QUESTIONARIO].[TR_CK_ANEXO_TOPICO_PERMITIDO]
	ON [QUESTIONARIO].[INFO_SOCIAL_ANEXO_TOPICO]
	AFTER INSERT, UPDATE
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (
		SELECT
			A.ID_INFO_SOCIAL_TOPICO
		FROM
			inserted A
			INNER JOIN QUESTIONARIO.INFO_SOCIAL_TOPICO B
				ON (B.ID_INFO_SOCIAL_TOPICO = A.ID_INFO_SOCIAL_TOPICO)
		WHERE
			B.ANEXO_TOPICO_PERMITIDO = 0
	)
	BEGIN
		RAISERROR ('ID_INFO_SOCIAL_TOPICO A SER INSERIDO NAO POSSUI PERMISSAO DE ANEXOS EM INFO_SOCIAL_TOPICO', 16, 1) WITH NOWAIT;
		ROLLBACK TRANSACTION;
		RETURN
	END
END
GO
ALTER TABLE [QUESTIONARIO].[INFO_SOCIAL_ANEXO_TOPICO] ENABLE TRIGGER [TR_CK_ANEXO_TOPICO_PERMITIDO]
GO

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[INFO_SOCIAL_OPCAO]
-- --------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [QUESTIONARIO].[INFO_SOCIAL_OPCAO](
	[ID_INFO_SOCIAL_OPCAO] [int] NOT NULL,
	[ID_INFO_SOCIAL_TOPICO] [int] NOT NULL,
	[OPCAO] [varchar](200) NOT NULL,
	[ID_INFO_SOCIAL_RESPOSTA_COMPLEMENTAR] [int] NOT NULL,
	[RESPOSTA_COMPLEMENTAR_OBRIGATORIA] [bit] NULL,
	[ORDEM] [int] NOT NULL,
	[ATIVO] [bit] NOT NULL,
 CONSTRAINT [PK_INFO_SOCIAL_OPCAO] PRIMARY KEY CLUSTERED
(
	[ID_INFO_SOCIAL_OPCAO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_INFO_SOCIAL_OPCAO] ON [QUESTIONARIO].[INFO_SOCIAL_OPCAO]
(
	[ID_INFO_SOCIAL_TOPICO] ASC,
	[ID_INFO_SOCIAL_OPCAO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_INFO_SOCIAL_OPCAO_ORDEM] ON [QUESTIONARIO].[INFO_SOCIAL_OPCAO]
(
	[ID_INFO_SOCIAL_TOPICO] ASC,
	[ORDEM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[INFO_SOCIAL_FOLHA_RESPOSTA]
-- --------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [QUESTIONARIO].[INFO_SOCIAL_FOLHA_RESPOSTA](
	[ID_INFO_SOCIAL_FOLHA_RESPOSTA] [int] IDENTITY(1,1) NOT NULL,
	[ID_PESSOA] [int] NOT NULL,
	[DATA_CONFIRMACAO] [datetime] NOT NULL,
 CONSTRAINT [PK_INFO_SOCIAL_FOLHA_RESPOSTA] PRIMARY KEY CLUSTERED
(
	[ID_INFO_SOCIAL_FOLHA_RESPOSTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_INFO_SOCIAL_FOLHA_RESPOSTA] ON [QUESTIONARIO].[INFO_SOCIAL_FOLHA_RESPOSTA]
(
	[ID_PESSOA] ASC,
	[ID_INFO_SOCIAL_FOLHA_RESPOSTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

-- --------------------------------------------------------------------------------------------
-- [QUESTIONARIO].[INFO_SOCIAL_RESULTADO]
-- --------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [QUESTIONARIO].[INFO_SOCIAL_RESULTADO](
	[ID_INFO_SOCIAL_FOLHA_RESPOSTA] [int] NOT NULL,
	[ID_INFO_SOCIAL_OPCAO] [int] NOT NULL,
	[RESPOSTA_COMPLEMENTAR] [varchar](400) NULL,
 CONSTRAINT [PK_INFO_SOCIAL_RESULTADO] PRIMARY KEY CLUSTERED
(
	[ID_INFO_SOCIAL_FOLHA_RESPOSTA] ASC,
	[ID_INFO_SOCIAL_OPCAO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

-- --------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------