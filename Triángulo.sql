CREATE DEFINER=`root`@`localhost` PROCEDURE `crearTriangulos`()
BEGIN
	-- Contador para contar hasta 30.
	DECLARE c TINYINT;
	
    DROP TABLE IF EXISTS TRIANGULO;
    CREATE TABLE TRIANGULO (
		ID INT PRIMARY KEY,
        LADO1 INT,
        LADO2 INT,
        LADO3 INT
    );
	
   	SET c=0;
    START TRANSACTION;
   	WHILE c<30 DO
      	SET c=c+1;
        -- Añadir un triangulo
        INSERT INTO TRIANGULO VALUES
        (
			c, 
            FLOOR(RAND()*10+1), 
            FLOOR(RAND()*10+1), 
            FLOOR(RAND()*10+1)
		);
   	END WHILE;
    COMMIT;
END