# tuya-convert_docker
Docker version of [ct-Open-Source/tuya-convert](https://github.com/ct-Open-Source/tuya-convert) which allows flashing of Tuya IoT devices to alternative firmwares

https://github.com/iainbullock/tuya-convert_docker

For my personal use, limited support is provided. It is fairly self-explanatory if you follow the parent repo README https://github.com/ct-Open-Source/tuya-convert/blob/master/README.md. For this project, you don't need to follow the 'USING DOCKER' section, as the docker image is already built and available on DockerHub: https://hub.docker.com/r/iainbullock/tuya-convert

## Running from a DockerHub image##

## Building the Docker image from Github##
docker build -t tuya-convert https://github.com/iainbullock/tuya-convert_docker.git#main

