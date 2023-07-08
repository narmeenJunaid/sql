create database CourseDetails;
use CourseDetails;
create table StudentDetails(
StudentID int(4) primary key not null,
StudentName varchar(10));
insert into StudentDetails values(1001,"Mary"),(1002,"Jane"),(1003,"Daniel"),(1004,"Jack"),(1005,"Harold");
create table CourseDetails(
CourseID int(4) primary key not null,
CourseName varchar(10),
StudentID int(4),
foreign key(StudentID) references StudentDetails(StudentID));
insert into CourseDetails values (5001,"PHP",1004),(5002,"JAVA",1001),(5003,"ASP.NET",1001),(5004,"RUBY",1002);
create table TeacherDetails(
TeacherID int(4),
TeacherName varchar(10),
CourseID int(4),
foreign key (CourseID) references CourseDetails(CourseID));
insert into TeacherDetails values(3001,"Jill",5003),(3002,"Greul",5002),(3003,"Jemkins",5001),(3004,"Polo",5004);
select*from StudentDetails join CourseDetails on StudentDetails.StudentID = CourseDetails.StudentID join TeacherDetails on CourseDetails.CourseID = TeacherDetails.CourseID;

select*from StudentDetails left join CourseDetails on StudentDetails.StudentID = CourseDetails.StudentID order by StudentDetails.StudentID;
select*from CourseDetails right join TeacherDetails on CourseDetails.CourseID = TeacherDetails.CourseID;
select*from StudentDetails cross join CourseDetails on StudentDetails.StudentID = CourseDetails.StudentID cross join TeacherDetails on CourseDetails.CourseID = TeacherDetails.CourseID;
select*from StudentDetails inner join CourseDetails on StudentDetails.StudentID = CourseDetails.StudentID inner join TeacherDetails on CourseDetails.CourseID = TeacherDetails.CourseID;