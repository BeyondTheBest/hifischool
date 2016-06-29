create or replace procedure Proc_insertTeacher_Salary(Teacher$Id varchar2,Ann_salary number,Year number,Month varchar2,account_No varchar2,Credit_Mode varchar2,add_Comments varchar)
is
gross integer;
deductions integer;
netsal integer;
incomeTax integer;
InTaxAmount integer;
begin
gross:=(Ann_salary/12);
deductions:=(gross*0.10)+(gross*0.02);
netsal:=gross-deductions;
InTaxAmount:=netsal*0.10;
incomeTax:=netsal-InTaxAmount;
insert into teacher_salary values(teacher$Id||seq_Teach_Salary.nextval,Teacher$Id,Ann_salary,Year,Month,gross,deductions,netsal,incomeTax,InTaxAmount,account_No,Credit_Mode,user,sysdate,add_Comments,user,sysdate,user,sysdate);
commit;
end;
/