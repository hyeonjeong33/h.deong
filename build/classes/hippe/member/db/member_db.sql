-- ::::::::::::::::::::::::: 회원용 ::::::::::::::::::::::::::::::::

DROP TABLE MEMBER;

-- 회원아이디, 비밀번호, 회원이름, 전화번호, 주소, 이메일
-- 회원활동상태(Y/N), 회원등급
CREATE TABLE MEMBER(
	MEMBER_ID VARCHAR2(500) PRIMARY KEY,
	MEMBER_PW VARCHAR2(1000) NOT NULL,
	MEMBER_NAME VARCHAR2(200) NOT NULL,
	MEMBER_PHONE VARCHAR2(400) NOT NULL,
	MEMBER_ADDRESS VARCHAR2(2000) NOT NULL,
	MEMBER_EMAIL VARCHAR2(1000) NOT NULL,
	MEMBER_ENABLED VARCHAR2(2) NOT NULL,
	MEMBER_LEVEL VARCHAR2(20),
	CONSTRAINT UNQ_MEMBER_EMAIL CHECK (MEMBER_ENABLED IN ('Y','N'))
);

SELECT * FROM MEMBER;

DELETE FROM MEMBER;

