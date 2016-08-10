create or replace procedure in_library_in_out(Library_Id varchar,Book_Issued_To_Student varchar2,Book_Issued_By varchar2,Book_Issud_To varchar2,Book_Return_Due_Date date,Actual_Book_Returned_Date date,Book_Collected_By varchar2)
is
begin
insert into library_in_out_details values('Library_InOut'||Library_In_Out.nextval,Library_Id,Book_Issued_To_Student,Book_Issued_By,Book_Issud_To,Book_Return_Due_Date,Actual_Book_Returned_Date,Book_Collected_By,user,sysdate,user,sysdate);
commit;
end;
/
