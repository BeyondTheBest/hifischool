create view v_Student_Class
as
select distinct Class_id,Student_No,Term_Id
from marks;