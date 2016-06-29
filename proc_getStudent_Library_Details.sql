create or replace procedure proc_getStudent_library(Student_Id varchar2,details out v_student_library_Details%rowtype)
is
cursor c_lib is select * from v_student_library_Details where Book_Issued_To_Student=Student_Id;
begin
open c_lib;
loop
fetch c_lib into details;
exit when c_lib%notfound;
dbms_output.put_line(details.Book_Issued_To_Student||CHR(10)||details.Book_Issued_To||CHR(10)||details.Book_Id_If_Exists||CHR(10)||details.Book_Name||chr(10)||details.Book_Issued_by||CHR(10)||details.Book_Return_Due_Date||CHR(10)||details.Actual_Book_Returned_Date||CHR(10)||details.Book_Collected_By||CHR(10)||details.Creation_Date||CHR(10)||chr(10));
end loop;
end;
/




/*--execution-Process---
declare
library v_Student_Library_Details%rowtype;
Student_Id varchar2(20);
begin
Student_Id:='&Student_No';
proc_getStudent_library(Student_Id,library);
end;
/
*/