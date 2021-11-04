img_ver=test:0.1
pwd
ls
docker rm -f api-server
docker rmi $img_ver
docker build -t $img_ver ./
docker run -d --rm --name api-server -p 8000:8000 $img_ver
docker ps
docker logs api-server
