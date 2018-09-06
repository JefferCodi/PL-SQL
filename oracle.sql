
create table DIRECCION(
	ID_DIRECCION NCHAR(7) NOT NULL PRIMARY KEY,
	DISTRITO NVARCHAR(50) NOT NULL,
	DIRECCION NVARCHAR(50) NOT NULL
);
 
create table PERSONA(
	DNI CHAR(10) NOT NULL PRIMARY KEY,
	NOMBRE VARCHAR(50) NOT NULL,
	PATERNO VARCHAR(50) NOT NULL,
	MATERNO VARCHAR(50) NOT NULL,
	FECHA_NACIMIENTO DATE NOT NULL,
	SEXO CHAR(1) CONSTRAINT CH_SEXO CHECK(SEXO IN ('M', 'F')),
	CONSTRAINT FK_DNI
);
create table EMAIL(
	ID_EMAIL NCHAR(7),
	DNI NCHAR(10),
	EMAIL NVARCHAR2(30) NOT NULL,
	DESCRIPCION NVARCHAR2(30) NOT NULL,
	CONSTRAINT PK_CODIGO
	PRIMARY KEY(ID_EMAIL, DNI)
);
create table CARGO(
	ID_CARGO CHAR(7),
	CARGO VARCHAR(30) NOT NULL,
	SUELDO NUMBER(6,4) CONSTRAINT CH_SUELDO CHECK(SUELDO BETWEEN 100.00 AND 4000.40),
	CONSTRAINT PK_CARGO
	PRIMARY KEY(ID_CARGO)
);
create table TELEFONO(
	ID_TELEFONO CHAR(7),
	DNI CHAR(10),
	MARCA NVARCHAR2(20),
	TELEFONO CHAR(10) NOT NULL,
	CONSTRAINT PK_TELEFONO
	PRIMARY KEY(ID_TELEFONO, DNI)
);
set serveroutput on format wrapped;
DECLARE
	MiVariableCaracter VARCHAR2(20);
	MiVariableNumero NUMBER(10,2):=50;
	MiVariableFecha DATE;
BEGIN
 --NUEVO CODIGO
	MiVariableCaracter:='CARLOS';
	dbms_output.put_line('Hola'||MiVariableCaracter);
	dbms_output.put_line('MiVariableNumero = '|| to_char(MiVariableNumero));
	MiVariableFecha:=sysdate + 7;
	dbms_output.put_line('Hoy es '||to_char(sysdate,'dd/mm/yyyy'))||
						', dentro de una semana sera'||
						to_char(MiVariableFecha,'dd/mm/yyyy');
	DECLARE
END;


/*
LOOP -> NOSOTRO DEFINIMOS CUANDO SE VA A SALIR DEL BUCLE
FOR
WHILE
*/

DECLARE
	numeroActual NUMBER(2):=5;
	numeroResultado NUMBER(2);
BEGIN
	for i in 1..10 LOOP
	numeroResultado:=numeroActual * i;
	dbms_output.put_line(to_char(numeroActual)||' X '||to_char(i)||' = 'to_char(numeroResultado));
	ENDLOOP
END;



DECLARE
nombreEmpleado empleado.name%type;
apellidoEmpleado empleado.last_name%type;
salarioEmpleado empleado.salary%type;

BEGIN
	LOOP
		i:=i +1; 
		select name, last_name, salary
		into nombreEmpleado,apellidoEmpleado,salarioEmpleado
		from empleado;

		dbms_output.put_line('El empleado '||nombreEmpleado||' '||
							apellidoEmpleado||' gana $'||
							to_char(salarioEmpleado));
		if i=5 then
			exit;
		endif;

	ENDLOOP
END;


CREATE FUNCTION fn_ObtenerPrecioPromedio
	(codigoProducto IN NUMBER)
RETURN NUMBER
AS 
	precioPromedio number(18, 6);
BEGIN
	SELECT AVG(campo)
	INTO precioPromedio
	FROM tabla
	WHERE campo_id = codigoProducto;
	RETURN precioPromedio;
END;