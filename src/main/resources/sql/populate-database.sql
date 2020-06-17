INSERT INTO tb_bot (id_bot, name, welcome_msg, farewell_msg, downtime, default_answer) VALUES (BOT_SEQ.NEXTVAL, 'Robô Ed', 'Olá!', 'Até breve!', 1000, 'Desculpa, essa eu não entendi :(');
INSERT INTO tb_bot (id_bot, name, welcome_msg, farewell_msg, downtime, default_answer) VALUES (BOT_SEQ.NEXTVAL, 'Bender', 'Oi', 'Té mais', 4000, 'Repete');
INSERT INTO tb_bot (id_bot, name, welcome_msg, farewell_msg, downtime, default_answer) VALUES (BOT_SEQ.NEXTVAL, 'SimSimi', 'Olá!', 'Tchau, até um outro dia', 1000, 'Fala de novo? Ainda não fui ensinado sobre isso');
INSERT INTO tb_bot (id_bot, name, welcome_msg, farewell_msg, downtime, default_answer) VALUES (BOT_SEQ.NEXTVAL, 'Bot do Rota', 'Olá, pessoal!', 'Tudo bem, pessoal? Então tá certo, desejo a todos um ótimo final de semana!', 5000, 'Essa eu não entendi, né... :(');

INSERT INTO TB_SEGMENT (id_segment, name, tb_bot) VALUES (SEGMENT_SEQ.NEXTVAL, 'Sustentabilidade', 1);
INSERT INTO TB_SEGMENT (id_segment, name, tb_bot) VALUES (SEGMENT_SEQ.NEXTVAL, 'Números em binário', 2);
INSERT INTO TB_SEGMENT (id_segment, name, tb_bot) VALUES (SEGMENT_SEQ.NEXTVAL, 'Aprender com o usuário', 3);
INSERT INTO TB_SEGMENT (id_segment, name, tb_bot) VALUES (SEGMENT_SEQ.NEXTVAL, 'Formar-se mais uma vez ou ter mais uma experiência no mercado de trabalho, aleatoriamente', 4);