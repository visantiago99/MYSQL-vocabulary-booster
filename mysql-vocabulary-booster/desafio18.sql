SELECT CONCAT(e.FIRST_NAME, ' ' , e.LAST_NAME) as 'Nome completo',
DATE_FORMAT(jh.START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(jh.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE)/365.25, 2) AS 'Anos trabalhados'
FROM hr.employees AS e,
hr.job_history AS jh
WHERE e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
