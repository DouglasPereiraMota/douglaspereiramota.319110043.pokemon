
USE pokedex;

SELECT
	MIN(total) AS 'min_total',
	MAX(total) AS 'max_total',
	MIN(hp) AS 'min_hp',
	MAX(hp) AS 'max_hp',
	MIN(ataque) AS 'min_ataque',
	MAX(ataque) AS 'max_ataque',
	MIN(defesa) AS 'min_defesa',
	MAX(defesa) AS 'max_defesa',
	MIN(ataque_especial) AS 'min_ataque_especial',
	MAX(ataque_especial) AS 'max_ataque_especial',
	MIN(defesa_especial) AS 'min_defesa_especial',
	MAX(defesa_especial) AS 'max_defesa_especial',
	MIN(velocidade) AS 'min_velocidade',
	MAX(velocidade) AS 'max_velocidade',
	MIN(taxa_captura) AS 'min_taxa_captura',
	MAX(taxa_captura) AS 'max_taxa_captura'
FROM
	Pokemon
;



USE pokedex;

SELECT
	COUNT(DISTINCT cor) AS 'quantidade'
FROM
	Pokemon
;


USE pokedex;

SELECT
	AVG(DISTINCT peso_kg) AS 'peso_medio'
FROM
	Pokemon
;

USE pokedex;

SELECT
	SUM(altura_m) AS 'total'
FROM
	Pokemon
;


USE pokedex;

SELECT
	COUNT(*) AS 'quantidade'
FROM
	Pokemon
;


USE pokedex;

SELECT
	AVG(altura_m) AS 'atura_m_media'
FROM
	Pokemon
;

USE pokedex;

SELECT
	STD(hp) AS 'desvio_padrao'
FROM
	Pokemon
;


USE pokedex;

SELECT
	COUNT(*) AS 'quantidade'
FROM
	Pokemon
WHERE tipo2 IS NOT NULL
;


USE pokedex;

SELECT
	COUNT(DISTINCT tipo1) AS 'quantidade'
FROM
	Pokemon
;


USE pokedex;

SELECT
	SUM(peso_kg) AS 'total'
FROM
	Pokemon
;


USE pokedex;

SELECT
	lendario,
	COUNT(lendario) AS 'quantidade'
FROM
	Pokemon
GROUP BY lendario
ORDER BY COUNT(lendario) DESC
;


USE pokedex;

SELECT
	cor,
	COUNT(cor) AS 'quantidade'
FROM
	Pokemon
GROUP BY cor
ORDER BY COUNT(cor) DESC
;



USE pokedex;

SELECT
	tipo1,
	AVG(peso_kg) AS 'peso_medio',
	AVG(altura_m) AS 'altura_m_medio'
FROM
	Pokemon
GROUP BY tipo1
ORDER BY AVG(peso_kg) DESC, AVG(altura_m) DESC
;



USE pokedex;

SELECT
	cor,
	AVG(taxa_captura) AS 'taxa_captura_medio'
FROM
	Pokemon
WHERE lendario = 1
GROUP BY cor
ORDER BY AVG(taxa_captura) DESC
;



USE pokedex;

SELECT
	tipo1,
	AVG(taxa_captura) AS 'taxa_captura_medio'
FROM
	Pokemon
WHERE 'taxa_captura_medio' > 100
GROUP BY tipo1
ORDER BY taxa_captura_medio DESC
;



USE pokedex;

SELECT
	cor,
	AVG(total) AS 'total_medio'
FROM
	Pokemon
WHERE lendario = 0 AND 'total_medio' < 400
GROUP BY cor
ORDER BY AVG(total) DESC
;



USE pokedex;

SELECT
	geracao,
	Max(total) AS 'total_max'
FROM
	Pokemon
GROUP BY geracao
ORDER BY max(total) DESC
;



USE pokedex;

SELECT
	geracao,
	COUNT(lendario) AS 'quantidade'
FROM
	Pokemon
WHERE lendario = 1
GROUP BY geracao
ORDER BY COUNT(lendario) DESC
;


USE pokedex;

SELECT
	geracao,
	COUNT(tipo2) AS 'quantidade',
	AVG(taxa_captura) AS 'taxa_captura_media'
FROM
	Pokemon
WHERE tipo2 IS NOT NULL
GROUP BY geracao
ORDER BY COUNT(tipo2) DESC
;


USE pokedex;

SELECT
	COUNT(DISTINCT cor) AS 'quantidade'
FROM
	Pokemon
ORDER BY COUNT(cor) DESC
;

