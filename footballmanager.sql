#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------

DROP DATABASE IF EXISTS footballManager;
CREATE DATABASE IF NOT EXISTS footballManager;

USE footballManager;
#------------------------------------------------------------
# Table: Team
#------------------------------------------------------------

CREATE TABLE Team(
        id_team          int (11) Auto_increment  NOT NULL ,
        name_team        Varchar (40) NOT NULL ,
        budget_team      Decimal (25,2) NOT NULL ,
        score_team       Int ,
        pointnumber_team Int NOT NULL ,
        coach_team       Varchar (25) NOT NULL ,
        img_src_team     Varchar(64),
        PRIMARY KEY (id_team )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Player
#------------------------------------------------------------

CREATE TABLE Player(
        id_player          int (11) Auto_increment  NOT NULL ,
        name_player        Varchar (50) NOT NULL ,
        age_player         Int NOT NULL ,
        gender_player      Varchar (25) NOT NULL ,
        shirtnumber_player Varchar (25) NOT NULL ,
        score_player       Int NOT NULL ,
        position_player    Int NOT NULL ,
        img_src_player     Varchar(64),
        id_team            Int NOT NULL ,
        PRIMARY KEY (id_player )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Matchs
#------------------------------------------------------------

CREATE TABLE Matchs(
        id_matchs   int (11) Auto_increment  NOT NULL ,
        name_matchs  Varchar (60) NOT NULL ,
        place_matchs Varchar (40) NOT NULL ,
        score_matchs Int NOT NULL ,
        PRIMARY KEY (id_matchs )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: participate
#------------------------------------------------------------

CREATE TABLE participate(
        id_team  Int NOT NULL ,
        id_matchs Int NOT NULL ,
        PRIMARY KEY (id_team ,id_matchs )
)ENGINE=InnoDB;

ALTER TABLE Player ADD CONSTRAINT FK_Player_id_team FOREIGN KEY (id_team) REFERENCES Team(id_team);
ALTER TABLE participate ADD CONSTRAINT FK_participate_id_team FOREIGN KEY (id_team) REFERENCES Team(id_team);
ALTER TABLE participate ADD CONSTRAINT FK_participate_id_matchs FOREIGN KEY (id_matchs) REFERENCES Matchs(id_matchs);

INSERT INTO Team VALUES

(1,"Real Madrid",610000000,null,0,"Zinédine Zidane",null),
(2,"FC Barcelone",585000000,null,0,"Luis Enrique",null),
(3,"Bayern de Munich",520000000,null,0,"Carlo Ancelotti",null),
(4,"Paris Saint Germain",500000000,null,0,"Unai Emery",null),
(5,"Manchester City",474000000,null,0,"Pep Guardiola",null),
(6,"Arsenal",455000000,null,0,"Arsène Wenger",null),
(7,"Chelsea",417000000,null,0,"Antonio Conte",null),
(8,"Liverpool",385000000,null,0,"Jürgen Klopp",null),
(9,"Juventus Turin",380000000,null,0,"Massimiliano Allegri",null),
(10,"Borussia Dortmund",352000000,null,0,"Thomas Tuchel",null)
;

INSERT INTO Player VALUES

(1,"Keylor Navas",30,"male",1,85,"goal keeper","KEYLOR.jpg",1),
(2,"K. Casilla",30,"male",13,81,"goal keeper","CASILLA.jpg",1),
(3,"Rubén Yáñez",23,"male",25,64,"goal keeper","YANEZ.jpg",1),
(4,"Carvajal",25,"male",2,83,"defender","CARVAJAL.jpg",1),
(5,"Pepe",33,"male",3,88,"defender","PEPE.jpg",1),
(6,"Sergio Ramos",30,"male",4,88,"defender","RAMOS.jpg",1),
(7,"Varane",23,"male",5,84,"defender","VARANE.jpg",1),
(8,"Nacho",26,"male",6,77,"defender","NACHO.jpg",1),
(9,"Marcelo",28,"male",12,86,"defender","MARCELO.jpg",1),
(10,"Coentrão",28,"male",15,80,"defender","COENTRAO.jpg",1),
(11,"Danilo",25,"male",23,79,"defender","DANILO.jpg",1),
(12,"Kroos",27,'male',8,86,"midfielder","KROOS.jpg",1),
(13,"James Rodríguez",25,"male",10,87,"midfielder","JAMES.jpg",1),
(14,"Casemiro",24,"male",14,80,"midfielder","CASEMIRO.jpg",1),
(15,"Kovacic",22,"male",16,80,"midfielder","KOVACIC.jpg",1),
(16,"Modric",31,"male",19,89,"midfielder","MODRIC.jpg",1),
(17,"Asensio",20,"male",20,81,"midfielder","MARCO-ASENSIO.jpg",1),
(18,"Isco",24,"male",22,84,"midfielder","ISCO.jpg",1),
(19,"Ronaldo",31,"male",7,94,"striker","CRISTIANO.jpg",1),
(20,"Benzema",29,"male",9,87,"striker","BENZEMA.jpg",1),
(21,"Bale",27,"male",11,90,"striker","BALE.jpg",1),
(22,"Lucas Vázquez",25,"male",17,78,"striker","LUCAS-VAZQUEZ.jpg",1),
(23,"Mariano",23,"male",18,68,"striker","MARIANO.jpg",1),
(24,"Morata",24,"male",24,83,"striker","MORATA.jpg",1),
(25,"Ter Stegen",24,"male",1,83,"goal keeper","TER-STERGEN.jpg",2),
(26,"Piqué",29,"male",3,86,"defender","PIQUE.jpg",2),
(27,"I. Rakitic",28,"male",4,87,"midfielder","RAKITIC.jpg",2),
(28,"Sergio",28,"male",5,87,"midfielder","BUSQUETS.jpg",2),
(29,"Denis Suárez",23,"male",6,80,"midfielder","DENIS-SUAREZ.jpg",2),
(30,"Arda",29,"male",7,84,"midfielder","ARDA.jpg",2),
(31,"A. Iniesta",32,"male",8,89,"midfielder","INIESTA.jpg",2),
(32,"Suárez",29,"male",9,91,"striker","SUAREZ.jpg",2)

;