create or replace package body update_exam_result
as
procedure marks(Student_Id varchar2,Subject$Id varchar2,new_marks number)
is
begin
update marks
set Subject_Marks_Secured=new_Marks,Last_Updated_By=user,Last_Updation_Date=sysdate
where Student_No=Student_Id and Subject_Id=Subject$Id;
commit;
end marks;

procedure corrected_by(Student_Id varchar2,Subject$Id varchar2,corr_by varchar2)
is
begin
update marks
set Answer_Sheet_Corrected_By=corr_by,Last_Updated_By=user,Last_Updation_Date=sysdate
where Student_No=Student_Id and Subject_Id=Subject$Id;
commit;
end corrected_by;
end update_exam_result;
/
