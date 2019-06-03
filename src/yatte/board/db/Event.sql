
DROP SEQUENCE MDBOARDSEQ;
DROP TABLE MDBOARD;

CREATE SEQUENCE MDBOARDSEQ;

-- 번호, 작성자, 제목, 내용, 작성일
CREATE TABLE MDBOARD(
	SEQ NUMBER PRIMARY KEY,
	WRITER VARCHAR2(1000) NOT NULL,
	TITLE VARCHAR2(2000) NOT NULL,
	CONTENT VARCHAR2(4000) NOT NULL,
	REGDATE DATE NOT NULL 
);

SELECT SEQ, WRITER, TITLE,CONTENT, REGDATE FROM MDBOARD;

INSERT INTO MDBOARD(SEQ, WRITER, TITLE, CONTENT, REGDATE)
VALUES(MDBOARDSEQ.NEXTVAL,'관리자','테스트 제목','테스트 내용',SYSDATE);


drop table board;

create table board(
num number not null,  -- 글번호
name varchar2(12) not null,  -- 글쓴이   -- UTF-8 한글은 3byte , 영어 -1byte;
pwd varchar2(12) not null, -- 비밀번호
subject varchar2(50) not null, -- 제목
content varchar2(4000) not null, -- 내용
regdate date not null, -- 작성일
hit number not null, -- 조회수
parent number not null, -- 부모글 번호 
sort number not null, -- 답글 정렬을 위한 소트필드
tab number not null, -- 들여쓰기 (깊이)
constraint pk_board primary key(num)
);

select * from board order by num desc;

insert into board values(16,'gg','1234','안녕하세요','gg',SYSDATE,1,1,1,1);

insert into board
  values((select NVL(max(num),0)+1 from board),'현정','1234','안녕','ㅎㅎ',sysdate,0,(select NVL(max(num),0)+1 from board),0,0);