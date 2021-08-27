DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano( month INT, year INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) FROM employees
    WHERE YEAR(HIRE_DATE) = year AND MONTH(HIRE_DATE) = month
    INTO total;
    RETURN total;
END $$

DELIMITER ;
