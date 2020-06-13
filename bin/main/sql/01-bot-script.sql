--DROP TABLE tb_bot;
--DROP SEQUENCE bot_SEQ;

CREATE TABLE tb_bot (
    id_bot NUMBER(11) NOT NULL PRIMARY KEY,
    name VARCHAR2(255),
    welcome_msg VARCHAR(255),
    farewell_msg VARCHAR(255),
    downtime NUMBER(11),
    default_answer VARCHAR(255)
);

CREATE SEQUENCE BOT_SEQ START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER tr_insert_id_bot
                  BEFORE INSERT ON tb_bot FOR EACH ROW       
BEGIN
 
SELECT BOT_SEQ.NEXTVAL
INTO :new.id_bot
FROM DUAL;
END;
/

INSERT INTO tb_bot (name, welcome_msg, farewell_msg, downtime, default_answer) VALUES ('Rob� Ed', 'Ol�!', 'At� breve!', 1000, 'Desculpa, essa eu n�o entendi :(');
INSERT INTO tb_bot (name, welcome_msg, farewell_msg, downtime, default_answer) VALUES ('Bender', 'Oi', 'T� mais', 400, 'Repete');
INSERT INTO tb_bot (name, welcome_msg, farewell_msg, downtime, default_answer) VALUES ('SimSimi', 'Ol�!', 'Tchau, at� um outro dia', 1000, 'Fala de novo? Ainda n�o fui ensinado sobre isso');
INSERT INTO tb_bot (name, welcome_msg, farewell_msg, downtime, default_answer) VALUES ('Bot do Rota', 'Ol�, pessoal!', 'Tudo bem, pessoal? Ent�o t� certo, desejo a todos um �timo final de semana!', 5000, 'Essa eu n�o entendi, n�... :(');

commit;

SELECT * FROM tb_bot;