create or replace procedure Proc_getSports_fee(Student_Id varchar2,fee out v_Sports_details%rowtype)
is
cursor c_sport is select * from v_Sports_details where Student_No=Student_Id;
begin
open c_sport;
loop
fetch c_sport into fee;
exit when c_sport%notfound;
dbms_output.put_line(fee.Student_No||Chr(10)||fee.Student_Name||Chr(10)||fee.class_Name||Chr(10)||fee.term_Name||Chr(10)||fee.Sports_Description||Chr(10)||fee.Sports_Fee_Amount||Chr(10)||fee.Fee_To_Be_Paid_Before||Chr(10)||fee.Fee_Amount||Chr(10)||fee.Fee_Paid_Date||Chr(10)||fee.Fee_Penalty||Chr(10)||fee.Fee_Paid_Mode||Chr(10)||fee.Fee_Paid_by||Chr(10)||fee.Fee_Received_By||Chr(10)||fee.Fee_Receipt_Id||CHR(10));
end loop;
end;
/