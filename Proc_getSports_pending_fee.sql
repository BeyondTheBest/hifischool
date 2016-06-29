create or replace procedure Proc_getSports_pending_fee(Student_Id varchar2,fee out v_Sports_details%rowtype)
is
cursor c_fee is select * from v_Sports_Details where Student_No=Student_Id;
pending_fee number;
begin
open c_fee;
loop
fetch c_fee into fee;
exit when c_fee%notfound;
Pending_fee:=fee.Sports_Fee_Amount-fee.Fee_Amount;
dbms_output.put_line(fee.Student_No||Chr(10)||fee.Student_Name||Chr(10)||fee.class_Name||Chr(10)||fee.term_Name||Chr(10)||fee.Sports_Description||Chr(10)||fee.Sports_Fee_Amount||Chr(10)||Pending_fee);
end loop;
end;
/