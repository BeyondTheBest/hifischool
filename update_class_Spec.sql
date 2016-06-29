create or replace package update_class
as
procedure Class_No(Class$Id varchar2,New_No number);
procedure Class_Name(Class$Id varchar2,New_Name varchar2);
procedure Section_Name(Class$Id varchar2,New_Name varchar2);
procedure Section_Teacher(Class$Id varchar2,New_Teacher varchar2);
procedure Section_Incharge(Class$Id varchar2,New_Incharge varchar2);
procedure Section_Strength(Class$Id varchar2,Strength number);
procedure Room_No(Class$Id varchar2,New_No number);
procedure year(Class$Id varchar2,New_Year number);
end;
/
