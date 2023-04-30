CREATE SEQUENCE vam_board_seq START WITH 1 INCREMENT BY 1;
---------------------------------------------------
CREATE TABLE vam_board(
  bno NUMBER PRIMARY KEY,
  title VARCHAR2(150) NOT NULL,
  content VARCHAR2(2000) NOT NULL,
  writer VARCHAR2(50) NOT NULL,
  regdate DATE DEFAULT SYSDATE,
  updatedate DATE DEFAULT SYSDATE
);
------- board에 insert를 할때 bno에 seq값을 넣는 코드 (나중에 요긴하게 쓰기)--------------
CREATE TRIGGER vam_board_trigger
BEFORE INSERT ON vam_board
FOR EACH ROW
BEGIN
  SELECT vam_board_seq.NEXTVAL INTO :NEW.bno FROM dual;
END;
--------------------------------------------------------------------
insert into vam_board(title, content, writer) values ('테스트 제목', '테스트 내용', '작가');
insert into vam_board(title, content, writer) values ('테스트 제목', '테스트 내용', '작가');
insert into vam_board(title, content, writer) values ('테스트 제목', '테스트 내용', '작가');
---------------------------------------------------------------------------------
select * from vam_board;
