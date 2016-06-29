create or replace package update_Term_Fee
as
procedure Term_Fee_Paid_Before(Student_Id varchar2,Status term_wise_fee_payments.Term_Fee_To_Be_Paid_Before%type);
procedure Fee_Amount(Student_Id varchar2,Amount term_wise_fee_payments.Fee_Amount%type);
procedure Fee_Paid_Date(Student_Id varchar2,paid_Date date);
procedure Fee_Penalty(Student_Id varchar2,Penalty term_wise_fee_payments.fee_Penalty%type);
procedure Fee_Paid_Mode(Student_Id varchar2,Paid_Mode term_wise_fee_payments.Fee_Paid_Mode%type);
procedure Fee_Paid_By(Student_Id varchar2,Paid_By term_wise_fee_payments.Fee_Paid_By%type);
procedure Fee_Received_By(Student_Id varchar2,Received_By term_wise_fee_payments.Fee_Received_By%type);
procedure Fee_Receipt_Id(Student_Id varchar2,Receipt_Id term_wise_fee_payments.Fee_Receipt_Id%type);
end;
/ 