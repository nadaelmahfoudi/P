--@block
create table users(
    id INT PRIMARY KEY NOT NULL auto_increment,
    userName varchar(255),
    email varchar(255) unique,
    password varchar(255) unique
);
--@block
INSERT INTO users (userName, email, password)
VALUES ( 'nada','navtvelma10@gmail.com','VYUERZR647'),
       ( 'malak','nada2@gmail.com','VY47'),
       ( 'mehdi','elma34@gmail.com','CFGG647')
--@block
select * from users;


--@block
create table categories(
    id INT PRIMARY KEY NOT NULL auto_increment,
    categorieName varchar(255)
)
--@block
INSERT into categories (categorieName)
values ('education'),
       ('art'),
       ('design')
--@block
select * from categories;


--@block
CREATE TABLE sous_categories(
    id INT PRIMARY KEY NOT NULL auto_increment,
    souscategorie_name varchar(255),
    categorie_id int,
    foreign key (categorie_id) references categories(id)
)
--@block
INSERT into sous_categories (souscategorie_name,categorie_id)
VALUES ('HTML',1),
       ('JS',1),  
       ('CSS',2)
--@block
select * from sous_categories
inner join categories on sous_categories.categorie_id = categories.id;


--@block
CREATE TABLE projects(
    id INT PRIMARY KEY NOT NULL auto_increment,
    title varchar(255) not null,
    description varchar(255) not null,
    categorie_id int,
    foreign key (categorie_id) references categories(id),
    subcategorie_id int,
    foreign key (subcategorie_id) references sous_categories(id),
    user_id int,
    foreign key (user_id) references users(id)
    )
    --@block
    INSERT into projects( title, description, categorie_id, subcategorie_id, user_id)
    values ('freelance','Crafting a unique and impactful experience through a creative and functional approach',1, 1, 1),
           ('education','create an engaging and enriching learning environment',2, 2, 2),
           ('Dropshopping','model where convenience meets commerce',3, 3, 3)
    --@block
    select * from projects;


--@block
CREATE TABLE freelancers(
    id INT PRIMARY KEY NOT NULL auto_increment,
    freelance_name varchar(255),
    skill varchar(255),
    user_id int,
    foreign key (user_id) references users(id)
)
--@block
INSERT INTO freelancers(freelance_name,skill,user_id)
VALUES ('ExpertRédaction','WritingExpert',1),
       ('TraducteurTech','TechTranslator',3),
       ('MarketingMaestro','Planification',2),
       ('CodeCraftsman','Full-Stack Software Development',1)
--@block
select * from freelancers


--@block
create table offers(
    id INT PRIMARY KEY NOT NULL auto_increment,
    Montant DECIMAL(10, 2),
    Delai INT,
    ID_Freelance INT,
    FOREIGN KEY (ID_Freelance) REFERENCES Freelancers(id),
    ID_Projet INT,
    FOREIGN KEY (ID_Projet) REFERENCES Projects(id)
)
--@block
INSERT INTO offers(Montant, Delai, ID_freelance, ID_Projet)
values (1000.50, 7, 1, 1),
       (750.00, 5, 2, 2),
       (1200.75, 10, 3, 3),
       (500.25, 3, 1, 2)
--@block
select * from offers;




--@block
create TABLE Testimonials(
    id INT PRIMARY KEY NOT NULL auto_increment,
    comment varchar(255),
    user_id int,
    FOREIGN KEY (user_id) references users(id)
)
--@block
INSERT INTO Testimonials(comment, user_id)
VALUES('Great service! Highly recommended.', 1),
      ('Excellent experience with this freelancer.', 2),
      ('The project was completed ahead of schedule. Impressive!', 3),
      ('Very satisfied with the outcome. Will hire again.', 3)
--@block
select * from Testimonials;