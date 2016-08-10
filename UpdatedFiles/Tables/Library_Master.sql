create table library_master(Library_Id varchar2(20) constraints library_pk primary key,
				Arranged_Year varchar2(5),
				Rack_No varchar2(20),
				Book_Id_If_exists varchar2(30),
				Book_Name varchar2(50),
				Book_Category varchar2(30),
				Author varchar2(50),
				Book_Version varchar2(50),
				Useful_For_Section varchar2(20) references class(Class_Id),
				Created_By varchar2(50),
				Creation_Date date,
				Last_Updated_by varchar2(50),
				Last_Updation_Date date);
