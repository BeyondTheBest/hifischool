create table teacher_to_class(Teacher_To_Class_Id varchar2(20) primary key,
				Teacher_Id varchar2(20) references teachers(Teacher_Id),
				Class_Id varchar2(20) references class(Class_Id),
				Assigned_By varchar2(20),
				Assigned_Date date,
				Year varchar2(10),
				Assignment_Start_Date date,
				Assignment_End_Date date,
				Created_By varchar2(20),
				Creation_Date date,
				Last_Updated_By varchar2(20),
				Last_Updation_Date date);