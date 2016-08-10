create or replace procedure in_teacher_attendence(Teacher_Id varchar2,Year number,Month number,Day number,Present char,If_Leave_Approved_By varchar2,Recorded_By varchar2)
is
begin
insert into teacher_attendence values('Teacher_Att'||Teacher_Att_Id.nextval,Teacher_Id,Year,Month,Day,Present,If_Leave_Approved_By,Recorded_By,user,sysdate,user,sysdate);
commit;
end;
/
