
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

DECLARE
	CURSOR c_nuevo IS
		SELECT salario, cedula
		FROM empleados
	r_nuevo c_nuevo%ROWTYPE;
BEGIN
	FOR r_nuevo IN c_nuevo LOOP
		dbms_output.put_line(r_nuevo.cedula||' '||r_nuevo.salario);
	END LOOP;
EXCEPTION
  WHEN OTHERS THEN
    NULL;
END;


--crea un procedimiento que saque por consola un informe de todas las reservas que tienr un usuario que se pasa por parametro .
CREATE OR REPLACE PROCEDURE Informe_reservas(usr reserva.ID_Usauario%TYPE)
IS
	CURSOR c_info IS
		SELECT * FROM reserva
		WHERE id_usuario=usr;
	nom usuario.nombre%TYPE;
	estado varchar2(30);
BEGIN
	SELECT nombre INTO nom FROM usuario
	WHERE id_usuario=usr;
	dbms_output.put_line('Informe de reserv del usuario: '|| nom);
	dbms_output.put_line('-------------------------------------------');
	FOR r_info in c_info LOOP
		IF r_info.fecha_fin IS NULL THEN
			estado := 'Pendiente de devolución';
		ELSE
			estado := r_info.periodo;
		END IF;
		dbms_output.put_line(c_info%ROWCOUNT||' .- El equipo id '||
			r_info.id ||' está en estado: '||estado);
	END LOOP;
	dbms_output.put_line('----------- FIN DEL INFORME ---------------');
EXCEPTION
  WHEN OTHERS THEN
    NULL;
END;  

-- CURSORES CON PARAMETROS
DECLARE
	CURSOR c_empleado(p_nombre in varchar2) IS
	SELECT salario, cedula 
	FROM empleados
	WHERE nombre = p_nombre;
	r_empleado c_empleado%ROWTYPE;
	v_nombre varchar2(20);
BEGIN
	v_nombre := 'Juan';
	dbms_output.put_line('Sueldo de los empleados con nombre'|| v_nombre);
	FOR r_empleado IN c_empleado(v_nombre)LOOP
		dbms_output.put_line(r_empleado.cedula||' '|| r_empleado.salario);
	END LOOP;

EXCEPTION
  WHEN OTHERS THEN
    NULL;
END;