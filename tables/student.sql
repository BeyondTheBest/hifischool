-------Table Complete Data--------

create table student(Student_no varchar2(10) constraints pk_student primary key,
		Student_Name varchar2(50),
		Father_Name varchar2(50),
		Mother_Name varchar2(50),
		DOB date,
		DOJ date,
		Address varchar2(150),
		Admission_No number(10),
		Created_By varchar2(50),
		Creation_Date date,
		Last_Updated_by varchar2(50),
		Last_Updation_Date date);
