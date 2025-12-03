 insert into users VALUES( "jdupont","jean.dupont@email.com","$2y$10$...","éditeur","2024-01-15 10:00:00")

 select * from users

 DELETE FROM comment WHERE status_cmt ="spam"

 SELECT * FROM article WHERE date_cr_art < '2024-12-1 00:00:00'

 SELECT * FROM users ORDER BY created_at

 SELECT titre_art,date_cr_art FROM article ORDER BY date_cr_art DESC LIMIT 5

 SELECT DISTINCT role  FROM users;

 SELECT *  FROM article WHERE category="Technologie" and status_post = "Technologie" OR"pending";

 SELECT *  FROM comment where (comment.created_at_cmt BETWEEN "2024-12-1" and "2024-12-15")

 SELECT *  FROM article where category = "Voyage" or category = "Mode"  or category = "Sport" 

 SELECT *  FROM users where users.email like "%@gmail.com"

 SELECT count(*) as total FROM article

 SELECT count(*) as total,category FROM article GROUP BY category
