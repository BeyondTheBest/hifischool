create or replace procedure proc_getStudentClassDetails(Student_Id varchar2,result out sys_refcursor)
is
D v_Class_Details%rowtype;
begin
open result for select * from v_class_Details
where Student_No=Student_Id;
loop
fetch result into D;
exit when result%notfound;
dbms_output.put_line(D.Student_No||chr(10)||D.Student_Name||chr(10)||D.Class_Name||chr(10)||D.Section_Name||chr(10)||D.Section_Teacher||chr(10)||D.Section_Incharge||chr(10)||D.Room_No||chr(10)||D.Year||chr(10)||D.Term_Name||chr(10)||D.Term_Duration||chr(10)||D.Term_Start_Date||chr(10)||D.Term_End_Date);
end loop;
close result;
end;

--set serveroutput on;

/*--execution process---
declare
Student_Id VARCHAR2(20);
result sys_refcursor;
begin
Student_Id:='&Student_No';
proc_getStudentClassDetails(Student_Id,result);
end;
