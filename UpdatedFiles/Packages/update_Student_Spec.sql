create or replace package update_Student
as
procedure Student_Name(Student_Id varchar2,New_Name varchar2);
procedure Father_Name(Student_Id varchar2,New_Name varchar2);
procedure Mother_Name(Student_Id varchar2,New_Name varchar2);
procedure DateofBirth(Student_Id varchar2,New_DOB date);
procedure Dateofjoin(Student_Id varchar2,New_DOJ date);
procedure Address(Student_Id varchar2,New_Address varchar2);
procedure Admission_No(Student_Id varchar2,New_Admission_No number);
end;
/