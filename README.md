
```powershell-interactive
docker login

docker build -t "nodejs-docker" .

docker run --env-file .env -p 4000:3000 nodejs-docker

docker build -t username/docker-nodejs:v1 .

docker push username/docker-nodejs:v1

docker run -d --env-file=.env -p 5000:3000 username/docker-nodejs:v1

docker kill $(docker ps -q)
```

> [!TIP]
> hello