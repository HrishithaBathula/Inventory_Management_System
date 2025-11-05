CREATE DATABASE IF NOT EXISTS inventory;
USE inventory;
SHOW TABLES;
SELECT *FROM inventory.auth_group;
INSERT INTO inventory.auth_group(id,name)
VALUES
(11,'hrishitha'),
(12,'candy'),
(21,'jyo'),
(22,'vinod');
-- DELETE FROM inventory.auth_group where id = 221;


SELECT *FROM inventory.auth_group_permissions;
INSERT INTO inventory.auth_group_permissions(id,group_id,permission_id)
VALUES
(1,11,1),
(2,12,2),
(3,21,3),
(4,22,4),
(5,11,2),
(6,11,3),
(7,11,4),
(8,11,5),
(9,11,6),
(10,11,7),
(11,11,8),
(12,11,9);
INSERT INTO inventory.auth_group_permissions(id,group_id,permission_id)
VALUES
(13,11,10),
(14,11,11),
(15,11,12),
(16,11,13),
(17,11,14),
(18,11,15),
(19,11,16),
(20,11,17),
(21,11,18),
(22,11,19),
(23,11,20),
(24,11,21),
(25,11,22),
(26,11,23),
(27,11,24),
(28,11,25),
(29,11,26),
(30,11,27),
(31,11,28),
(32,11,29),
(33,11,30),
(34,11,31),
(35,11,32),
(36,11,33),
(37,11,34),
(38,11,35),
(39,11,36);

SELECT *FROM inventory.auth_permission;

SELECT *FROM inventory.auth_user;
INSERT INTO inventory.auth_user(id,password,last_login,is_superuser,username,first_name,last_name,email,is_staff,is_active,date_joined)
VALUES
(1, '1234567890', NULL, 1, 'admin', 'Hrishitha', 'Bathula', 'managementsystem9704@gmail.com', 1, 1, NOW());


SELECT *FROM inventory.auth_user_groups;

INSERT INTO inventory.auth_user_groups(id,user_id,group_id)
VALUES
(1,1,11);

SELECT *FROM inventory.auth_user_user_permissions;
INSERT INTO inventory.auth_user_user_permissions(id,user_id,permission_id)
VALUES
(1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,7),
(8,1,8),
(9,1,9),
(10,1,10),
(11,1,11),
(12,1,12),
(13,1,13),
(14,1,14),
(15,1,15),
(16,1,16),
(17,1,17),
(18,1,18),
(19,1,19),
(20,1,20),
(21,1,21),
(22,1,22),
(23,1,23),
(24,1,24),
(25,1,25),
(26,1,26),
(27,1,27),
(28,1,28),
(29,1,29),
(30,1,30),
(31,1,31),
(32,1,32),
(33,1,33),
(34,1,34),
(35,1,35),
(36,1,36);

SELECT *FROM inventory.dashboard_product;
INSERT INTO inventory.dashboard_product(id,name,quantity,category)
VALUES
(1,'sunfloweroil',5,'edibleoil'),
(2,'surfexcel',10,'washingliquids'),
(3,'darkfantasy',15,'biscuits'),
(4,'dove',20,'soaps');


SELECT *FROM inventory.dashboard_order;

SELECT *FROM inventory.django_admin_log;

SELECT *FROM inventory.django_content_type;

SELECT *FROM inventory.django_session;


