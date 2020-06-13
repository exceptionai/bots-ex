--DROP TABLE tb_segment;
--DROP SEQUENCE SEGMENT_SEQ;

CREATE TABLE tb_segment (
    id_segment NUMBER(11) NOT NULL PRIMARY KEY,
    name VARCHAR(255),
    tb_bot NUMBER(11),
    CONSTRAINT FK_ID_BOT FOREIGN KEY (tb_bot) REFERENCES tb_bot(id_bot)
);

CREATE SEQUENCE segment_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER tr_insert_id_segment
                  BEFORE INSERT ON tb_segment FOR EACH ROW       
BEGIN
 
SELECT segment_seq.NEXTVAL
INTO :NEW.id_segment
FROM DUAL;
END;
/

INSERT INTO TB_SEGMENT (name, tb_bot) VALUES ('Sustentabilidade', 1);
INSERT INTO TB_SEGMENT (name, tb_bot) VALUES ('Números em binário', 2);
INSERT INTO TB_SEGMENT (name, tb_bot) VALUES ('Aprender com o usuário', 3);
INSERT INTO TB_SEGMENT (name, tb_bot) VALUES ('Formar-se mais uma vez ou ter mais uma experiência no mercado de trabalho, aleatoriamente', 4);

commit;

SELECT * FROM TB_SEGMENT;