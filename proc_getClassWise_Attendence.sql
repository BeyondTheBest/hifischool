create or replace procedure proc_getClassWise_Attendence(Class$Id varchar2,Sec_Wise_Att out v_class_Attendence%rowtype)
is
cursor c_atte is select * from v_class_Attendence where Class_Id=Class$Id;
begin
open c_atte;
loop
fetch c_atte into Sec_Wise_Att;
exit when c_atte%notfound;
dbms_output.put_line(Sec_Wise_Att.Class_Id||CHR(10)||Sec_Wise_Att.Class_Name||CHR(10)||Sec_Wise_Att.Section_Name||CHR(10)||Sec_Wise_Att.Student_No||CHR(10)||Sec_Wise_Att.Student_Name||CHR(10)||Sec_Wise_Att.day||CHR(10)||Sec_Wise_Att.Present||CHR(10)||Sec_Wise_Att.recorded_By||CHR(10)||Sec_Wise_Att.Created_By||CHR(10)||Sec_Wise_Att.Creation_Date||CHR(10)||Sec_Wise_Att.Last_Updated_By||CHR(10)||Sec_Wise_Att.Last_Updation_Date||CHR(10));
end loop;
end;
/