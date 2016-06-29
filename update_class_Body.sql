create or replace package body update_class
as
procedure Class_No(Class$Id varchar2,New_no number)
is
begin
update class
set Class_No=New_No,Last_Updated_By=user,Last_Updation_Date=sysdate
where Class_Id=Class$Id;
commit;
end Class_No;

procedure Class_Name(Class$Id varchar2,New_Name varchar2)
is
begin
update class
set Class_Name=New_Name,Last_Updated_By=user,Last_Updation_Date=sysdate
where Class_Id=Class$Id;
commit;
end Class_Name;

procedure Section_Name(Class$Id varchar2,New_Name varchar2)
is
begin
update class
set Section_Name=New_Name,Last_Updated_By=user,Last_Updation_Date=sysdate
where Class_Id=Class$Id;
commit;
end Section_Name;

procedure Section_Teacher(Class$Id varchar2,New_Teacher varchar2)
is
begin
update class
set Section_Teacher=New_Teacher,Last_Updated_By=user,Last_Updation_Date=sysdate
where Class_Id=Class$Id;
commit;
end Section_Teacher;

procedure Section_Incharge(Class$Id varchar2,New_Incharge varchar2)
is
begin
update class
set Section_Incharge=New_Incharge,Last_Updated_By=user,Last_Updation_Date=sysdate
where Class_Id=Class$Id;
commit;
end Section_Incharge;

procedure Section_Strength(Class$Id varchar2,Strength number)
is
begin
update class
set Section_Strength=Strength,Last_Updated_By=user,Last_Updation_Date=sysdate
where Class_Id=Class$Id;
commit;
end Section_Strength;

procedure Room_No(Class$Id varchar2,New_No number)
is
begin
update class
set Room_No=New_No,Last_Updated_By=user,Last_Updation_Date=sysdate
where Class_Id=Class$Id;
commit;
end Room_No;

procedure year(Class$Id varchar2,New_Year number)
is
begin
update class
set Year=New_Year,Last_Updated_By=user,Last_Updation_Date=sysdate
where Class_Id=Class$Id;
commit;
end year;
end update_class;
/