CREATE DATABASE IF NOT EXISTS mailchat;


USE mailchat;

CREATE TABLE IF NOT EXISTS DataUsers (
    id_dataUser INT(22) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL,
    lastname VARCHAR(100) NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    CONSTRAINT uniquedata UNIQUE(id_dataUser)
);

CREATE TABLE IF NOT EXISTS Users (
    id_user INT(22) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    lasname VARCHAR(255),
    id_datauser INT(22) NOT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    CONSTRAINT uniquedata UNIQUE(id_user),
    CONSTRAINT id_User_cnt FOREIGN KEY (id_datauser) REFERENCES DataUsers(id_dataUser)
);

CREATE TABLE IF NOT EXISTS Task (
    id_task INT(22) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200),
    id_user INT(22) NOT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    CONSTRAINT uniquedata UNIQUE(id_task),
    CONSTRAINT id_task_cnt FOREIGN KEY (id_user) REFERENCES Users(id_user)
);

CREATE TABLE IF NOT EXISTS Messenges (
    id_mess INT(22) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_rem INT(22) NOT NULL,
    id_res INT(22) NOT NULL, 
    `key` VARCHAR(100),
    `Token` VARCHAR(255),
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    CONSTRAINT uniquedata UNIQUE(id_mess),
    CONSTRAINT id_mess0_cnt FOREIGN KEY (id_rem) REFERENCES Users(id_user),
    CONSTRAINT id_mess1_cnt FOREIGN KEY (id_res) REFERENCES Users(id_user)
);

CREATE TABLE IF NOT EXISTS `Groups` (
    id_group INT(22) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    id_user INT(22) NOT NULL,
    id_mess INT(22) NOT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    CONSTRAINT uniquedata UNIQUE(id_group),
    CONSTRAINT id_group0_cnt FOREIGN KEY (id_user) REFERENCES Users(id_user),
    CONSTRAINT id_group1_cnt FOREIGN KEY (id_mess) REFERENCES Messenges(id_mess)
);

CREATE TABLE IF NOT EXISTS Delete_messense (
    id_deletmess INT(22) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_mess INT(22) NOT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    CONSTRAINT uniquedata UNIQUE(id_deletmess),
    CONSTRAINT id_deletmess0_cnt FOREIGN KEY (id_mess) REFERENCES Messenges(id_mess)
);
