DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email varchar(25))

BEGIN
    SELECT CONCAT(e.FIRST_NAME,' ', e.LAST_NAME) AS 'Nome completo',
    DEPARTMENT_NAME AS 'Departamento',
    JOB_TITLE AS 'Cargo' 
    FROM hr.employees AS e
    INNER JOIN hr.departments AS d
    INNER JOIN hr.job_history AS jh
    INNER JOIN hr.jobs AS j
    ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID AND d.DEPARTMENT_ID = jh.DEPARTMENT_ID AND j.JOB_ID = jh.JOB_ID
    WHERE e.EMAIL = email
    ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
