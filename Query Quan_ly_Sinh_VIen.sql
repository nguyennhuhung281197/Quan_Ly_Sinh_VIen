INSERT INTO Class
VALUES 
(1, 'A1', '2008-12-20', 1),
(2, 'A2', '2008-12-22', 1),
 (3, 'B3', current_date, 0);
 
 INSERT INTO Student (StudenName, Address, Phone, Status, ClassId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (StudenName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudenName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO Subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
       
       
       INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);
       
       
       select * from student 
       where StudenName like 'H%';
       
       select * from class 
       where month(StartDate) = 12 ; 
       
       select * from subject 
       where Credit between 3 and 5;
       
       update student set ClassID = 2
       where studentID = 1;
       
       select student.StudenName , subject.SubName, mark.Mark from mark
       join student on student.StudentID = mark.StudentID 
       join subject on subject.SubID = mark.MarkID
       order by mark.Mark asc , StudenName desc , SubName desc ;
       
       
       








