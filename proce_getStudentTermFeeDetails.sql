create or replace procedure proce_getStudentTermFeeDetails(Student_Id varchar2,result out v_term_fee%rowtype)
is
cursor c_rec is select * from v_term_fee
where Student_No=Student_Id;
begin
open c_rec;
loop 
fetch c_rec into result;
exit when c_rec%notfound;
dbms_output.put_line(result.Student_No||chr(10)||result.Student_Name||chr(10)||result.Term_Fee_To_Be_Paid_Before||chr(10)||result.Fee_Amount||chr(10)||result.Fee_Paid_Date||chr(10)||result.Fee_Penalty||chr(10)||result.Fee_Paid_Mode||chr(10)||result.Fee_Paid_By||chr(10)||result.Fee_Received_By||chr(10)||result.Fee_Receipt_Id);
end loop;
close c_rec;
end;
/



/*
declare
Student_Id student.Student_No%type;
result v_term_fee%rowtype;
begin
Student_Id:='&Student_No';
proce_getStudentTermFeeDetails(Student_Id,result);
--dbms_output.put_line(result.Student_No||chr(10)||result.Student_Name||chr(10)||result.Term_Fee_To_Be_Paid_Before||chr(10)||result.Fee_Amount||chr(10)||result.Fee_Paid_Date||chr(10)||result.Fee_Penalty||chr(10)||result.Fee_Paid_Mode||chr(10)||result.Fee_Paid_By||chr(10)||result.Fee_Received_By||chr(10)||result.Fee_Receipt_Id);
end;
*/
