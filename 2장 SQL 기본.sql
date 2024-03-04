/*
    ��¥ : 2024/03/04
    �̸� : ������
    ���� : 2�� sql�⺻ �ǽ�
*/
//1-1. ���̺� ����
CREATE TABLE USER1 (
    ID VARCHAR2(20),
    NAME VARCHAR2(20),
    HP CHAR(13),
    AGE NUMBER
);
DROP TABLE USER1;

//1-2. insert
INSERT INTO USER1 VALUES ('A101', '������', '010-1234-1111', 25);
INSERT INTO USER1 VALUES ('A102', '������', '010-1234-2222', 23);
INSERT INTO USER1 VALUES ('A103', '�庸��', '010-1234-3333', 32);
INSERT INTO USER1 (id, name, age) VALUES ('A104', '������', 45);
INSERT INTO USER1 (id, name, hp) VALUES ('A105', '�̼���', '010-1234-5555');

//1-3. select
SELECT * FROM USER1;
SELECT * FROM USER1 WHERE id='A101';
SELECT * FROM USER1 WHERE name='������';
SELECT * FROM USER1 WHERE age > 30;
SELECT id, name, age FROM USER1;

//1-4. update
UPDATE User1 SET hp='010-1234-4444' WHERE id='A104';
UPDATE User1 SET age=51 WHERE id='A105';
UPDATE User1 SET hp='010-1234-1001', age=27 WHERE id='A101';

//1-5. delete
DELETE FROM User1 WHERE id='A101';
DELETE FROM User1 WHERE id='A102' AND age=25;
DELETE FROM User1 WHERE age >= 30;

//2-1. Primary Key
CREATE TABLE USER2(
    ID      VARCHAR2(20) PRIMARY KEY,
    NAME    VARCHAR2(20),
    HP      CHAR(13),
    AGE     NUMBER(2)
);

//2-2. Unique
CREATE TABLE USER3(
    ID      VARCHAR2(20) PRIMARY KEY,
    NAME    VARCHAR2(20),
    HP      CHAR(13) UNIQUE,
    AGE     NUMBER(3)
);

//2-3. Foreign Key
CREATE TABLE PARENT(
    PID     VARCHAR2(20) PRIMARY KEY,
    NAME    VARCHAR2(20),
    HP      CHAR(13) UNIQUE
);

CREATE TABLE CHILD(
    CID     VARCHAR2(20) PRIMARY KEY,
    NAME    VARCHAR2(20),
    HP      CHAR(13) UNIQUE,
    PARENT  VARCHAR2(20),
    FOREIGN KEY (PARENT) REFERENCES PARENT (PID)
);

INSERT INTO PARENT VALUES ('P101', '�輭��', '010-1234-1001');
INSERT INTO PARENT VALUES ('P102', '�̼���', '010-1234-1002');
INSERT INTO PARENT VALUES ('P103', '�ɻ��Ӵ�', '010-1234-1003');

INSERT INTO CHILD VALUES ('C101', '������', '010-1234-2001', 'P101');
INSERT INTO CHILD VALUES ('C102', '�̹��', '010-1234-2002', 'P102');
INSERT INTO CHILD VALUES ('C103', '�̹��', '010-1234-2003', 'P102');
INSERT INTO CHILD VALUES ('C104', '����', '010-1234-2004', 'P103');

//2-4. DEFAULT�� NOT NULL
CREATE TABLE USER4(
    NAME    VARCHAR2(20) PRIMARY KEY,
    GENDER  CHAR(1) NOT NULL,
    AGE     INT DEFAULT 1,
    ADDR    VARCHAR2(255)
);
INSERT INTO USER4 VALUES ('������', 'M', 23, '���ؽ�');
INSERT INTO USER4 VALUES ('������', 'M', 21, '���ֽ�');
INSERT INTO USER4 (NAME, GENDER, ADDR) VALUES ('�Ż��Ӵ�', 'F', '������');
INSERT INTO USER4 (NAME, GENDER) VALUES ('�̼���', 'M');
INSERT INTO USER4 (NAME, AGE) VALUES ('�����', 33);//���� ��� �Է¿���.

CREATE TABLE USER5(
    NAME    VARCHAR2(20) NOT NULL,
    GENDER  CHAR(1) NOT NULL CHECK(GENDER IN('M', 'F')),
    AGE     INT DEFAULT 1 CHECK(AGE > 0 AND AGE < 100),
    ADDR    VARCHAR2(255)
);
INSERT INTO USER5 VALUES ('������', 'M', 23, '���ؽ�');
INSERT INTO USER5 VALUES ('������', 'M', 21, '���ֽ�');
INSERT INTO USER5 (NAME, GENDER, ADDR) VALUES ('�Ż��Ӵ�', 'F', '������');
INSERT INTO USER5 (NAME, GENDER) VALUES ('�̼���', 'M');
INSERT INTO USER5 (NAME, AGE) VALUES ('�����', 33); //���� �� NULL







