USE SS_3_1_data;


INSERT INTO users (nickname, email,password,phone,birthday) VALUES 
			('A', 'a@mail.com','aaa','111',CAST('2001-01-01' as datetime)),
            ('B', 'b@mail.com','bbb','222',CAST('2002-01-01' as datetime)),
            ('C', 'c@mail.com','ccc','333',CAST('2003-01-01' as datetime)),
            ('D', 'd@mail.com','ddd','444',CAST('2004-01-01' as datetime));
SELECT * FROM users;
SELECT * FROM comment;
SELECT * FROM photo;
SELECT * FROM likes_comment;
SELECT * FROM likes_user;
SELECT * FROM likes_photo;

DELETE FROM comment WHERE id<10;

DESCRIBE comment;

INSERT INTO comment (user_id,photo_id,content) VALUES
			('23', '7','text1'),
            ('23', '7','text2'),
            ('23', '8','text3'),
            ('26', '9','text4'),
            ('25', '7','text5');

INSERT INTO likes_comment (user_id,comment_id) VALUES
			('23', '7'),
            ('23', '11'),
            ('24', '7'),
            ('26', '9'),
            ('25', '7');
