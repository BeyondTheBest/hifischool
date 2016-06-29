create or replace procedure Proc_getTeacher_attendence(Teacher$Id varchar2,Details out v_teacher_attendence%rowtype)
is
cursor c_atte is select * from v_teacher_attendence where teacher_Id=Teacher$Id;
begin
open c_atte;
loop
fetch c_atte into Details;
exit when c_atte%notfound;
dbms_output.put_line(Details.Teacher_Id||CHR(10)||Details.Teacher_Name||CHR(10)||Details.Year||CHR(10)||Details.Month||CHR(10)||Details.Day||CHR(10)||Details.Present||CHR(10)||Details.If_Leave_Approved_By||CHR(10)||Details.Recorded_By||CHR(10)||Details.Created_By||CHR(10)||Details.Creation_Date||CHR(10)||Details.Last_Updated_By||CHR(10)||Details.Last_Updation_Date);
end loop;
end;
/


/*-----execution Process---
declare
details v_teacher_attendence%rowtype;
Teacher varchar2(20);
begin
Teacher:='&Teacher_Id';
Proc_getTeacher_attendence(teacher,Details);
end;
/
*/