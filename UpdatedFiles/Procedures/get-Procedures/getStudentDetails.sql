create or replace procedure getStudentDetails(Student_Id varchar2)
    is
    results student%rowtype;
    begin
    StudentDetails(Student_Id,results);
    end;
    /