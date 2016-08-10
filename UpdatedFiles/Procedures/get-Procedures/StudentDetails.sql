create or replace procedure StudentDetails(Student_Id varchar2,results out student%rowtype)
   is
   details sys_refcursor;
   begin
   if Student_Id IS NULL then
      open details for select * from student;
      loop
              fetch details into results;
              exit when details%notfound;
      end loop;
   else
      open details for select * from student where Student_No=Student_Id;
      fetch details into results;
   end if;
   end StudentDetails;
   /