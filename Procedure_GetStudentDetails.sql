create or replace procedure getStudentDetails(Student_Id varchar2,result out student%rowtype)
is
begin
select * into result
from student
where Student_No=Student_Id;
dbms_output.put_line(result.Student_No||chr(10)||result.Student_Name||chr(10)||result.Father_Name||chr(10)||result.Mother_Name||chr(10)||result.DOB||chr(10)||result.DOJ||chr(10)||result.Address||chr(10)||result.Admission_No);
exception
when no_data_found then
dbms_output.put_line('Wrong Entry Please Try Again');
end;
/

--set serveroutput on;

/* --Execution process--
declare
Student_Id student.Student_No%type;
result student%rowtype;
begin
Student_Id:='&Student_No';
getStudentDetails(Student_Id,result);
end;
*/