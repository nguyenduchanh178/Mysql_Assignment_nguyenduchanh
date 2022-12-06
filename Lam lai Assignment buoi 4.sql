USE testing_system;

SELECT * 
FROM `account` a
JOIN department d ON d.departmentid= a.DepartmentID;

SELECT * 
FROM `account` 
WHERE createddate>'2010-12-20';

SELECT *
FROM `account` a
JOIN department d ON d.DepartmentID= a.DepartmentID
WHERE departmentname = 'phong dev 1' Or 'phong dev 2';

SELECT d.departmentname, COUNT(a.departmentid) as totalMember
FROM `account` a
JOIN department d ON d.DepartmentID= a.DepartmentID 
GROUP BY d.departmentid
HAVING totalmember >3;

SELECT content, COUNT(e.questionid) as totalquestion
FROM `question` a
JOIN examquestion e ON e.questionid = a.questionid
GROUP BY e.questionid
HAVING totalquestion = (SELECT MAX(totalquestion) FROM (SELECT COUNT(e.questionid) as totalquestion
                                                         FROM `question` a
                                                         JOIN examquestion e ON e.questionid = a.questionid
                                                         GROUP BY e.questionid ) as tempt_table);


SELECT c.Categoryname, COUNT(q.content)
FROM categoryquestion c
JOIN question q ON c.categoryid= q.CategoryID
GROUP BY q.categoryid;

SELECT q.content, COUNT(e.examid)
FROM question q 
JOIN examquestion e ON q.questionid = e.QuestionID
GROUP BY e.questionid;

SELECT q.content, COUNT(a.answerid)
FROM question q
JOIN answer a ON a.questionid=q.questionid
GROUP BY a.questionid;

SELECT a.groupname, COUNT(g.groupid)
FROM `group` a
JOIN groupaccount g ON g.groupid= a.groupid
GROUP BY g.groupid;

SELECT p.positionname, COUNT(a.accountid) as totalmember
FROM `account` a
JOIN position p ON p.positionid= a.positionid
GROUP BY a.positionid
HAVING totalmember = (SELECT MIN(totalmember) FROM (SELECT COUNT(a.accountid) as totalmember
                                                    FROM `account` a
                                                    JOIN position p ON p.positionid= a.positionid
						    GROUP BY a.positionid) as totalmember2);

SELECT d.departmentname, COUNT(a.accountid)
FROM `account` a
JOIN department d ON d.departmentid= a.departmentid
GROUP BY a.departmentid;

SELECT *
FROM question q
JOIN typequestion t ON t.typeid= q.typeid;
 

SELECT t.typename, COUNT(q.typeid)
FROM typequestion t
JOIN question q ON q.typeid= t.typeid
GROUP BY q.typeid;

SELECT g.groupname, COUNT(a.groupid) as totalaccount
FROM `group` g 
JOIN groupaccount a ON a.groupid= g.groupid
GROUP BY a.groupid
HAVING totalaccount=0;

SELECT q.content, COUNT(a.answerid) as totalanswer
FROM question q
JOIN answer a ON a.questionid=q.questionid
GROUP BY a.questionid
HAVING totalanswer = 0;





 






