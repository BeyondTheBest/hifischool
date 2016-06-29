create or replace view v_student_library
as
select s.Student_No,s.Student_Name,l.Library_Fee_Amount,l.Fee_To_Be_Paid_Before,l.Fee_Amount,l.Fee_Paid_Date,l.Fee_Penalty,l.Fee_Paid_Mode,l.Fee_Paid_By,l.Fee_Received_By,l.Fee_Receipt_Id,l.Last_Updated_By,l.Last_Updation_Date
from student s,library_payments l;