
/* Drop Triggers */

DROP TRIGGER TRI_LockerUser_user_id;
DROP TRIGGER TRI_User_user_id;



/* Drop Tables */

DROP TABLE LockerUser CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_LockerUser_user_id;
DROP SEQUENCE SEQ_User_user_id;




/* Create Sequences */

CREATE SEQUENCE SEQ_LockerUser_user_id INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_User_user_id INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE LockerUser
(
	user_id number(10) NOT NULL UNIQUE,
	user_email char NOT NULL UNIQUE,
	user_password varchar2(20) NOT NULL,
	user_name varchar2(10) NOT NULL,
	user_phone varchar2(11) NOT NULL,
	user_birth date NOT NULL,
	user_agreeForMessage varchar2(3),
	PRIMARY KEY (user_id, user_email)
);



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_LockerUser_user_id BEFORE INSERT ON LockerUser
FOR EACH ROW
BEGIN
	SELECT SEQ_LockerUser_user_id.nextval
	INTO :new.user_id
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_User_user_id BEFORE INSERT ON User
FOR EACH ROW
BEGIN
	SELECT SEQ_User_user_id.nextval
	INTO :new.user_id
	FROM dual;
END;

/




