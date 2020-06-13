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

INSERT INTO tb_bot (name, welcome_msg, farewell_msg, downtime, default_answer) VALUES ('Robô Ed', 'Olá!', 'Até breve!', 1000, 'Desculpa, essa eu não entendi :(');
INSERT INTO tb_bot (name, welcome_msg, farewell_msg, downtime, default_answer) VALUES ('Bender', 'Oi', 'Té mais', 400, 'Repete');
INSERT INTO tb_bot (name, welcome_msg, farewell_msg, downtime, default_answer) VALUES ('SimSimi', 'Olá!', 'Tchau, até um outro dia', 1000, 'Fala de novo? Ainda não fui ensinado sobre isso');
INSERT INTO tb_bot (name, welcome_msg, farewell_msg, downtime, default_answer) VALUES ('Bot do Rota', 'Olá, pessoal!', 'Tudo bem, pessoal? Então tá certo, desejo a todos um ótimo final de semana!', 5000, 'Essa eu não entendi, né... :(');

commit;

SELECT * FROM tb_bot;