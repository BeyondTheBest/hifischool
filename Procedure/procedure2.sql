create or replace procedure getStudentDetails(student_Id in varchar2)
as
details student%rowtype;
begin
if Student_Id IS NOT NULL then
select * into details from student where Student_No=Student_Id;
else
select * into details from student;
end if;
end;
/

/*
Procedure created.

SQL>
SQL> exec getStudentDetails('');
BEGIN getStudentDetails(''); END;

*
ERROR at line 1:
ORA-01422: exact fetch returns more than requested number of rows
ORA-06512: at "RAJUGOUD.GETSTUDENTDETAILS", line 8
ORA-06512: at line 1


SQL> exec getStudentDetails('16HIFI1');

PL/SQL procedure successfully completed.
*/