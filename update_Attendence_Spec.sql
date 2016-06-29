create or replace package update_Attendence
as
procedure day(Student_Id varchar2,day date);
procedure present(Student_Id varchar2,present varchar2);
procedure recorded_By(Student_Id varchar2,record VARCHAR2);
end;