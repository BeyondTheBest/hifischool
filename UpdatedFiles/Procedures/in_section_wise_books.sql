create or replace procedure in_section_wise_books(Book_set_Detail varchar2,For_Education_Year varchar2,Class_Id varchar2,Book_Set_Approved_By varchar2,Book_Set_Approved_Date date,Set_Total_Books_Note number,Set_Total_Price number)
is
begin
insert into section_wise_books values('section_book'||section_book_id.nextval,Book_set_Detail,For_Education_Year,Class_Id,Book_Set_Approved_By,Book_Set_Approved_Date,Set_Total_Books_Note,Set_Total_Price,user,sysdate,user,sysdate);
commit;
end;
/
