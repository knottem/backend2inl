CREATE USER 'customeruser'@'%' IDENTIFIED BY 'password';
grant select, insert, update, delete on customerdb.* to 'customeruser'@'%';

CREATE USER 'itemuser'@'%' IDENTIFIED BY 'password';
grant select, insert, update, delete on itemdb.* to 'itemuser'@'%';

CREATE USER 'ordersuser'@'%' IDENTIFIED BY 'password';
grant select, insert, update, delete on ordersdb.* to 'ordersuser'@'%';

-- ALTER USER 'customeruser@'% ACCOUNT LOCK;
-- ALTER USER 'itemuser@'% ACCOUNT LOCK;
-- ALTER USER 'ordersuser@'% ACCOUNT LOCK;