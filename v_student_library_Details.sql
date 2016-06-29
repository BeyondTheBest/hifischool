create or replace view v_student_library_Details
as
select l.Book_Issued_To_Student,s.Student_Name,lm.Book_Id_If_Exists,lm.Book_name,l.Book_Issued_To,l.Book_Issued_by,l.Book_Return_Due_Date,l.Actual_Book_Returned_Date,l.Book_Collected_By,l.Creation_Date
from student s,library_In_Out_Details l,library_master lm
where s.Student_No=l.Book_Issued_To_Student
	and
	lm.Library_Id=l.Library_Id;