create or replace procedure in_teacher_to_class(Teacher_Id varchar2,Class_Id varchar2,Assigned_By varchar2,Assigned_Date date,Year varchar2,Assignment_Start_Date date,Assignment_End_Date date)
is
begin
insert into teacher_to_class values('class_teacher'||TTC_Id.nextval,Teacher_Id,Class_Id,Assigned_By,Assigned_Date,Year,Assignment_Start_Date,Assignment_End_Date,user,sysdate,user,sysdate);
commit;
end;
/