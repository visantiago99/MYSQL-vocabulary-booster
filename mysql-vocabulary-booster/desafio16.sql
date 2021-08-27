USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailFuncionario VARCHAR(50))
RETURNS INT READS SQL DATA 
BEGIN
DECLARE quantity DOUBLE;
SELECT COUNT(E.EMPLOYEE_ID) FROM job_history AS JH
INNER JOIN employees AS E
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE E.EMAIL = emailFuncionario
INTO quantity;
RETURN quantity;
END $$
DELIMITER ;
