
-- CURSORES EXPLICITOS
-- PRINCIPALES HERRAMINTAS 
/*
	* ULILES PARA GESTIONAR GRANDES CANTIDADES DE DATOS
	* ESTA FORMADO POR UN CONJUNTO DE REGISTRO DEVUELTOS POR UNA INSTRUCCION 
	  SQL DE TIPO SELECT
	* SON SEGMENTOS DE MEMORIA UTILIZADOS PARA REALIZAR OPERACIONES CON LAS 
	  FILAS DE DATOS RECUPERADOS.
*/
-- TIPOS DE CURSORES
	--CURSORES IMPLICITOS
/*
	* DEBEN DEVOLVER UNA SOLA FILA, SINO DELVOLVERA ERROR.
EJEMPLO DE CURSOR IMPLICITO
*/
DECLARE
	-- %TYPE = COPIA EL FORMATO QUE TIENE EL CAMPO EN LA BASE DE DATOS 
	lsalario  empleados.salario%TYPE
	lcedula  empleados.cedula%TYPE
BEGIN
	SELECT salario, cedula
	INTO lsalario, lcedula
	FROM empleados
	WHERE nombre = 'Juan'
	AND apellidos = 'Rojas Comas';
EXCEPTION
  WHEN OTHERS THEN
    NULL;
END;

--CURSORES EXPLICITOS
/*
	* SE UTILIZAN SI LA SENTENCIA SELECT DEVUELVE VARIOS REGISTROS.
	* SE DEFINE COMO CAULQUIER OTRA VARIABLE Y ADMITEN PARAMETROS
	* OPERACIONES BASICAS:
		- Declaración: CURSOR <c_nombre> IS <SELECT>
		- Apertura: OPEN <c_nombre>
		- Recogida: FETCH <c_nombre> INTO (<var>|<lista_v>)
		- Cierre: CLOSE <c_nombre>
EJEMPLO DE CURSOR EXPLICITOS
*/
-- crear un procedimiento que saque por consola un informe de todas las reservas penalizadas

CREATE OR REPLACE PROCEDURE Infrorme_Penalizados
AS
	CURSOR c_penalizados IS
		SELECT * FROM reservas
		WHERE periodo = 'Devuelto - Con penalización';
	/*%ROWTYPE = creo una fila con el mismo tipo de datos que tiene esos campos*/
	v_reg_reserva c_penalizados%ROWTYPE;
BEGIN
	OPEN c_penalizados
	FETCH c_penalizados INTO v_reg_reserva;
	/* %FOUND = mientras exista registro repite este bucle WHILE */
	WHILE c_penalizados%FOUND LOOP
		dbms_output.put_line('El usuario con id:' ||
			v_reg_reserva.id_usuario||' devolvio el equipo '||
			v_reg_reserva.id||' con peanlización');
		FETCH c_penalizados INTO v_reg_reserva;
	END LOOP;
	CLOSE c_penalizados;
EXCEPTION
  WHEN OTHERS THEN
    NULL;
END;
-- ATRIBUTOS DEL CURSOR 
/*
	*PARA CONTROLAR LA EJECUCION DE UN CURSOR EXPLICITO:
		- %ISOPEN = devuelve "true" si el curso esta abierto
		- %FOUND = devuelve "true" si el registro fue satisfactoriamente procesada
		- %NOTFOUND = devulve "true" si el registro no puede ser procesado.
		  normalmente esto ocurre cuando ya se han procesado todos los
		  registro devuelto por el cursor.
		- %ROWCOUNT = devuelve el numero de registro que han sido procesado
		  hasta ese momento.
*/
