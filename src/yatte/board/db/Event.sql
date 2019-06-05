
drop table board;

create table board(
postnum number not null,  -- 글번호
id varchar2(12) not null,  -- 글쓴이   -- UTF-8 한글은 3byte , 영어 -1byte;
pwd varchar2(12) not null, -- 비밀번호
title varchar2(50) not null, -- 제목
content varchar2(4000) not null, -- 내용
today date not null, -- 작성일
hit number not null, -- 조회수
parent number not null, -- 부모글 번호 
sort number not null, -- 답글 정렬을 위한 소트필드
tab number not null, -- 들여쓰기 (깊이)
constraint pk_board primary key(postnum)
);

select * from board order by num desc;

insert into board values(16,'gg','1234','안녕하세요','gg',SYSDATE,1,1,1,1);

insert into board
  values((select NVL(max(postnum),0)+1 from board),'현정','1234',
  '안녕','ㅎㅎ',sysdate,0,(select NVL(max(postnum),0)+1 from board),0,0);
  
select rn, postnum,id,pwd,title,content,today,hit,parent,sort,tab 
		from (select Rownum as rn, postnum,id,pwd,title,content,today,hit,parent,sort,tab
		from (select * FROM BOARD ORDER BY POSTNUM DESC) where rn >=1 and rn <=10;
		
