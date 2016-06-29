create or replace package update_Transport_Fee
as
procedure Transport_Fee_Amount(Student_Id varchar2,Amount transport_fee_payments.Transport_Fee_Amount%type);
procedure Transport_Fee_Paid_Before(Student_Id varchar2,Status varchar2);
procedure Fee_Amount(Student_Id varchar2,Amount transport_fee_payments.Fee_Amount%type);
procedure Fee_Paid_Date(Student_Id varchar2,paid_Date date);
procedure Fee_Penalty(Student_Id varchar2,Penalty transport_fee_payments.Fee_Penalty%type);
procedure Fee_Paid_Mode(Student_Id varchar2,Paid_Mode transport_fee_payments.Fee_Paid_Mode%type);
procedure Fee_Paid_By(Student_Id varchar2,Paid_By transport_fee_payments.Fee_Paid_By%type);
procedure Fee_Received_By(Student_Id varchar2,Received_By transport_fee_payments.Fee_Received_By%type);
procedure Fee_Receipt_Id(Student_Id varchar2,Receipt_Id transport_fee_payments.Fee_Receipt_Id%type);
end;
/
