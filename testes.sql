-- ------------------------------------------------------------------
-- QUESTIONARIO.VW_QUESTIONARIO_CATEGORIA_EXIBIR
SELECT
	*
FROM
	QUESTIONARIO.VW_QUESTIONARIO_CATEGORIA_EXIBIR
ORDER BY
	ID_INFO_SOCIAL_QUESTIONARIO
	,CATEGORIA_ORDEM;
-- ------------------------------------------------------------------


-- ------------------------------------------------------------------
-- QUESTIONARIO.VW_QUESTIONARIO_TOPICO_EXIBIR

-- modo simples (subtopicos ja ordenados por TOPICO_ORDEM) ---------
SELECT
	*
FROM
	QUESTIONARIO.VW_QUESTIONARIO_TOPICO_EXIBIR
ORDER BY
	ID_INFO_SOCIAL_QUESTIONARIO
	,CATEGORIA_ORDEM
	,TOPICO_ORDEM;
-- -------------------------------------------------------------

-- modo chamada dupla ------------------------------------------
SELECT	-- RETORNA APENAS TOPICOS INICIAIS
	*
FROM
	QUESTIONARIO.VW_QUESTIONARIO_TOPICO_EXIBIR
WHERE
	ID_INFO_SOCIAL_TOPICO_PAI_ABERTO IS NULL
ORDER BY
	ID_INFO_SOCIAL_QUESTIONARIO
	,CATEGORIA_ORDEM
	,TOPICO_ORDEM;

SELECT	-- RETORNA APENAS SUBTOPICOS RELACIONADOS
	*
FROM
	QUESTIONARIO.VW_QUESTIONARIO_TOPICO_EXIBIR
WHERE
	ID_INFO_SOCIAL_TOPICO_PAI_ABERTO IS NOT NULL	-- ID_INFO_SOCIAL_TOPICO_PAI_ABERTO = ID_TOPICO_CORRENTE
ORDER BY
	ID_INFO_SOCIAL_QUESTIONARIO
	,CATEGORIA_ORDEM
	,TOPICO_ORDEM;
-- -------------------------------------------------------------
-- ------------------------------------------------------------------


-- ------------------------------------------------------------------
-- QUESTIONARIO.VW_QUESTIONARIO_OPCAO_EXIBIR

-- modo simples (subtopicos ja ordenados por TOPICO_ORDEM) ---------
SELECT
	*
FROM
	QUESTIONARIO.VW_QUESTIONARIO_OPCAO_EXIBIR
ORDER BY
	ID_INFO_SOCIAL_QUESTIONARIO
	,CATEGORIA_ORDEM
	,TOPICO_ORDEM
	,OPCAO_ORDEM;
-- -------------------------------------------------------------

-- modo chamada dupla ------------------------------------------
SELECT	-- RETORNA APENAS TOPICOS INICIAIS
	*
FROM
	QUESTIONARIO.VW_QUESTIONARIO_OPCAO_EXIBIR
WHERE
	ID_INFO_SOCIAL_TOPICO_PAI_ABERTO IS NULL
ORDER BY
	ID_INFO_SOCIAL_QUESTIONARIO
	,CATEGORIA_ORDEM
	,TOPICO_ORDEM
	,OPCAO_ORDEM;

SELECT	-- RETORNA APENAS SUBTOPICOS RELACIONADOS
	*
FROM
	QUESTIONARIO.VW_QUESTIONARIO_OPCAO_EXIBIR
WHERE
	ID_INFO_SOCIAL_TOPICO_PAI_ABERTO IS NOT NULL	-- ID_INFO_SOCIAL_TOPICO_PAI_ABERTO = ID_TOPICO_CORRENTE
ORDER BY
	ID_INFO_SOCIAL_QUESTIONARIO
	,CATEGORIA_ORDEM
	,TOPICO_ORDEM
	,OPCAO_ORDEM;
-- -------------------------------------------------------------
-- ------------------------------------------------------------------


-- ------------------------------------------------------------------
-- QUESTIONARIO.VW_PESSOA_EXIBIR
SELECT
	*
FROM
	QUESTIONARIO.VW_PESSOA_EXIBIR
ORDER BY
	ID_FAMILIA
	,CPF;
-- ------------------------------------------------------------------


-- ------------------------------------------------------------------
-- QUESTIONARIO.VW_FOLHA_RESPOSTA_EXIBIR
SELECT
	A.*
FROM
	QUESTIONARIO.VW_FOLHA_RESPOSTA_EXIBIR A

-- APENAS AS ULTIMAS FOLHAS PREENCHIDAS DE CADA PESSOA POR QUESTIONARIO
WHERE
	A.ID_INFO_SOCIAL_FOLHA_RESPOSTA IN (
		SELECT TOP 1
			B.ID_INFO_SOCIAL_FOLHA_RESPOSTA
		FROM
			QUESTIONARIO.VW_FOLHA_RESPOSTA_EXIBIR B
		WHERE
			B.ID_PESSOA = A.ID_PESSOA
			AND B.ID_INFO_SOCIAL_QUESTIONARIO = A.ID_INFO_SOCIAL_QUESTIONARIO
		GROUP BY
			B.ID_PESSOA
			,B.ID_INFO_SOCIAL_QUESTIONARIO
			,B.ID_INFO_SOCIAL_FOLHA_RESPOSTA
		ORDER BY
			B.ID_INFO_SOCIAL_FOLHA_RESPOSTA DESC
	)

ORDER BY
	A.ID_PESSOA
--	,A.ID_INFO_SOCIAL_FOLHA_RESPOSTA DESC
	,A.ID_INFO_SOCIAL_QUESTIONARIO
	,A.CATEGORIA_ORDEM
	,A.TOPICO_ORDEM
	,A.OPCAO_ORDEM;
-- ------------------------------------------------------------------


-- ------------------------------------------------------------------
-- QUESTIONARIO.VW_ANEXO_TOPICO_EXIBIR
SELECT
	A.*
FROM
	QUESTIONARIO.VW_ANEXO_TOPICO_EXIBIR A

-- APENAS OS ANEXOS DAS ULTIMAS FOLHAS PREENCHIDAS DE CADA PESSOA POR QUESTIONARIO
WHERE
	A.ID_INFO_SOCIAL_FOLHA_RESPOSTA IN (
		SELECT TOP 1
			B.ID_INFO_SOCIAL_FOLHA_RESPOSTA
		FROM
			QUESTIONARIO.VW_ANEXO_TOPICO_EXIBIR B
		WHERE
			B.ID_PESSOA = A.ID_PESSOA
			AND B.ID_INFO_SOCIAL_QUESTIONARIO = A.ID_INFO_SOCIAL_QUESTIONARIO
		GROUP BY
			B.ID_PESSOA
			,B.ID_INFO_SOCIAL_QUESTIONARIO
			,B.ID_INFO_SOCIAL_FOLHA_RESPOSTA
		ORDER BY
			B.ID_INFO_SOCIAL_FOLHA_RESPOSTA DESC
	)

ORDER BY
	A.ID_PESSOA
--	,A.ID_INFO_SOCIAL_FOLHA_RESPOSTA DESC
	,A.ID_INFO_SOCIAL_QUESTIONARIO
	,A.CATEGORIA_ORDEM
	,A.TOPICO_ORDEM;
-- ------------------------------------------------------------------