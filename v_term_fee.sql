create or replace view v_term_fee
as
select t.Student_No,s.Student_Name,t.Term_Fee_To_Be_Paid_Before,t.Fee_Amount,t.Fee_Paid_Date,t.Fee_Penalty,t.Fee_Paid_Mode,t.Fee_Paid_By,t.Fee_Received_By,t.Fee_Receipt_Id
from term_wise_fee_payments t,student s
where s.Student_No=t.Student_No;