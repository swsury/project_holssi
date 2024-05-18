/* Drop Triggers */

DROP TRIGGER tri_lockeruser_user_id;

DROP TRIGGER tri_user_user_id;



/* Drop Tables */

DROP TABLE lockeruser CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE seq_lockeruser_user_id;

DROP SEQUENCE seq_user_user_id;




/* Create Sequences */

CREATE SEQUENCE seq_lockeruser_user_id INCREMENT BY 1 START WITH 1;

CREATE SEQUENCE seq_user_user_id INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE lockeruser (
    user_id              NUMBER(10) NOT NULL UNIQUE,
    user_email           CHAR NOT NULL UNIQUE,
    user_password        VARCHAR2(20) NOT NULL,
    user_name            VARCHAR2(10) NOT NULL,
    user_phone           VARCHAR2(11) NOT NULL,
    user_birth           DATE NOT NULL,
    user_agreeformessage VARCHAR2(3),
    PRIMARY KEY ( user_id,
                  user_email )
);



/* Create Triggers */

CREATE OR REPLACE TRIGGER tri_lockeruser_user_id BEFORE
    INSERT ON lockeruser
    FOR EACH ROW
BEGIN
    SELECT
        seq_lockeruser_user_id.NEXTVAL
    INTO :new.user_id
    FROM
        dual;

END;
/

CREATE OR REPLACE TRIGGER tri_user_user_id BEFORE
    INSERT ON user
    FOR EACH ROW
BEGIN
    SELECT
        seq_user_user_id.NEXTVAL
    INTO :new.user_id
    FROM
        dual;

END;
/