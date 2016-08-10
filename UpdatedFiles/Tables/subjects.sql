create table subjects(Subject_Id varchar2(20) constraints pk_subject primary key,
			Subject_Name varchar(50) not null,
			Subject_Max_Marks number(10) not null,
			Created_By varchar2(50),
			Creation_Date date,
			Last_Updated_By varchar2(50),
			Last_Updation_Date date);
