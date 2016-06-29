--*class_Name should be like "10th Class","9th Class","8th Class"...etc.

create or replace procedure in_Class_Details(Class_Name varchar2,section_Name varchar2,Section_Teacher varchar2,Section_Incharge varchar2,Section_Strength number,Room_No number,Year number)
is
begin
if Class_Name='10th Class' then
insert into class values(substr(Class_Name,1,4)||'_'||'HIFI'||'_'||Seq_Class_Id.nextval,seq_Class_No.nextval,Class_Name,Section_Name,Section_Teacher,Section_Incharge,Section_Strength,Room_No,Year,user,sysdate,user,sysdate);
else
insert into class values(substr(Class_Name,1,3)||'_'||'HIFI'||'_'||Seq_Class_Id.nextval,seq_Class_No.nextval,Class_Name,Section_Name,Section_Teacher,Section_Incharge,Section_Strength,Room_No,Year,user,sysdate,user,sysdate);
end if;
commit;
end;
/

