CREATE DATABASE dev_incubator_database;
CREATE TABLE `dev_incubator_database`.`user` (
 `userid` INT NOT NULL AUTO_INCREMENT,
 `name` VARCHAR(45) NULL,
 `sureName` VARCHAR(45) NULL,
 PRIMARY KEY (`userid`));

CREATE TABLE `dev_incubator_database`.`account` (
 `accountid` INT NOT NULL AUTO_INCREMENT,
 `account` INT NOT NULL,
 `userid` INT NOT NULL,
 PRIMARY KEY (`accountid`),
 INDEX `fk_account_1_idx` (`userid` ASC),
 CONSTRAINT `fk_account_1`
 FOREIGN KEY (`userid`)
 REFERENCES `dev_incubator_database`.`user` (`userid`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION);

insert into account (account, userid) values (98, 1), (1023, 2), (11111111, 3), (222222223, 3), (999923, 4), (824, 4), (666, 4), (123454321, 5), (1, 6), (2, 7), (421525, 8), (123115, 9), (124152125, 10);
insert into user (name, sureName) values ('Ivan','Ivanov'), ('Sergey', 'Sergeev'), ('Roman', 'Abramovich'), ('Pavel', 'Durov'), ('Cristiano', 'Ronaldo'), ('Tima', 'Belorusskih'), ('Danila', 'Poperechniy'), ('Alexey', 'Ivanov'), ('Garik', 'Harlamov'), ('Alexander', 'Lukashenko');