USE Testing_System_Assignment_1;

ALTER TABLE Questions
  ADD CONSTRAINT Questions_to_Type_question FOREIGN KEY (Type_id) REFERENCES Type_question(Type_id);

ALTER TABLE Accounts RENAME TO `account`;

USE Testing_System_Assignment_1; 

ALTER TABLE ’account’ RENAME TO Accounts;

INSERT INTO Department (Department_id, Department_name)
VALUE         (1, 'Marketting'         ),
              (2, 'Sale'               ),
              (3, 'Bảo vệ'             ),
              (4, 'Nhân sự'            ),
              (5, 'Kỹ thuật'           ),
              (6, 'Tài chính'          ),
              (7, 'Phó gíam đốc'       ),
              (8, 'Giám đốc'           ),
              (9, 'Thư ký'             ),
              (10,'Bán hàng'           );

INSERT INTO positions(Position_id, Position_name)
VALUE         (1, 'Trưởng phòng'       ),
              (2, 'Phó phòng'          ),
              (3, 'Nhân viên'          ),
              (4, 'Chuyên viên'        ),
              (5, 'Thử việc'           ),
              (6, 'Học việc'           ),
              (7, 'Internship'         ),
              (8, 'Trưởng nhóm'        ),
              (9, 'Phái cử'            ),
              (10,'Parttime'           );
INSERT INTO Accounts(Account_id, Email, Username, Fullname, Department_id, Position_id, Create_date)
VALUE         (1, 'n-hanh@gmail.com', 'nhanh', 'nguyen duc hanh', 1, 1, '2022-11-30'                      ),
              (2, 'voldermort18795@gmail.com', 'voldermort17895', 'nguyen thi vol', 2, 2, '2022-11-30'    ),
              (3, 'ndhanhftu95@gmail.com', 'ndhanh', 'nguyen van hanh', 3, 3, '2022-11-30'                ),
              (4, 'ntquyen281006', 'ntquyen', 'nguyen thuc quyen', 4, 4, '2022-11-30'                     ),
              (5, 'ndtu240470@gmail.com', 'ndtu', 'nguyen duc tu', 5, 5, '2022-11-30'                     ),
              (6, 'pthung201272@gmail.com', 'pthung', 'phung thu hung', 6, 6, '2022-11-30'                ),
              (7, 'nthoa221095@gmail.com', 'nthoa', 'nguyen thi hoa', 7, 7, '2022-11-30'                  ),
              (8, 'lbtrinh281097@gmail.com', 'lbtrinh', 'le ba trinh', 8, 8, '2022-11-30'                 ),
              (9, 'bnvan13549@gmail.com', 'bnvan', 'bui ngoc van', 9, 9, '2022-11-30'                     ),
              (10,'tmhoa2658@gmail.com', 'tmhoa', 'truong my hoa', 10, 10, '2022-11-30'                   );
INSERT INTO Groups_(Group_id, Group_name, Creator_id, Create_date)
VALUE         (1, 'Học vớ vẩn', 1, '2022-11-30'             ),
              (2, 'Học láo nháo', 2, '2022-11-30'           ),
              (3, 'Học tàm tạm', 3, '2022-11-30'            ),
              (4, 'Học cũng được', 4, '2022-11-30'          ),
              (5, 'Học xuất sắc', 5, '2022-11-30'           ),
              (6, 'Học khá', 6, '2022-11-30'                ),
              (7, 'Học bẩn tuồng', 7, '2022-11-30'          ),
              (8, 'Học với chả hành', 8, '2022-11-30'       ),
              (9, 'Học kha khá', 9, '2022-11-30'            ),
              (10, 'Học dốt nhất lớp', 10, '2022-11-30'     );
INSERT INTO Group_Account(Group_id, Account_id, Join_date)
VALUE         (1, 1, '2022-11-30'           ),
              (2, 2, '2022-11-30'           ),
              (3, 3, '2022-11-30'           ),
              (4, 4, '2022-11-30'           ),
              (5, 5, '2022-11-30'           ),
              (6, 6, '2022-11-30'           ),
              (7, 7, '2022-11-30'           ),
              (8, 8, '2022-11-30'           ),
              (9, 9, '2022-11-30'           ),
              (10, 10, '2022-11-30'         );    
