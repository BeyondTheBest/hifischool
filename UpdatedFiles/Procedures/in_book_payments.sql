create or replace procedure in_book_payments(Book_Issue_To_Student varchar2,Term_Id varchar2,Book_Id varchar2,Book_Fee_Amount number,Fee_To_Be_Paid_Before varchar2,Student_No varchar2,Fee_Amount number,Fee_Paid_Date date,Fee_Penalty number,Fee_Paid_Mode varchar2,	Fee_Paid_By varchar2,Fee_Received_By varchar2)
is
begin
insert into books_payments values('Book_Payments_'||book_payments_id.nextval,Book_Issue_To_Student,Term_Id,Book_Id,Book_Fee_Amount,Fee_To_Be_Paid_Before,Student_No,Fee_Amount,Fee_Paid_Date,Fee_Penalty,Fee_Paid_Mode,Fee_Paid_By,Fee_Received_By,'HIFI_Fee'||fee_receipt.nextval,user,sysdate,user,sysdate);
commit;
end;
/
