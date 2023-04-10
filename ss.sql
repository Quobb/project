`employee`CREATE DATABASE PHARMARCY_1;
USE PHARMARCY_1;

CREATE TABLE company
(
compy_name VARCHAR(40),
compy_id VARCHAR(40),
compy_type VARCHAR(40),
PRIMARY KEY(compy_id)
);

CREATE TABLE branch
(
brnch_nme VARCHAR(40),
brnch_id VARCHAR(40),
brnch_loct VARCHAR(40),
compy_id VARCHAR(40),
PRIMARY KEY(brnch_id)
);

CREATE TABLE employee
(
emply_fname VARCHAR(40),
emply_lname VARCHAR(40),
emply_id VARCHAR(40),
emply_cnt VARCHAR(40),
emply_add VARCHAR(40),
brnch_id VARCHAR(40),
compy_id VARCHAR(50),
ms_id VARCHAR(50),
login_id VARCHAR(50),
PRIMARY KEY(emply_id)
);

CREATE TABLE stock
(
stock_id VARCHAR(40),
stock_nme VARCHAR(40),
stock_type VARCHAR(40),
PRIMARY KEY (stock_id)
);

CREATE TABLE medical_shop
(
ms_name VARCHAR(40),
ms_id VARCHAR(40),
ms_typ VARCHAR(40),
ms_add VARCHAR(40),
brnch_id VARCHAR(40),
emply_id VARCHAR(40),
PRIMARY KEY(ms_id)

);

CREATE TABLE medicine
(
med_name VARCHAR(40),
med_id VARCHAR(40),
med_qty VARCHAR(40),
med_compy VARCHAR(40),
med_cost VARCHAR(40),

brnch_id VARCHAR(40),

PRIMARY KEY (med_id)
);

CREATE TABLE login
(
login_name VARCHAR(40),
login_id VARCHAR(40),
login_email VARCHAR(40),
login_pass VARCHAR(40),
emply_id VARCHAR(40),
brnch_id VARCHAR(40),
PRIMARY KEY(login_id)
);



ALTER TABLE company
ADD  compy_add VARCHAR(40)  
AFTER compy_loct
