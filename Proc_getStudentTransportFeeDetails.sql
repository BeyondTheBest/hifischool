create or replace procedure Proc_getTransportFeeDetails(Student_Id varchar2,result out v_transport_fee%rowtype)
is
cursor c_trans_fee is select * from v_transport_fee where Student_No=Student_Id;
begin
open c_trans_fee;
loop
fetch c_trans_fee into result;
exit when c_trans_fee%notfound;
dbms_output.put_line(result.Student_No||chr(10)||result.Student_Name||chr(10)||result.Term_Name||chr(10)||result.Term_Duration||chr(10)||result.Term_Start_Date||chr(10)||result.Term_End_Date);
dbms_output.put_line(result.Route_Name||chr(10)||result.Route_Planned_Month_Year||chr(10)||result.Route_Valid_Till||chr(10)||result.Route_Start_Point||chr(10)||result.Route_End_Point||chr(10)||result.Transport_Fee_Amount||chr(10)||result.Fee_To_Be_Paid_Before||chr(10)||result.Fee_Amount||chr(10)||result.Fee_Paid_Date||chr(10)||result.Fee_Penalty||chr(10)||result.Fee_Paid_Mode||chr(10)||result.Fee_Paid_By||chr(10)||result.Fee_Received_By||chr(10)||result.Fee_Receipt_Id);
end loop;
close c_trans_fee;
end;

/*
declare
Student_Id student.Student_No%type;
result v_transport_fee%rowtype;
begin
Student_Id:='&Student_No';
Proc_getTransportFeeDetails(Student_Id,result);
end;
*/