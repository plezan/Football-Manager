#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------

DROP DATABASE IF EXISTS FootballManager;
CREATE DATABASE IF NOT EXISTS FootballManager;

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

(1,"Real Madrid",610000000,null,0,"Zinédine Zidane"),
(2,"FC Barcelone",585000000,null,0,"Luis Enrique"),
(3,"Bayern de Munich",520000000,null,0,"Carlo Ancelotti"),
(4,"Paris Saint Germain",500000000,null,0,"Unai Emery"),
(5,"Manchester City",474000000,null,0,"Pep Guardiola"),
(6,"Arsenal"455000000,null,0,"Arsène Wenger"),
(7,"Chelsea",417000000,null,0,"Antonio Conte"),
(8,"Liverpool",385000000,null,0,"Jürgen Klopp"),
(9,"Juventus Turin",380000000,null,0,"Massimiliano Allegri"),
(10,"Borussia Dortmund",352000000,null,0,"Thomas Tuchel")
;

INSERT INTO Player VALUES

(1,"Keylor Navas",30,"male",1,85,)
;