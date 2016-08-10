create or replace package body update_Attendence
as
procedure day(Student_Id varchar2,day date)
is
begin
update section_wise_attendence
set day=day,Last_Updated_By=user,Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end day;

procedure present(Student_Id varchar2,present varchar2)
is
begin
update section_wise_attendence
set Present=present,Last_Updated_By=user,Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end present;

procedure Recorded_By(Student_Id varchar2,record varchar2)
is
begin
update section_wise_attendence
set Recorded_By=record,Last_Updated_By=user,Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Recorded_By;
end update_Attendence;