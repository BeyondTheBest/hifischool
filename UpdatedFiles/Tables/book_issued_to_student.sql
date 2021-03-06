create table book_issued_to_student(Book_Issue_To_Student varchar2(20) constraints book_issued_pk primary key,
					Student_No varchar2(20) references student(Student_No),
					Section_Book_Id varchar2(20) references section_wise_books(Section_Book_Id),
					LIOD_Id varchar2(20) references library_in_out_details(LIOD_Id),
					Library_Id varchar2(20) references library_master(Library_Id),
					Issued_By varchar2(20) references staff(Staff_Id),
					Issued_Date date,
					Created_By varchar2(50),
					Creation_Date date,
					Last_Updated_By varchar2(50),
					Last_updation_Date date);
