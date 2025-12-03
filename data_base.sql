CREATE database blog;

CREATE table blog.users(
            user_name varchar(20) PRIMARY KEY,  			
   			email varchar(50),
            password_hash text,
     		role varchar(20),
    		created_at datetime 
                      );

CREATE table blog.category(
            titre_cat varchar(20) PRIMARY KEY,
            description text                   
                      );

CREATE table blog.article(
                       id_art int AUTO_INCREMENT PRIMARY KEY,
                       titre_art text,
                       content_art text,
                       image_url text,
                       date_cr_art datetime,
                       date_up_art datetime,
		               id_user varchar(50),
                       category varchar(50),
                       FOREIGN KEY (id_user) REFERENCES users(user_name),
                       FOREIGN KEY (category) REFERENCES category(titre_cat),
                       status_post text,
                       view_count int
                      );


CREATE table blog.comment(
                          id_cmt int AUTO_INCREMENT PRIMARY KEY,
                          content_cmt text ,
                          created_at_cmt date ,
                          post_id int,
                          FOREIGN KEY (post_id) REFERENCES article(id_art),
                          status_cmt varchar(20),
                          user_name varchar(50),
                          FOREIGN KEY (user_name) REFERENCES users(user_name)
                      );


INSERT INTO users VALUES ('admin_blog','admin@blogcms.com','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','admin','2024-01-15 10:00:00');
INSERT INTO users VALUES ('marie_dubois','marie.dubois@email.com','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','editor','2024-02-10 11:30:00');
INSERT INTO users VALUES ('pierre_leroy','pierre.leroy@gmail.com','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','author','2024-02-15 09:15:00');
INSERT INTO users VALUES ('sophie_martin','sophie.martin@protonmail.com','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','author','2024-03-01 14:20:00');
INSERT INTO users VALUES ('jean_dupont','jean.dupont@yahoo.fr','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','author','2024-03-10 16:45:00');
INSERT INTO users VALUES ('lucie_bernard','lucie.bernard@email.com','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','author','2024-03-15 08:00:00');
INSERT INTO users VALUES ('thomas_petit','thomas.petit@gmail.com','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','subscriber','2024-03-20 10:30:00');
INSERT INTO users VALUES ('julie_roux','julie.roux@protonmail.com','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','subscriber','2024-04-01 12:00:00');
INSERT INTO users VALUES ('marc_vincent','marc.vincent@yahoo.fr','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','author','2024-04-05 15:45:00');
INSERT INTO users VALUES ('isabelle_leroy','isabelle.leroy@gmail.com','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','subscriber','2024-04-10 18:20:00');
INSERT INTO users VALUES ('david_morel','david.morel@email.com','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','author','2024-04-15 09:30:00');
INSERT INTO users VALUES ('caroline_duval','caroline.duval@protonmail.com','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','editor','2024-05-02 14:10:00');
INSERT INTO users VALUES ('nicolas_lambert','nicolas.lambert@gmail.com','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','author','2024-05-10 11:45:00');
INSERT INTO users VALUES ('elodie_garnier','elodie.garnier@email.com','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','subscriber','2024-05-20 16:30:00');
INSERT INTO users VALUES ('antoine_chevalier','antoine.chevalier@yahoo.fr','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','author','2024-06-01 08:15:00');
INSERT INTO users VALUES ('clara_royer','clara.royer@protonmail.com','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','author','2024-06-10 10:40:00');
INSERT INTO users VALUES ('quentin_menard','quentin.menard@gmail.com','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','subscriber','2024-06-15 13:25:00');
INSERT INTO users VALUES ('amelie_colin','amelie.colin@email.com','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','author','2024-07-03 17:50:00');
INSERT INTO users VALUES ('vincent_gauthier','vincent.gauthier@protonmail.com','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','editor','2024-07-12 12:05:00');
INSERT INTO users VALUES ('marine_lebrun','marine.lebrun@gmail.com','$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW','subscriber','2024-07-20 15:20:00');




