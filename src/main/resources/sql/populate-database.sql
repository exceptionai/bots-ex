INSERT INTO tb_bot (id_bot, name, welcome_msg, farewell_msg, downtime, default_answer) VALUES (BOT_SEQ.NEXTVAL, 'Rob� Ed', 'Ol�!', 'At� breve!', 1000, 'Desculpa, essa eu n�o entendi :(');
INSERT INTO tb_bot (id_bot, name, welcome_msg, farewell_msg, downtime, default_answer) VALUES (BOT_SEQ.NEXTVAL, 'Bender', 'Oi', 'T� mais', 4000, 'Repete');
INSERT INTO tb_bot (id_bot, name, welcome_msg, farewell_msg, downtime, default_answer) VALUES (BOT_SEQ.NEXTVAL, 'SimSimi', 'Ol�!', 'Tchau, at� um outro dia', 1000, 'Fala de novo? Ainda n�o fui ensinado sobre isso');
INSERT INTO tb_bot (id_bot, name, welcome_msg, farewell_msg, downtime, default_answer) VALUES (BOT_SEQ.NEXTVAL, 'Bot do Rota', 'Ol�, pessoal!', 'Tudo bem, pessoal? Ent�o t� certo, desejo a todos um �timo final de semana!', 5000, 'Essa eu n�o entendi, n�... :(');

INSERT INTO TB_SEGMENT (id_segment, name, tb_bot) VALUES (SEGMENT_SEQ.NEXTVAL, 'Sustentabilidade', 1);
INSERT INTO TB_SEGMENT (id_segment, name, tb_bot) VALUES (SEGMENT_SEQ.NEXTVAL, 'N�meros em bin�rio', 2);
INSERT INTO TB_SEGMENT (id_segment, name, tb_bot) VALUES (SEGMENT_SEQ.NEXTVAL, 'Aprender com o usu�rio', 3);
INSERT INTO TB_SEGMENT (id_segment, name, tb_bot) VALUES (SEGMENT_SEQ.NEXTVAL, 'Formar-se mais uma vez ou ter mais uma experi�ncia no mercado de trabalho, aleatoriamente', 4);