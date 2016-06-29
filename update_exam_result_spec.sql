create or replace package update_exam_result
as
procedure marks(Student_Id varchar2,Subject$Id varchar2,new_marks number);
procedure corrected_by(Student_Id varchar2,Subject$Id varchar2,corr_by varchar2);
end;
/
