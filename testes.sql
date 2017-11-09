-- ------------------------------------------------------------------
-- QUESTIONARIO.VW_QUESTIONARIO_OPCOES_EXIBIR
SELECT
	*
FROM
	QUESTIONARIO.VW_QUESTIONARIO_OPCOES_EXIBIR
ORDER BY
	ID_INFO_SOCIAL_QUESTIONARIO
	,CATEGORIA_ORDEM
	,TOPICO_ORDEM
	,OPCAO_ORDEM;
-- ------------------------------------------------------------------


-- ------------------------------------------------------------------
-- QUESTIONARIO.VW_FAMILIA_EXIBIR
SELECT
	*
FROM
	QUESTIONARIO.VW_FAMILIA_EXIBIR
ORDER BY
	ID_FAMILIA
	,CPF;
-- ------------------------------------------------------------------


-- ------------------------------------------------------------------
-- QUESTIONARIO.VW_FOLHA_RESPOSTA_EXIBIR
SELECT
	*
FROM
	QUESTIONARIO.VW_FOLHA_RESPOSTA_EXIBIR

-- APENAS AS ULTIMAS FOLHAS PREENCHIDAS DE CADA PESSOA
WHERE
	ID_INFO_SOCIAL_FOLHA_RESPOSTA IN (
		SELECT TOP 1
			ID_INFO_SOCIAL_FOLHA_RESPOSTA
		FROM
			QUESTIONARIO.VW_FOLHA_RESPOSTA_EXIBIR
		GROUP BY
			ID_PESSOA
			,ID_INFO_SOCIAL_FOLHA_RESPOSTA
		ORDER BY
			ID_INFO_SOCIAL_FOLHA_RESPOSTA DESC
	)

ORDER BY
	ID_PESSOA
--	,ID_INFO_SOCIAL_FOLHA_RESPOSTA DESC
	,ID_INFO_SOCIAL_QUESTIONARIO
	,CATEGORIA_ORDEM
	,TOPICO_ORDEM
	,OPCAO_ORDEM;
-- ------------------------------------------------------------------