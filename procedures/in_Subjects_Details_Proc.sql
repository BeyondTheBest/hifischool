create or replace procedure in_Subjects_Details(Subject_Name varchar2,max_marks number)
is
begin
insert into subjects values(substr(subject_Name,1,3)||'_'||subject_Id.nextval,Subject_Name,max_marks,user,sysdate,user,sysdate);
commit;
end;
/


execute in_Subjects_Details('Telugu',100);

execute in_Subjects_Details('Hindi',100);

execute in_Subjects_Details('English',100);

execute in_Subjects_Details('Mathmetics',100);

execute in_Subjects_Details('Science',100);

execute in_Subjects_Details('Social',100);
