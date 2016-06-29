create or replace procedure Proc_getTeacher_salary(Teacher$Id varchar2,Details out teacher_salary%rowtype)
is
cursor c_sal is select * from teacher_salary where teacher_Id=Teacher$Id;
teach_Name varchar2(50);
begin
open c_sal;
loop
fetch c_sal into Details;
select Teacher_Name into teach_Name from teachers where Teacher_Id=Teacher$Id;
exit when c_sal%notfound;
dbms_output.put_line(details.Teacher_salary_Id||Chr(10)||teach_Name||CHR(10)||Details.Annual_Salary||CHR(10)||Details.Year||CHR(10)||Details.Month||CHR(10)||Details.Gross_Sal||CHR(10)||Details.Total_Deductions||CHR(10)||Details.Net_Salary||CHR(10)||Details.Income_Tax_Deducted||CHR(10)||Details.Income_Tax_Amount||CHR(10)||Details.Salary_Credited_To_Account||CHR(10)||Details.Credited_Mode||CHR(10)||Details.Credit_Initiated_By||CHR(10)||Details.Credit_Initiated_Date||CHR(10)||Details.Additional_Comments||CHR(10)||Details.Created_By||CHR(10)||Details.Creation_Date||CHR(10)||Details.Last_Updated_By||CHR(10)||Details.Last_Updation_Date);
end loop;
end;
/

/*----execution process----
declare
Teacher$Id varchar2(50);
details teacher_salary%rowtype;
begin
Teacher$Id:='&teacher_Id';
Proc_getTeacher_salary(Teacher$Id,details);
end;
/
*/