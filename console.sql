create table cpus(
    id tinyint AUTO_INCREMENT,
    name varchar(1000),
    count varchar(50),
    PRIMARY KEY (id)
) CHAR SET utf8 COLLATE utf8mb3_bin;
create table kinds(
    id tinyint AUTO_INCREMENT,
    name varchar(1000),
    count varchar(50),
    PRIMARY KEY (id)
) CHAR SET utf8 COLLATE utf8mb3_bin;
create table circulation(
    top tinyint AUTO_INCREMENT,
    name varchar(1000),
    price varchar(50),
    PRIMARY KEY (top)
) CHAR SET utf8 COLLATE utf8mb3_bin;
ALTER table circulation change count price varchar(50);
INSERT INTO circulation(name, count) values('intel i5','35万+');
DROP table circulation;
SELECT * from cpus where name like '%intel%';
SELECT count(*) from cpus where name like '%AMD%';
SELECT count(*) from cpus where name like '%Apple%';
SELECT count(name) from cpus where name like '%海思麒麟%';
SELECT count(name) from circulation where name like '%联想%';