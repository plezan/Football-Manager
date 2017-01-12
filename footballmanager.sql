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
