1. Create network in docker, using network so that the database can be accessed from the api containers
```bash
docker network create webshop-network
```

2. Start up the database
```bash
docker run --network=webshop-network --name webshopdatabase -itd -p 3306:3306 ghcr.io/knottem/webshopdatabase:latest
```

3. Sidenote - build and push the database image

```bash
docker build -t ghcr.io/knottem/webshopdatabase .
```
    
```bash
docker push ghcr.io/knottem/webshopdatabase
```