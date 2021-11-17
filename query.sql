SET SERVEROUTPUT ON
DECLARE
  n_students 	number(7);
  dept_name 	Department.name%type := 'CSE';
BEGIN
  SELECT COUNT(*) INTO n_students
    FROM Student s, Department d
	WHERE s.dept_id = d.id AND d.name LIKE dept_name;
  
  DBMS_OUPUT.PUT_LINE('# of students in ' || dept_name || ' dept: ' n_students);
EXCEPTION
  WHEN others THEN
	DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
\
