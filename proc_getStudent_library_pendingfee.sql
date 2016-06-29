create or replace procedure proc_library_fee_pending(Student_Id varchar2,fee out v_Student_library%rowtype)
is
cursor c_fee is select * from v_Student_library%rowtype where Student_No=Student_Id;
pending_amount number;
begin
open c_fee;
loop
fetch c_fee into fee;
exit when c_fee%notfound;
pending_amount:=fee.Library_Fee_Amount-fee.Fee_Amount;
dbms_output.put_line(fee.Student_No,fee.Student_Name,fee.Library_Fee_Amount,)