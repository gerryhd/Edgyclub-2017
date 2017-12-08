CREATE VIEW movies_titles_date AS 
SELECT title, release_date FROM movies;


CREATE VIEW user_emails_month_credits AS
SELECT email, months_of_membership, total_credits FROM users;

DELIMITER //
CREATE PROCEDURE movies_procedure(IN name varchar(30), Out num int)
BEGIN
set @query=(select count(title)  FROM movies where title = name);
set @num =@query;
END //



DELIMITER //
CREATE PROCEDURE users_procedure(IN months int, OUT num int)
BEGIN
set @query=(select count(months_of_membership) FROM users where months_of_membership = months);
set @num=@query;
END //

DELIMITER //
CREATE PROCEDURE rent_procedure()
BEGIN
select * FROM rent_items where return_date< '2018-07-15' ;
END //

DELIMITER //
CREATE PROCEDURE premieres_procedure()
BEGIN
select * FROM premiere where prem_date< '2018-07-15' ;
END //

 