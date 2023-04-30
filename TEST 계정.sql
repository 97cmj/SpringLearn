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
------- board�� insert�� �Ҷ� bno�� seq���� �ִ� �ڵ� (���߿� ����ϰ� ����)--------------
CREATE TRIGGER vam_board_trigger
BEFORE INSERT ON vam_board
FOR EACH ROW
BEGIN
  SELECT vam_board_seq.NEXTVAL INTO :NEW.bno FROM dual;
END;
--------------------------------------------------------------------
insert into vam_board(title, content, writer) values ('�׽�Ʈ ����', '�׽�Ʈ ����', '�۰�');
insert into vam_board(title, content, writer) values ('�׽�Ʈ ����', '�׽�Ʈ ����', '�۰�');
insert into vam_board(title, content, writer) values ('�׽�Ʈ ����', '�׽�Ʈ ����', '�۰�');
---------------------------------------------------------------------------------
select * from vam_board;
