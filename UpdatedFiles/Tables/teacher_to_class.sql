create table teacher_to_class(Teacher_To_Class_Id varchar2(20) constraints TTC_pk primary key,
				Teacher_Id varchar2(20) references teachers(Teacher_Id),
				Class_Id varchar2(20) references class(Class_Id),
				Assigned_By varchar2(50),
				Assigned_Date date,
				Year varchar2(10),
				Assignment_Start_Date date,
				Assignment_End_Date date,
				Created_By varchar2(50),
				Creation_Date date,
				Last_Updated_By varchar2(50),
				Last_Updation_Date date);