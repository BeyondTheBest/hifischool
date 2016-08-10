create or replace procedure in_staff_salary(Staff_Id varchar2,Annual_Salary number,Salary_Credited_To_Account varchar2,Credited_Mode varchar2,Credit_Initiated_By varchar2,Credit_Initiated_Date date,Additional_Comments varchar2)
is
deductions integer;
gross_sal integer;
net_sal number(10,2);
incometax integer;
begin
gross_sal:=Annual_Salary/12;
deductions:=0.1*gross_sal;
net_sal:=gross_sal-deductions;
	if net_sal<=20000 then
		insert into staff_salary values('staff_salary'||staff_sal_Id.nextval,Staff_Id,Annual_Salary,extract(Year from sysdate),extract(Month from sysdate),gross_sal,deductions,net_sal,NULL,NULL,Salary_Credited_To_Account,Credited_Mode,Credit_Initiated_By,Credit_Initiated_Date,Additional_Comments,user,sysdate,user,sysdate);
	elsif net_sal>20000 and net_sal<50000 then
		incometax:=10;
	elsif net_sal>50000 and net_sal<100000 then
		incometax:=20;
	else
		incometax:=30;
	end if;
		insert into staff_salary values('staff_salary'||staff_sal_Id.nextval,Staff_Id,Annual_Salary,extract(Year from sysdate),extract(Month from sysdate),gross_sal,deductions,net_sal,incometax,(incometax/100)*net_sal,Salary_Credited_To_Account,Credited_Mode,Credit_Initiated_By,Credit_Initiated_Date,Additional_Comments,user,sysdate,user,sysdate);
commit;
end;
/
