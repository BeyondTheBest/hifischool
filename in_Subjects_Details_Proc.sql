create or replace procedure in_Subjects_Details_Proc(Subject_Name varchar2,max_marks number)
is
begin
insert into subjects values(substr(subject_Name,1,3)||'_'||seq_subject_Id.nextval,Subject_Name,max_marks,user,sysdate,user,sysdate);
commit;
end;
/


execute in_Subjects_Details_Proc('Telugu',100);

execute in_Subjects_Details_Proc('Hindi',100);

execute in_Subjects_Details_Proc('English',100);

execute in_Subjects_Details_Proc('Mathmetics',100);

execute in_Subjects_Details_Proc('Science',100);

execute in_Subjects_Details_Proc('Social',100);