INSERT INTO category VALUES ('Technologie',"Actualités, tutoriels et analyses sur les nouvelles technologies");
INSERT INTO category VALUES ('Santé',"Conseils santé, bien-être et médecine préventive");
INSERT INTO category VALUES ('Voyage',"Récits de voyage, guides pratiques et conseils touristiques");
INSERT INTO category VALUES ('Cuisine',"Recettes, techniques culinaires et astuces de cuisine");
INSERT INTO category VALUES ('Sport',"Actualités sportives, conseils d'entraînement et nutrition");
INSERT INTO category VALUES ('Éducation',"Pédagogie, conseils d'apprentissage et innovations éducatives");
INSERT INTO category VALUES ('Finance',"Gestion budgétaire, investissements et actualités économiques");
INSERT INTO category VALUES ('Mode',"Tendances, conseils style et actualités de la mode");



INSERT INTO article VALUES (1,"Les Nouvelles Tensions Technologiques en 2024","Explorez les technologies émergentes qui vont transformer notre quotidien cette année...","tech1.jpg","2024-02-20 10:00:00","2024-02-21 11:00:00","admin_blog","Technologie","published",1245);
INSERT INTO article VALUES (2,"Comment Maintenir une Bonne Santé au Travail","Des conseils pratiques pour préserver votre santé physique et mentale...","sante1.jpg","2024-02-25 14:30:00","2024-02-25 14:30:00","admin_blog","Mode","published",876);
INSERT INTO article VALUES (3,"Les 10 Destinations à Visiter Absolument en 2024","Découvrez les destinations qui vont marquer l'année 2024...","voyage1.jpg","2024-03-05 09:15:00","2024-03-06 10:30:00","amelie_colin","Mode","published",0);
INSERT INTO article VALUES (4,"Recette du Gâteau au Chocolat Fondant","Une recette simple et rapide pour un gâteau au chocolat irrésistible...","cuisine1.jpg","2024-03-10 16:45:00","2024-03-11 08:30:00","antoine_chevalier","Voyage","published",2345);
INSERT INTO article VALUES (5,"Préparation Marathon : Guide Complet du Débutant","Tout ce qu'il faut savoir pour préparer son premier marathon...","sport1.jpg","2024-03-15 08:00:00","2024-03-16 09:15:00","caroline_duval","Finance","published",1567);
INSERT INTO article VALUES (6,"Apprendre à Coder en 6 Mois : Mon Parcours","Comment j'ai appris la programmation web en moins de 6 mois...","education1.jpg","2024-03-20 10:30:00","2024-03-21 11:45:00","clara_royer","Technologie","published",3210);
INSERT INTO article VALUES (7,"Investir dans la Cryptomonnaie en 2024","Guide pour débutants sur les opportunités et risques...","finance1.jpg","2024-04-01 12:00:00","2024-04-02 13:30:00","david_morel","Mode","published",1890);
INSERT INTO article VALUES (8,"Les Tendances Mode Printemps-Été 2024","Découvrez les must-have de la saison prochaine...","mode1.jpg","2024-04-05 15:45:00","2024-04-06 16:20:00","elodie_garnier","Mode","published",943);
INSERT INTO article VALUES (9,"Les Avantages du Télétravail pour la Productivité","Comment le travail à distance peut booster vos performances...","tech2.jpg","2024-04-10 18:20:00","2024-04-11 10:15:00","isabelle_leroy","Sport","published",1123);
INSERT INTO article VALUES (10,"Les Superaliments pour Renforcer l'Immunité","10 aliments à intégrer dans votre alimentation pour être en forme...","sante2.jpg","2024-04-15 09:30:00","2024-04-16 14:20:00","jean_dupont","Finance","published",765);
INSERT INTO article VALUES (11,"Voyager en Solo : Mes Conseils Sécurité","Guide pratique pour voyager seul en toute sécurité...","voyage2.jpg","2024-04-20 11:45:00","2024-04-21 09:30:00","julie_roux","Finance","published",890);
INSERT INTO article VALUES (12,"Les Bases de la Pâtisserie Française","Apprenez les techniques fondamentales de la pâtisserie...","cuisine2.jpg","2024-05-02 14:10:00","2024-05-03 16:40:00","lucie_bernard","Finance","published",0);
INSERT INTO article VALUES (13,"Yoga pour Débutants : Programme sur 30 Jours","Un programme progressif pour découvrir le yoga...","sport2.jpg","2024-05-10 11:45:00","2024-05-11 12:30:00","marc_vincent","Mode","published",654);
INSERT INTO article VALUES (14,"Les Méthodes d'Apprentissage des Langues Efficaces","Comparatif des différentes approches pour apprendre une langue...","education2.jpg","2024-05-20 16:30:00","2024-05-21 17:15:00","marie_dubois","Technologie","published",432);
INSERT INTO article VALUES (15,"Économiser pour Son Premier Achat Immobilier","Stratégies pour constituer son apport personnel...","finance2.jpg","2024-06-01 08:15:00","2024-06-02 10:20:00","marine_lebrun","Cuisine","published",987);
INSERT INTO article VALUES (16,"Le Style Minimaliste : Less is More","Comment adopter une garde-robe minimaliste et élégante...","mode2.jpg","2024-06-10 10:40:00","2024-06-11 11:50:00","nicolas_lambert","Mode","published",543);
INSERT INTO article VALUES (17,"Introduction à l'Intelligence Artificielle","Comprendre les bases de l'IA et ses applications...","tech3.jpg","2024-06-15 13:25:00","2024-06-16 14:30:00","pierre_leroy","Cuisine","published",1876);
INSERT INTO article VALUES (18,"La Méditation pour Réduire le Stress","Techniques de méditation accessibles à tous...","sante3.jpg","2024-07-03 17:50:00","2024-07-04 18:45:00","quentin_menard","Cuisine","published",0);
INSERT INTO article VALUES (19,"Voyager avec un Petit Budget","Astuces pour voyager sans se ruiner...","voyage3.jpg","2024-07-12 12:05:00","2024-07-13 13:10:00","sophie_martin","Sport","published",765);
INSERT INTO article VALUES (20,"Les Plats Typiques de la Cuisine Marocaine","Découverte des saveurs et traditions culinaires du Maroc...","cuisine3.jpg","2024-07-20 15:20:00","2024-07-21 16:25:00","thomas_petit","Technologie","published",1098);
INSERT INTO article VALUES (21,"Préparation Physique pour le Ski","Conseils pour se préparer avant la saison de ski...","sport3.jpg","2024-08-01 09:30:00","2024-08-02 10:35:00","vincent_gauthier","Voyage","published",0);
INSERT INTO article VALUES (22,"Les Outils Numériques pour l'Éducation","Les meilleures applications pour apprendre et enseigner...","education3.jpg","2024-08-10 14:45:00","2024-08-11 15:50:00","vincent_gauthier","Sport","published",876);
INSERT INTO article VALUES (23,"Comprendre les Marchés Boursiers","Guide pour débutants en bourse...","finance3.jpg","2024-08-20 11:20:00","2024-08-21 12:25:00","isabelle_leroy","Mode","published",654);
INSERT INTO article VALUES (24,"Le Style Casual Chic au Bureau","Comment être élégant tout en restant confortable...","mode3.jpg","2024-09-01 16:30:00","2024-09-02 17:35:00","julie_roux","Sport","published",432);
INSERT INTO article VALUES (25,"La Sécurité Informatique pour les Particuliers","Protégez vos données et votre vie privée en ligne...","tech4.jpg","2024-09-10 08:15:00","2024-09-11 09:20:00","amelie_colin","Technologie","published",1567);
INSERT INTO article VALUES (26,"L'Importance du Sommeil pour la Santé","Comment améliorer la qualité de son sommeil...","sante4.jpg","2024-09-20 10:25:00","2024-09-21 11:30:00","david_morel","Voyage","published",765);
INSERT INTO article VALUES (27,"Les Plus Beaux Villages de France","Découverte des villages classés parmi les plus beaux de France...","voyage4.jpg","2024-10-01 14:35:00","2024-10-02 15:40:00","amelie_colin","Finance","published",987);
INSERT INTO article VALUES (28,"Les Techniques de Cuisson Santé","Cuire ses aliments tout en préservant les nutriments...","cuisine4.jpg","2024-10-10 16:45:00","2024-10-11 17:50:00","clara_royer","Cuisine","published",543);
INSERT INTO article VALUES (29,"Le CrossFit : Avantages et Risques","Analyse complète de cette discipline sportive...","sport4.jpg","2024-10-20 12:55:00","2024-10-21 13:00:00","caroline_duval","Mode","published",876);
INSERT INTO article VALUES (30,"Apprendre par le Jeu : La Ludopédagogie","Utiliser le jeu comme outil d'apprentissage...","education4.jpg","2024-11-01 09:05:00","2024-11-02 10:10:00","lucie_bernard","Sport","published",654);



