--USE DTIN
--GO

(
Select		o.name
			,o.schema_id
			,o.type
			,o.type_desc
			,o.create_date
			,o.modify_date
From		sys.objects o
Where		schema_name(o.schema_id)		Like 'QUESTIONARIO%'
--			And Not Exists (
--				Select		*
--				From		sys.indexes i
--				Where		o.object_id = i.object_id
--			)
Union
Select		i.name
			,o.schema_id
			,o.type
			,o.type_desc
			,o.create_date
			,o.modify_date
From		sys.objects o
			Inner Join sys.indexes i	On(o.object_id = i.object_id)
Where		schema_name(o.schema_id)		Like 'QUESTIONARIO%'
)
Order by	type_desc
			,name;



Select
	Count(C.COLUMN_NAME)	QTD_COLUNAS_TABELAS_VIEWS
From
	INFORMATION_SCHEMA.COLUMNS C
Where
	C.TABLE_CATALOG = 'QUESTIONARIO' -- the database
    AND C.TABLE_SCHEMA Like 'QUESTIONARIO%';



SELECT
	TableSchema = s.Name,
	RowCounts = SUM(p.rows)
FROM
	sys.tables t
	INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
	INNER JOIN sys.indexes i ON t.OBJECT_ID = i.object_id
	INNER JOIN sys.partitions p ON i.object_id = p.OBJECT_ID AND i.index_id = p.index_id
WHERE
	t.is_ms_shipped = 0
	AND s.Name = 'QUESTIONARIO'
GROUP BY
	s.Name;
