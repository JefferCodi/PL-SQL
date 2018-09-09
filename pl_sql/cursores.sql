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