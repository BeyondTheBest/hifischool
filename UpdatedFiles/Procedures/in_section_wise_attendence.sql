create or replace procedure in_section_attendence(Attendence_Id varchar2,Class_Id varchar2,Student_No varchar2,Day date,Present varchar2,Recorded_By varchar2)
is
begin
insert into section_wise_attendence values('Section_Attendence'||Sec_Att_Id.nextval,Attendence_Id,Class_Id,Student_No,Day,Present,Recorded_By,user,sysdate,user,sysdate);
commit;
end;
/
