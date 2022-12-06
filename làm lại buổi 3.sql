USE testing_system;

/--Question 2: lấy ra tất cả các phòng ban--/

SELECT * FROM department;

Question 3: lấy ra id của phòng ban "Sale"

SELECT departmentid FROM department
WHERE departmentname = 'phong sale';

-- Question 4: lấy ra thông tin account có full name dài nhất

SELECT *
FROM `account`
WHERE length(fullname)= (SELECT MAX(length(fullname)) FROM `account`);

--cach 2--
SELECT *, length(fullname)  as sokytu1 
FROM `account`
Having length(fullname) = (select max(sokytu)
			  from  (sELECT length(fullname) as sokytu
			 FROM account) as t);

SELECT *
FROM `account`
WHERE length(fullname)= (SELECT MAX(length(fullname)) FROM `account`) AND departmentid=3;


SELECT groupname
FROM `group`
WHERE createddate < '2019-12-20';

SELECT examid
FROM `exam` 
WHERE duration >= 60 AND createddate < '2019-12-20';


SELECT groupname
FROM `group`
ORDER BY createddate DESC
LIMIT 5;


SELECT COUNT(accountid)
FROM `account` a
JOIN department d ON d.departmentid= a.departmentid
WHERE a.departmentid=2;


SELECT fullname
FROM `account`
WHERE fullname LIKE 'D%o';


UPDATE `account`
SET fullname = 'Nguyễn Bá Lộc', email= 'loc.nguyenba@vti.com.vn'
WHERE accountid=5 ;







