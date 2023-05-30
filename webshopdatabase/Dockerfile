FROM mysql:8
COPY ./sql /docker-entrypoint-initdb.d

ENV MYSQL_RANDOM_ROOT_PASSWORD=yes

# Passwords

ENV CUSTOMER_PASSWORD=password
ENV ITEM_PASSWORD=password
ENV ORDERS_PASSWORD=password

EXPOSE 3306