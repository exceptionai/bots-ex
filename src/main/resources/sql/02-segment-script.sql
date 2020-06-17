--DROP TABLE tb_segment;
--DROP SEQUENCE SEGMENT_SEQ;

CREATE TABLE tb_segment (
    id_segment NUMBER(11) NOT NULL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    tb_bot NUMBER(11) NOT NULL,
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

commit;

SELECT * FROM TB_SEGMENT;