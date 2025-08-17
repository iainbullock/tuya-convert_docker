# tuya-convert_docker 
Docker version of [ct-Open-Source/tuya-convert](https://github.com/ct-Open-Source/tuya-convert) which allows flashing of Tuya IoT devices to alternative firmwares

https://github.com/iainbullock/tuya-convert_docker

For my personal use, limited support is provided. It is fairly self-explanatory if you follow the parent repo README https://github.com/ct-Open-Source/tuya-convert/blob/master/README.md. For this project, you don't need to follow the 'USING DOCKER' section, as the docker image is already built and available on DockerHub: https://hub.docker.com/r/iainbullock/tuya-convert

## Run the container
wget https://raw.githubusercontent.com/iainbullock/tuya-convert_docker/refs/heads/main/docker-compose.yml
Edit docker-compose.yml as required for your setup
docker compose up

## Alternative - build and run the Docker image from Github
docker build -t tuya-convert:latest https://github.com/iainbullock/tuya-convert_docker.git#main
docker run tuya-convert:latest
