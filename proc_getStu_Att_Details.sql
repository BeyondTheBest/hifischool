create or replace procedure proc_getStu_Att_Details(Student_Id varchar2,result out v_attendence%rowtype)
is
cursor c_atte is select * from v_Attendence where student_No=Student_Id;
begin
open c_atte;
loop
fetch c_atte into result;
exit when c_atte%notfound;
dbms_output.put_line(result.Student_No||chr(10)||result.Student_Name||chr(10)||result.Class_Name||chr(10)||result.Section_Name||chr(10)||result.Year||chr(10)||result.Day||chr(10)||result.Present||chr(10)||result.Recorded_By);
end loop;
close c_atte;
end;
/


/*
declare
Student_Id student.Student_No%type;
result v_attendence%rowtype;
begin
Student_Id:='&Student_No';
proc_getStu_Att_Details(Student_Id,result);
end;
*/