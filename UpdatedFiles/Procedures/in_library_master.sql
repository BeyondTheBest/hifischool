create or replace procedure in_library_master(Arranged_Year varchar2,Rack_No varchar2,Book_Id_If_exists varchar2,Book_Name varchar2,Book_Category varchar2,Author varchar2,Book_Version varchar2,Useful_For_Section varchar2)
is
begin
insert into library_master values('HIFI_Library'||Library_Id.nextval,Arranged_Year,Rack_No,Book_Id_If_exists,Book_Name,Book_Category,Author,Book_Version,Useful_For_Section,user,sysdate,user,sysdate);
commit;
end;
/

