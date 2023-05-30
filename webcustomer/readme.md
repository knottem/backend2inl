1. create docker network for the project

```docker network create webshop-network```


2.  start up the database

```docker run --network=webshop-network --name webshopdatabas -itd -p 3306:3306 webshopdatabas```


3. start up the backend

```./gradlew clean```
```./gradlew build```
```docker build -t webshopcustomer .```

```docker run --name webshopcustomer -itd --network=webshop-network -e DB_PASSWORD=password -e MYSQL_HOST=webshopdatabas -p 8080:8080 webshopcustomer```