select 'A' [class], 1 [rollno], 'a' [section], 80 [marks], 'manoj' stuName
into #tempTable
UNION
select 'A', 2, 'a', 70 ,'harish'
UNION
select 'A', 3, 'a', 80 ,'kanchan'
UNION
select 'A', 4, 'b', 90 ,'pooja'
UNION
select 'A', 5, 'b', 90 ,'saurabh'
UNION
select 'A', 6, 'b', 50 ,'anita'
UNION
select 'B', 1, 'a', 60 ,'nitin'
UNION
select 'B', 2, 'a', 50 ,'kamar'
UNION
select 'B', 3, 'a', 80 ,'dinesh'
UNION
select 'B', 4, 'b', 90 ,'paras'
UNION
select 'B', 5, 'b', 50 ,'lalit'
UNION
select 'B', 6, 'b', 70 ,'hema'

select class, section, marks
from #tempTable

select class, section, marks
from #tempTable
order by marks
COMPUTE sum(marks), AVG(marks) by marks