INSERT INTO comment VALUES (1,"Excellent article, très bien documenté !","2024-02-21 12:30:00",1,"approved",'admin_blog');
INSERT INTO comment VALUES (2,"Je ne suis pas tout à fait d'accord sur certains points.","2024-02-22 15:45:00",1,"approved",'marie_dubois');
INSERT INTO comment VALUES (3,"Cela m'a beaucoup aidé, merci pour ces conseils.","2024-02-25 16:00:00",2,"approved",'pierre_leroy');
INSERT INTO comment VALUES (4,"Très bel article, les photos sont magnifiques !","2024-02-26 10:15:00",3,"pending",'jean_dupont');
INSERT INTO comment VALUES (5,"Je trouve que certains conseils sont dangereux.","2024-02-27 14:20:00",4,"spam",'lucie_bernard');
INSERT INTO comment VALUES (6,"Parfait pour les débutants comme moi, merci !","2024-02-28 11:30:00",5,"approved",'thomas_petit');
INSERT INTO comment VALUES (7,"Très détaillé, j'ai appris beaucoup de choses.","2024-02-29 09:45:00",6,"approved",'julie_roux');
INSERT INTO comment VALUES (8,"C'est exactement ce que je cherchais, merci !","2024-03-01 13:00:00",7,"approved",'marc_vincent');
INSERT INTO comment VALUES (9,"Je ne comprends pas la partie sur les investissements.","2024-03-02 16:15:00",8,"pending",'isabelle_leroy');
INSERT INTO comment VALUES (10,"Super article, j'ai hâte de lire la suite !","2024-03-03 10:30:00",9,"approved",'admin_blog');
INSERT INTO comment VALUES (11,"Les tendances présentées sont déjà dépassées.","2024-03-04 14:45:00",10,"spam",'isabelle_leroy');
INSERT INTO comment VALUES (12,"Je vais essayer la recette ce week-end !","2024-03-05 09:00:00",11,"approved",'david_morel');
INSERT INTO comment VALUES (13,"Bonnes astuces pour économiser, merci.","2024-03-06 12:15:00",12,"approved",'caroline_duval');
INSERT INTO comment VALUES (14,"Le style minimaliste n'est pas pour tout le monde.","2024-03-07 15:30:00",13,"pending",'nicolas_lambert');
INSERT INTO comment VALUES (15,"Très bon tutoriel sur l'IA pour débutants.","2024-03-08 11:45:00",14,"approved",'elodie_garnier');
INSERT INTO comment VALUES (16,"La méditation a changé ma vie, merci pour l'article.","2024-03-09 09:00:00",15,"approved",'clara_royer');
INSERT INTO comment VALUES (17,"Voyager avec un petit budget c'est possible !","2024-03-10 13:15:00",16,"approved",'quentin_menard');
INSERT INTO comment VALUES (18,"Les plats marocains sont délicieux, merci.","2024-03-11 16:30:00",17,"pending",'quentin_menard');
INSERT INTO comment VALUES (19,"Je me prépare pour le ski, merci pour les conseils.","2024-03-12 10:45:00",18,"approved",'quentin_menard');
INSERT INTO comment VALUES (20,"Quelles applications recommandez-vous pour les enfants ?","2024-03-13 14:00:00",19,"approved",'amelie_colin');
INSERT INTO comment VALUES (21,"La bourse me fait peur, merci pour les explications.","2024-03-14 09:15:00",20,"approved",'vincent_gauthier');
INSERT INTO comment VALUES (22,"Je cherche justement un style casual chic, merci !","2024-03-15 12:30:00",21,"pending",'marine_lebrun');
INSERT INTO comment VALUES (23,"Important de parler de sécurité informatique.","2024-03-16 15:45:00",22,"approved",'marine_lebrun');
INSERT INTO comment VALUES (24,"Je dors mal, merci pour ces conseils.","2024-03-17 11:00:00",23,"approved",'marine_lebrun');
INSERT INTO comment VALUES (25,"J'ai visité certains villages, ils sont magnifiques !","2024-03-18 09:15:00",24,"approved",'marine_lebrun');
