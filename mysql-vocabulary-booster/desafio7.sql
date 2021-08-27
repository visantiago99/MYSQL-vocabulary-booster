SELECT UCASE(CONCAT(E.first_name, ' ', E.last_name)) AS 'Nome completo',
JH.START_DATE AS 'Data de início',
E.SALARY AS 'Salário'
FROM hr.employees AS E
INNER JOIN hr.job_history AS JH
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE MONTH(JH.START_DATE) IN(1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
