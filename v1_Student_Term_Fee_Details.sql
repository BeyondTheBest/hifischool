create view v1_Student_Term_Fee_Details
as
select p.Student_No,s.Student_Name,c.Class_Name,t.Term_Name,p.Term_Fee_To_Be_Paid_Before,p.Fee_Amount,p.Fee_Paid_Date,p.Fee_Penalty,p.Fee_Paid_Mode,p.Fee_Paid_By,p.Fee_Received_By,p.Fee_Receipt_Id
from term_wise_fee_payments p,student s,class c,term t
where p.Student_no=s.Student_No
	and
	