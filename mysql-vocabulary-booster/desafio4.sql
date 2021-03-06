SELECT A.JOB_TITLE AS Cargo, ROUND(AVG(B.SALARY), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(B.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(B.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(B.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN ROUND(AVG(B.SALARY), 2) > 10500 THEN 'CEO' END
AS 'Senioridade'
FROM hr.jobs AS A
INNER JOIN hr.employees AS B
ON A.JOB_ID = B.JOB_ID
GROUP BY Cargo
ORDER BY ROUND(AVG(B.SALARY), 2), Cargo;
