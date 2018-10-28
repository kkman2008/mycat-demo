##分库测试添加
INSERT INTO t_user(id,name) VALUES(1,'用户1');
INSERT INTO t_user(id,name) VALUES(2,'用户2');
INSERT INTO t_user(id,name) VALUES(3,'用户3');
INSERT INTO t_user(id,name) VALUES(4,'用户4');
INSERT INTO t_user(id,name) VALUES(5,'用户5');
INSERT INTO t_user(id,name) VALUES(6,'用户6');

INSERT INTO t_order(id,name,t_user_id) VALUES(1,'用户订单1',1);
INSERT INTO t_order(id,name,t_user_id) VALUES(2,'用户订单2',2);
INSERT INTO t_order(id,name,t_user_id) VALUES(3,'用户订单3',3);
INSERT INTO t_order(id,name,t_user_id) VALUES(4,'用户订单4',4);
INSERT INTO t_order(id,name,t_user_id) VALUES(5,'用户订单5',5);
INSERT INTO t_order(id,name,t_user_id) VALUES(6,'用户订单6',6);



SELECT u.`name`,o.`name` FROM t_user u LEFT  JOIN t_order o on(o.t_user_id=u.id) WHERE u.id=1

##分表测试

INSERT INTO  t_user(id,name) VALUES(1,'用户1');
INSERT INTO  t_user(id,name) VALUES(2,'用户2');
INSERT INTO  t_user(id,name) VALUES(3,'用户3');
INSERT INTO  t_order(id,name,t_user_id) VALUES(1,'订单1',1);
INSERT INTO  t_order(id,name,t_user_id) VALUES(2,'订单2',2);
INSERT INTO  t_order(id,name,t_user_id) VALUES(3,'订单3',3);
INSERT INTO  t_order(id,name,t_user_id) VALUES(4,'订单1',1);


SELECT count(t.id),(SELECT t.name FROM t_user t WHERE t.id=2) FROM t_order t where t.t_user_id=(SELECT t.id FROM t_user t WHERE t.id=2);