CREATE TABLE Exam_question(
    Exam_id INT PRIMARY KEY Auto_increment,
	Question_id INT
);
INSERT INTO Type_question(Type_id, Type_name)
VALUE         (1, 'chọn'                  ),
              (2, 'tự luận'               ),
              (3, 'trắc nghiệm'           ),
              (4, 'tự do'                 ),
              (5, 'ngôi sao hi vọng'      ),
              (6, 'bừa'                   ),
              (7, 'không có câu trả lời'  ),
              (8, 'khó'                   ),
              (9, 'dễ'                    ),
              (10, 'bình thường'          ); 
INSERT INTO Category_Question(Category_id, Category_name)
VALUE         (1, 'JAVA'                  ),
              (2, '.NET'                  ),
              (3, 'RUBY'                  ),
              (4, 'POSTMAN'               ),
              (5, 'C++'                   ),
              (6, 'C#'                    ),
              (7, 'SQL'                   ),
              (8, ''                      ),
              (9, 'dễ'                    ),
              (10, 'bình thường'          );    
INSERT INTO Questions(Question_id, Content, Category_id, Type_id, Creator_id, Create_date)
VALUE         (1, 'có bao nhiêu người trên trái trất',1 , 1, 1, '2022-11-30'   ),
              (2, 'tình yêu là cái quái gì',2 , 2, 2, '2022-11-30'             ),
              (3, 'có bao nhiêu loại ngôn ngữ lập trình',3 , 3, 3, '2022-11-30'),
              (4, 'ai xinh gái nhất thế giới',4 , 4, 4, '2022-11-30'           ),
              (5, 'loài nào đông dân nhất TG',5 , 5, 5, '2022-11-30'           ),
              (6, 'mấy giờ đi ngủ',6 , 6, 6, '2022-11-30'                      ),
              (7, 'ai là người tạo ra lửa',7 , 7, 7, '2022-11-30'              ),
              (8, 'có ma thật không',8 , 8, 8, '2022-11-30'                    ),
              (9, 'người chết hiện về',9 , 9, 9, '2022-11-30'                  ),
              (10, 'những bóng ma vật vờ',10 , 10, 10, '2022-11-30'            );
INSERT INTO Answer(Answer_id, Content, Question_id, Is_Correct)
VALUE         (1, '8 tỷ',1 , 'No'           ),
              (2, 'hỏi chúa',2 , 'No'       ),
              (3, 'n ngôn ngữ',3 , 'No'     ),
              (4, 'em gái tôi',4 , 'YES'    ),
              (5, 'loài kiến',5 , 'No'      ),
              (6, '1 giờ đêm',6 , 'YES'     ),
              (7, 'nicholas tesla',7 , 'YES'),
              (8, 'có',8 , 'No'             ),
              (9, 'đâu có',9 , 'No'         ),
              (10, 'đúng',10 , 'No'         );
              
ALTER TABLE Exam MODIFY Code_number VARCHAR(6);

INSERT INTO Exam(Exam_id, Code_number, title, Category_id, Duration, Creator_id, Create_date)
VALUE         (1, 123451, 'đề khó', 1, '2:10', 1, '2022-11-30'),
              (2, 123452, 'đề rất khó', 2, '2:20', 2, '2022-11-30'),
              (3, 123453, 'đề rất rất khó', 3, '2:30', 3, '2022-11-30'),
              (4, 123454, 'đề dễ', 4, '2:40', 4, '2022-11-30'),
              (5, 123455, 'đề rất dễ', 5, '2:50', 5, '2022-11-30'),
              (6, 123456, 'đề không cần làm', 6, '3:00', 6, '2022-11-30'),
              (7, 123457, 'đề cự kỳ dễ', 7, '3:10', 7, '2022-11-30'),
              (8, 123458, 'đề vớ vẩn', 8, '3:20', 8, '2022-11-30'),
              (9, 123459, 'đề lăng nhăng', 9, '3:30', 9, '2022-11-30'),
              (10, 234561, 'đề bình thường', 10, '3:40', 10, '2022-11-30');
              
              
 INSERT INTO Exam_question(Exam_id, Question_id)
 VALUE        (1, 1),
              (2, 2),
              (3, 3),
              (4, 4),
              (5, 5),
              (6, 6),
              (7, 7),
              (8, 8),
              (9, 9),
              (10, 10);
              
  



    

              






              
              