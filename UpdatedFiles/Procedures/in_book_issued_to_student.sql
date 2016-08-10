create or replace procedure in_book_issued_to_student(Student_No varchar2,Section_Book_Id varchar2,LIOD_Id varchar2,Library_Id varchar2,Issued_By varchar2,Issued_Date date)
is
begin
insert into book_issued_to_student values('book_to_student'||book_issue_student.nextval,Student_No,Section_Book_Id,LIOD_Id,Library_Id,Issued_By,Issued_date,user,sysdate,user,sysdate);
commit;
end;
/
