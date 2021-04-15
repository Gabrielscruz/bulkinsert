
IF OBJECT_ID('TEMPDB..#BASE') IS NOT  NULL DROP TABLE #BASE

CREATE TABLE #BASE (
	 Cliente varchar(100)
	,Curso   varchar(100)
	,Valor_curso varchar(100)
)

BULK INSERT #BASE 
FROM 'C:\TesteDEV\Teste.csv'   -- CAMINHO DO ARQUIVO, PODE SER CSV OU TXT
WITH(
	  FIRSTROW = 2 ,           -- PARTIR DA SEGUNDA LINHA
      FIELDTERMINATOR = ';',   -- SEPARADOR POR PONTO E VIRGULA
      ROWTERMINATOR = '\n'     -- QUEBRAR POR LINHA 

)

SELECT * FROM #BASE