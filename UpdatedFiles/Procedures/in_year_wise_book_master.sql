create or replace procedure in_year_wise_book_master(Book_Name varchar2,Author varchar2,Revision varchar2,If_Purchased_By varchar2,If_Purchased_Date date,Added_To_Library_By varchar2,Added_To_Library_Date date,Library_Rack_no varchar2,Library_Id varchar2,Price number,Quantity number)
is
begin
insert into year_wise_book_master values('Book-'||book_id.nextval,Book_Name,extract(year from sysdate),extract(month from sysdate),extract(day from sysdate),Author,Revision,If_Purchased_By,If_Purchased_Date,Added_To_Library_By,Added_To_Library_Date,Library_Rack_no,Library_Id,Price,Quantity,user,sysdate,user,sysdate);
commit;
end;
/
