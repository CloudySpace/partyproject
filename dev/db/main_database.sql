CREATE DATABASE feval;
USE feval;
CREATE TABLE users(
   ID   INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
   ADDRESS CHAR (50)     NOT NULL,
   NAME VARCHAR (40)     NOT NULL,
   LAST VARCHAR (40)     NOT NULL,
   MAIL VARCHAR (50)     NOT NULL,
   PASSWORD BLOB         NOT NULL,
   PHONE VARCHAR (20)    NOT NULL,
   USER_TYPE VARCHAR (20) NOT NULL
);
CREATE TABLE services(
    ID   INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    KIND VARCHAR (20)    NOT NULL,
    DISP VARCHAR (30)    NOT NULL,
    DESC VARCHAR (300)   NOT NULL,
    PRICE INT            NOT NULL,
    ID_USER INT          NOT NULL
);
CREATE TABLE sales(
    ID   INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    TOTAL FLOAT (8,4)    NOT NULL,
    DISCOUNTS FLOAT (8,4) NOT NULL,
    SUBTOTAL FLOAT (8,4) NOT NULL,
    STATE VARCHAR (20)   NOT NULL
);