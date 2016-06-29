create or replace package body update_Student
as
procedure Student_Name(Student_Id varchar2,New_Name varchar2)
is
begin
update student
set Student_Name=New_Name,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Student_Name;

procedure Father_Name(Student_Id varchar2,New_Name varchar2)
is
begin
update student
set Father_Name=New_Name,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Father_Name;

procedure Mother_Name(Student_Id varchar2,New_Name varchar2)
is
begin
update student
set Mother_Name=New_Name,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Mother_Name;

procedure DateofBirth(Student_Id varchar2,New_DOB date)
is
begin
update student
set DOB=New_DOB,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end DateofBirth;

procedure DateofjOin(Student_Id varchar2,New_DOJ date)
is
begin
update student
set DOJ=New_DOJ,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end DateofJoin;

procedure Address(Student_Id varchar2,New_Address varchar2)
is
begin
update student
set Address=New_Address,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Address;

procedure Admission_No(Student_Id varchar2,New_Admission_No number)
is
begin
update student
set Admission_No=New_Admission_No,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Admission_No;
end update_student;
/