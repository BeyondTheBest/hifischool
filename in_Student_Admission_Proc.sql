create or replace procedure in_Student_Admission(Student_Name varchar2,Father_Name varchar2,Mother_Name varchar2,DOB date,Address varchar2)
is
begin
insert into student values(to_char(sysdate,'YY')||'HIFI'||Student_No_seq.nextval,Student_Name,Father_Name,Mother_Name,DOB,sysdate,Address,Admission_No_Seq.nextval,user,sysdate,user,sysdate);
commit;
end;
/