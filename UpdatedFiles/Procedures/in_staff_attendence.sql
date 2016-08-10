create or replace procedure in_staff_attendence(Staff_Id varchar2,Present char,If_Leave_Approved_By varchar2,Recorded_By varchar2)
is
begin
insert into staff_attendence values('staff_att_'||staff_att_id.nextval,Staff_Id,extract(year from sysdate),extract(month from sysdate),extract(day from sysdate),Present,If_Leave_Approved_By,Recorded_By,user,sysdate,user,sysdate);
commit;
end;
/
