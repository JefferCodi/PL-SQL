DECLARE
CURSOR c_students IS
	SELECT first_name, last_name, current_credits
	FROM students 
	WHERE major = 'Computer Science';
BEGIN
  FOR r_students IN c_students LOOP
  	dbms_output.put_line(r_students.first_name||' '||r_students.last_name
  		||':'||r_students.current_credits);
  END LOOP;
END;

/*ejemplo de cursor pasando parametros*/
DECLARE
CURSOR c_students(p_major varchar2) IS
	SELECT first_name, last_name, current_credits
	FROM students 
	WHERE major = p_major;
BEGIN
  FOR r_students IN c_students('History') LOOP
  	dbms_output.put_line(r_students.first_name||' '||r_students.last_name
  		||':'||r_students.current_credits);
  END LOOP;
END;


/*ejemplos de cursores Explicito Imprimir la lista de estudiente por especialidad*/
DECLARE
CURSOR c_major IS
	SELECT distinct major
	FROM students;

CURSOR c_students(p_major varchar2) IS
	SELECT first_name, last_name, current_credits
	FROM students 
	WHERE major = p_major;
BEGIN
	FOR r_major IN c_major LOOP
		dbms_output.put_line(r_major.major);
		FOR r_students IN c_students(r_major.major) LOOP
			dbms_output.put_line(r_students.first_name||' '||r_students.last_name
				||':'||r_students.current_credits);
			dbms_output.put_line('');
		END LOOP;
	END LOOP;
END;
